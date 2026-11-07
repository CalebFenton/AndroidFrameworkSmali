.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
.super Ljava/lang/Object;
.source "LongitudinalReportingConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final blacklist ALGORITHM_NAME:Ljava/lang/String; = "LongitudinalReporting"


# instance fields
.field private final blacklist mEncoderId:Ljava/lang/String;

.field private final blacklist mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

.field private final blacklist mProbabilityF:D

.field private final blacklist mProbabilityP:D

.field private final blacklist mProbabilityQ:D


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;DDD)V
    .registers 24
    .param p1, "encoderId"    # Ljava/lang/String;
    .param p2, "probabilityF"    # D
    .param p4, "probabilityP"    # D
    .param p6, "probabilityQ"    # D

    .line 65
    move-object/from16 v0, p0

    move-wide/from16 v6, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v1, 0x0

    cmpl-double v3, v6, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-ltz v3, :cond_1b

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_1b

    move v3, v5

    goto :goto_1c

    :cond_1b
    move v3, v4

    :goto_1c
    const-string/jumbo v10, "probabilityF must be in range [0.0, 1.0]"

    invoke-static {v3, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 68
    iput-wide v6, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    .line 69
    cmpl-double v3, v12, v1

    if-ltz v3, :cond_2e

    cmpg-double v3, v12, v8

    if-gtz v3, :cond_2e

    move v3, v5

    goto :goto_2f

    :cond_2e
    move v3, v4

    :goto_2f
    const-string/jumbo v10, "probabilityP must be in range [0.0, 1.0]"

    invoke-static {v3, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    iput-wide v12, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    .line 72
    cmpl-double v1, v14, v1

    if-ltz v1, :cond_40

    cmpg-double v1, v14, v8

    if-gtz v1, :cond_40

    move v4, v5

    :cond_40
    const-string/jumbo v1, "probabilityQ must be in range [0.0, 1.0]"

    invoke-static {v4, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    iput-wide v14, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    .line 75
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v5

    const-string v2, "encoderId cannot be empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 76
    move-object/from16 v2, p1

    iput-object v2, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    .line 77
    new-instance v1, Landroid/privacy/internal/rappor/RapporConfig;

    sub-double/2addr v8, v6

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    iput-object v1, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    .line 78
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 82
    const-string v0, "LongitudinalReporting"

    return-object v0
.end method

.method blacklist getEncoderId()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-object v0
.end method

.method blacklist getProbabilityP()D
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    return-wide v0
.end method

.method blacklist getProbabilityQ()D
    .registers 3

    .line 94
    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 103
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    iget-wide v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    .line 105
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 103
    const-string v1, "EncoderId: %s, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
