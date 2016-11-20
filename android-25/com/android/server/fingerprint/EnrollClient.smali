.class public abstract Lcom/android/server/fingerprint/EnrollClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnrollClient.java"


# static fields
.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final MS_PER_SEC:J = 0x3e8L


# instance fields
.field private mCryptoToken:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "cryptoToken"    # [B
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;

    #@0
    .prologue
    move-object v2, p0

    #@1
    move-object v3, p1

    #@2
    move-wide v4, p2

    #@3
    move-object/from16 v6, p4

    #@5
    move-object/from16 v7, p5

    #@7
    move/from16 v8, p6

    #@9
    move/from16 v9, p7

    #@b
    move/from16 v10, p9

    #@d
    move-object/from16 v11, p10

    #@f
    .line 43
    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    #@12
    .line 44
    move-object/from16 v0, p8

    #@14
    array-length v2, v0

    #@15
    move-object/from16 v0, p8

    #@17
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    #@1d
    .line 42
    return-void
.end method

.method private sendEnrollResult(III)Z
    .locals 9
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 64
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@5
    move-result-object v1

    #@6
    .line 65
    .local v1, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-nez v1, :cond_0

    #@8
    .line 66
    return v7

    #@9
    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    #@10
    .line 69
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    #@13
    move-result-object v2

    #@14
    const/16 v3, 0xfb

    #@16
    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    #@19
    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getHalDeviceId()J

    #@1c
    move-result-wide v2

    #@1d
    move v4, p1

    #@1e
    move v5, p2

    #@1f
    move v6, p3

    #@20
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 72
    if-nez p3, :cond_1

    #@25
    move v2, v7

    #@26
    :goto_0
    return v2

    #@27
    :cond_1
    move v2, v8

    #@28
    goto :goto_0

    #@29
    .line 73
    :catch_0
    move-exception v0

    #@2a
    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    #@2d
    const-string/jumbo v3, "Failed to notify EnrollResult:"

    #@30
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    .line 75
    return v7
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 137
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 138
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 3
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    #@0
    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    #@3
    move-result v0

    #@4
    if-eq p2, v0, :cond_0

    #@6
    .line 50
    const-string/jumbo v0, "FingerprintService"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "groupId != getGroupId(), groupId: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 51
    const-string/jumbo v2, " getGroupId():"

    #@1c
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 51
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    #@23
    move-result v2

    #@24
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 53
    :cond_0
    if-nez p3, :cond_1

    #@31
    .line 54
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    #@38
    move-result-object v1

    #@39
    .line 55
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    #@3c
    move-result v2

    #@3d
    .line 54
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    #@40
    .line 57
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/EnrollClient;->sendEnrollResult(III)Z

    #@43
    move-result v0

    #@44
    return v0
.end method

.method public onEnumerationResult(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 131
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 132
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public onRemoved(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 125
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "onRemoved() called for enroll!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 126
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public start()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 81
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@4
    move-result-object v0

    #@5
    .line 82
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    #@7
    .line 83
    const-string/jumbo v4, "FingerprintService"

    #@a
    const-string/jumbo v5, "enroll: no fingeprintd!"

    #@d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 84
    const/4 v4, 0x3

    #@11
    return v4

    #@12
    .line 86
    :cond_0
    const/16 v3, 0x3c

    #@14
    .line 88
    .local v3, "timeout":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    #@16
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    #@19
    move-result v5

    #@1a
    const/16 v6, 0x3c

    #@1c
    invoke-interface {v0, v4, v5, v6}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I

    #@1f
    move-result v2

    #@20
    .line 89
    .local v2, "result":I
    if-eqz v2, :cond_1

    #@22
    .line 90
    const-string/jumbo v4, "FingerprintService"

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "startEnroll failed, result="

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 91
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v4

    #@40
    const-string/jumbo v5, "fingerprintd_enroll_start_error"

    #@43
    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@46
    .line 92
    const/4 v4, 0x1

    #@47
    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/EnrollClient;->onError(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 93
    return v2

    #@4b
    .line 95
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    #@4c
    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    #@4f
    const-string/jumbo v5, "startEnroll failed"

    #@52
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    .line 98
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return v7
.end method

.method public stop(Z)I
    .locals 7
    .param p1, "initiatedByClient"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 103
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@4
    move-result-object v0

    #@5
    .line 104
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    #@7
    .line 105
    const-string/jumbo v3, "FingerprintService"

    #@a
    const-string/jumbo v4, "stopEnrollment: no fingeprintd!"

    #@d
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 106
    const/4 v3, 0x3

    #@11
    return v3

    #@12
    .line 109
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I

    #@15
    move-result v2

    #@16
    .line 110
    .local v2, "result":I
    if-eqz v2, :cond_1

    #@18
    .line 111
    const-string/jumbo v3, "FingerprintService"

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "startEnrollCancel failed, result = "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 112
    return v2

    #@33
    .line 114
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    #@34
    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    #@37
    const-string/jumbo v4, "stopEnrollment failed"

    #@3a
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    if-eqz p1, :cond_2

    #@3f
    .line 118
    const/4 v3, 0x5

    #@40
    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/EnrollClient;->onError(I)Z

    #@43
    .line 120
    :cond_2
    return v6
.end method
