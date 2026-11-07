.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
.super Ljava/lang/Object;
.source "LongitudinalReportingEncoder.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyEncoder;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist PRR1_ENCODER_ID:Ljava/lang/String; = "prr1_encoder_id"

.field private static final blacklist PRR2_ENCODER_ID:Ljava/lang/String; = "prr2_encoder_id"

.field private static final blacklist TAG:Ljava/lang/String; = "LongitudinalEncoder"


# instance fields
.field private final blacklist mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

.field private final blacklist mFakeValue:Ljava/lang/Boolean;

.field private final blacklist mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

.field private final blacklist mIsSecure:Z


# direct methods
.method private constructor blacklist <init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V
    .registers 9
    .param p1, "config"    # Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .param p2, "secureEncoder"    # Z
    .param p3, "userSecret"    # [B

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    .line 103
    iput-boolean p2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIsSecure:Z

    .line 104
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getProbabilityP()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getEncoderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "prr1_encoder_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v0, v1, p2, p3, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z

    move-result v0

    .line 107
    .local v0, "ignoreOriginalInput":Z
    if-eqz v0, :cond_50

    .line 108
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getProbabilityQ()D

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getEncoderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "prr2_encoder_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v1, v2, p2, p3, v3}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    goto :goto_53

    .line 112
    :cond_50
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    .line 115
    :goto_53
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;

    move-result-object v1

    .line 116
    .local v1, "irrConfig":Landroid/privacy/internal/rappor/RapporConfig;
    if-eqz p2, :cond_5e

    .line 117
    invoke-static {v1, p3}, Landroid/privacy/internal/rappor/RapporEncoder;->createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v2

    goto :goto_62

    .line 118
    :cond_5e
    invoke-static {v1}, Landroid/privacy/internal/rappor/RapporEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v2

    :goto_62
    iput-object v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

    .line 119
    return-void
.end method

.method public static blacklist createEncoder(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;[B)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
    .registers 4
    .param p0, "config"    # Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .param p1, "userSecret"    # [B

    .line 83
    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;-><init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V

    return-object v0
.end method

.method public static blacklist createInsecureEncoderForTest(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
    .registers 4
    .param p0, "config"    # Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    .line 97
    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;-><init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V

    return-object v0
.end method

.method public static blacklist getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z
    .registers 21
    .param p0, "p"    # D
    .param p2, "secureEncoder"    # Z
    .param p3, "userSecret"    # [B
    .param p4, "encoderId"    # Ljava/lang/String;

    .line 172
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-gez v2, :cond_b

    mul-double v3, v3, p0

    goto :goto_10

    :cond_b
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v5, v5, p0

    mul-double/2addr v3, v5

    :goto_10
    move-wide v8, v3

    .line 173
    .local v8, "effectiveF":D
    cmpg-double v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 174
    .local v0, "prrInput":Z
    :goto_1a
    new-instance v5, Landroid/privacy/internal/rappor/RapporConfig;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v6, p4

    invoke-direct/range {v5 .. v15}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    .line 176
    .local v5, "prrConfig":Landroid/privacy/internal/rappor/RapporConfig;
    if-eqz p2, :cond_31

    .line 177
    move-object/from16 v3, p3

    invoke-static {v5, v3}, Landroid/privacy/internal/rappor/RapporEncoder;->createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v4

    goto :goto_37

    .line 178
    :cond_31
    move-object/from16 v3, p3

    invoke-static {v5}, Landroid/privacy/internal/rappor/RapporEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v4

    :goto_37
    nop

    .line 179
    .local v4, "encoder":Landroid/privacy/internal/rappor/RapporEncoder;
    invoke-virtual {v4, v0}, Landroid/privacy/internal/rappor/RapporEncoder;->encodeBoolean(Z)[B

    move-result-object v6

    aget-byte v6, v6, v2

    if-lez v6, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    return v1
.end method


# virtual methods
.method public blacklist encodeBits([B)[B
    .registers 3
    .param p1, "bits"    # [B

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist encodeBoolean(Z)[B
    .registers 3
    .param p1, "original"    # Z

    .line 132
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 134
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 137
    :cond_a
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

    invoke-virtual {v0, p1}, Landroid/privacy/internal/rappor/RapporEncoder;->encodeBoolean(Z)[B

    move-result-object v0

    .line 139
    .local v0, "result":[B
    return-object v0
.end method

.method public blacklist encodeString(Ljava/lang/String;)[B
    .registers 3
    .param p1, "original"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist getConfig()Landroid/privacy/DifferentialPrivacyConfig;
    .registers 2

    .line 50
    invoke-virtual {p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getConfig()Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConfig()Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    return-object v0
.end method

.method public blacklist isInsecureEncoderForTest()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIsSecure:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
