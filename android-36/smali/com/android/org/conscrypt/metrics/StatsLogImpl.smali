.class public final Lcom/android/org/conscrypt/metrics/StatsLogImpl;
.super Ljava/lang/Object;
.source "StatsLogImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/metrics/StatsLog;


# static fields
.field private static final blacklist INSTANCE:Lcom/android/org/conscrypt/metrics/StatsLog;

.field private static final blacklist e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$1;

    invoke-direct {v0}, Lcom/android/org/conscrypt/metrics/StatsLogImpl$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->e:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance v0, Lcom/android/org/conscrypt/metrics/StatsLogImpl;

    invoke-direct {v0}, Lcom/android/org/conscrypt/metrics/StatsLogImpl;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->INSTANCE:Lcom/android/org/conscrypt/metrics/StatsLog;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/org/conscrypt/metrics/StatsLog;
    .registers 1

    .line 70
    sget-object v0, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->INSTANCE:Lcom/android/org/conscrypt/metrics/StatsLog;

    return-object v0
.end method

.method private static blacklist logStoreStateToMetricsState(Lcom/android/org/conscrypt/ct/LogStore$State;)I
    .registers 3
    .param p0, "state"    # Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 84
    sget-object v0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$5;->$SwitchMap$com$android$org$conscrypt$ct$LogStore$State:[I

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ct/LogStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_16

    .line 97
    return v1

    .line 95
    :pswitch_d
    const/4 v0, 0x4

    return v0

    .line 93
    :pswitch_f
    const/4 v0, 0x1

    return v0

    .line 91
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 89
    :pswitch_13
    const/4 v0, 0x2

    return v0

    .line 87
    :pswitch_15
    return v1

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist policyComplianceToMetrics(Lcom/android/org/conscrypt/ct/VerificationResult;Lcom/android/org/conscrypt/ct/PolicyCompliance;)I
    .registers 3
    .param p0, "result"    # Lcom/android/org/conscrypt/ct/VerificationResult;
    .param p1, "compliance"    # Lcom/android/org/conscrypt/ct/PolicyCompliance;

    .line 110
    sget-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->COMPLY:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    if-ne p1, v0, :cond_6

    .line 111
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_6
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ct/VerificationResult;->getValidSCTs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 113
    const/4 v0, 0x3

    return v0

    .line 114
    :cond_12
    sget-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    if-eq p1, v0, :cond_21

    sget-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_DIVERSE_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    if-eq p1, v0, :cond_21

    sget-object v0, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NO_RFC6962_LOG:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    if-ne p1, v0, :cond_1f

    goto :goto_21

    .line 119
    :cond_1f
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_21
    :goto_21
    const/4 v0, 0x4

    return v0
.end method

.method private blacklist write(IIIIII)V
    .registers 16
    .param p1, "atomId"    # I
    .param p2, "status"    # I
    .param p3, "loadedCompatVersion"    # I
    .param p4, "minCompatVersionAvailable"    # I
    .param p5, "majorVersion"    # I
    .param p6, "minorVersion"    # I

    .line 155
    sget-object v0, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .end local p1    # "atomId":I
    .end local p2    # "status":I
    .end local p3    # "loadedCompatVersion":I
    .end local p4    # "minCompatVersionAvailable":I
    .end local p5    # "majorVersion":I
    .end local p6    # "minorVersion":I
    .local v3, "atomId":I
    .local v4, "status":I
    .local v5, "loadedCompatVersion":I
    .local v6, "minCompatVersionAvailable":I
    .local v7, "majorVersion":I
    .local v8, "minorVersion":I
    invoke-direct/range {v1 .. v8}, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;-><init>(Lcom/android/org/conscrypt/metrics/StatsLogImpl;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method private blacklist write(IIIIIIIII)V
    .registers 22
    .param p1, "atomId"    # I
    .param p2, "verificationResult"    # I
    .param p3, "verificationReason"    # I
    .param p4, "policyCompatVersion"    # I
    .param p5, "majorVersion"    # I
    .param p6, "minorVersion"    # I
    .param p7, "numEmbeddedScts"    # I
    .param p8, "numOcspScts"    # I
    .param p9, "numTlsScts"    # I

    .line 167
    sget-object v0, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;-><init>(Lcom/android/org/conscrypt/metrics/StatsLogImpl;IIIIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method private blacklist write(IZIIII[I)V
    .registers 18
    .param p1, "atomId"    # I
    .param p2, "success"    # Z
    .param p3, "protocol"    # I
    .param p4, "cipherSuite"    # I
    .param p5, "duration"    # I
    .param p6, "source"    # I
    .param p7, "uids"    # [I

    .line 144
    sget-object v0, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;-><init>(Lcom/android/org/conscrypt/metrics/StatsLogImpl;IZIIII[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method


# virtual methods
.method public blacklist countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 16
    .param p1, "success"    # Z
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "cipherSuite"    # Ljava/lang/String;
    .param p4, "duration"    # J

    .line 76
    invoke-static {p2}, Lcom/android/org/conscrypt/metrics/Protocol;->forName(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/Protocol;

    move-result-object v0

    .line 77
    .local v0, "proto":Lcom/android/org/conscrypt/metrics/Protocol;
    invoke-static {p3}, Lcom/android/org/conscrypt/metrics/CipherSuite;->forName(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CipherSuite;

    move-result-object v1

    .line 79
    .local v1, "suite":Lcom/android/org/conscrypt/metrics/CipherSuite;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/metrics/Protocol;->getId()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/org/conscrypt/metrics/CipherSuite;->getId()I

    move-result v6

    long-to-int v7, p4

    .line 80
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getStatsSource()Lcom/android/org/conscrypt/metrics/Source;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/conscrypt/metrics/Source;->getId()I

    move-result v8

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getUids()[I

    move-result-object v9

    .line 79
    const/16 v3, 0x13d

    move-object v2, p0

    move v4, p1

    .end local p1    # "success":Z
    .local v4, "success":Z
    invoke-direct/range {v2 .. v9}, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->write(IZIIII[I)V

    .line 81
    return-void
.end method

.method public blacklist reportCTVerificationResult(Lcom/android/org/conscrypt/ct/LogStore;Lcom/android/org/conscrypt/ct/VerificationResult;Lcom/android/org/conscrypt/ct/PolicyCompliance;Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;)V
    .registers 27
    .param p1, "store"    # Lcom/android/org/conscrypt/ct/LogStore;
    .param p2, "result"    # Lcom/android/org/conscrypt/ct/VerificationResult;
    .param p3, "compliance"    # Lcom/android/org/conscrypt/ct/PolicyCompliance;
    .param p4, "reason"    # Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    .line 125
    invoke-interface/range {p1 .. p1}, Lcom/android/org/conscrypt/ct/LogStore;->getState()Lcom/android/org/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->NOT_FOUND:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-eq v0, v1, :cond_5d

    .line 126
    invoke-interface/range {p1 .. p1}, Lcom/android/org/conscrypt/ct/LogStore;->getState()Lcom/android/org/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->MALFORMED:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-ne v0, v1, :cond_11

    goto :goto_5d

    .line 130
    :cond_11
    invoke-interface/range {p1 .. p1}, Lcom/android/org/conscrypt/ct/LogStore;->getState()Lcom/android/org/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->NON_COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-ne v0, v1, :cond_2d

    .line 131
    nop

    .line 133
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->getId()I

    move-result v5

    .line 131
    const/16 v3, 0x3dd

    const/4 v4, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->write(IIIIIIIII)V

    goto :goto_76

    .line 134
    :cond_2d
    invoke-interface/range {p1 .. p1}, Lcom/android/org/conscrypt/ct/LogStore;->getState()Lcom/android/org/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-ne v0, v1, :cond_76

    .line 135
    invoke-static/range {p2 .. p3}, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->policyComplianceToMetrics(Lcom/android/org/conscrypt/ct/VerificationResult;Lcom/android/org/conscrypt/ct/PolicyCompliance;)I

    move-result v14

    .line 136
    .local v14, "comp":I
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->getId()I

    move-result v15

    .line 137
    invoke-interface/range {p1 .. p1}, Lcom/android/org/conscrypt/ct/LogStore;->getCompatVersion()I

    move-result v16

    invoke-interface/range {p1 .. p1}, Lcom/android/org/conscrypt/ct/LogStore;->getMajorVersion()I

    move-result v17

    invoke-interface/range {p1 .. p1}, Lcom/android/org/conscrypt/ct/LogStore;->getMinorVersion()I

    move-result v18

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/conscrypt/ct/VerificationResult;->numCertSCTs()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/android/org/conscrypt/ct/VerificationResult;->numOCSPSCTs()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lcom/android/org/conscrypt/ct/VerificationResult;->numTlsSCTs()I

    move-result v21

    .line 136
    const/16 v13, 0x3dd

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->write(IIIIIIIII)V

    goto :goto_76

    .line 127
    .end local v14    # "comp":I
    :cond_5d
    :goto_5d
    nop

    .line 129
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->getId()I

    move-result v15

    .line 127
    const/16 v13, 0x3dd

    const/4 v14, 0x5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->write(IIIIIIIII)V

    .line 140
    :cond_76
    :goto_76
    return-void
.end method

.method public blacklist updateCTLogListStatusChanged(Lcom/android/org/conscrypt/ct/LogStore;)V
    .registers 10
    .param p1, "logStore"    # Lcom/android/org/conscrypt/ct/LogStore;

    .line 102
    invoke-interface {p1}, Lcom/android/org/conscrypt/ct/LogStore;->getState()Lcom/android/org/conscrypt/ct/LogStore$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->logStoreStateToMetricsState(Lcom/android/org/conscrypt/ct/LogStore$State;)I

    move-result v3

    .line 103
    .local v3, "state":I
    invoke-interface {p1}, Lcom/android/org/conscrypt/ct/LogStore;->getCompatVersion()I

    move-result v4

    .line 104
    invoke-interface {p1}, Lcom/android/org/conscrypt/ct/LogStore;->getMinCompatVersionAvailable()I

    move-result v5

    invoke-interface {p1}, Lcom/android/org/conscrypt/ct/LogStore;->getMajorVersion()I

    move-result v6

    .line 105
    invoke-interface {p1}, Lcom/android/org/conscrypt/ct/LogStore;->getMinorVersion()I

    move-result v7

    .line 103
    const/16 v2, 0x3a6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->write(IIIIII)V

    .line 106
    return-void
.end method
