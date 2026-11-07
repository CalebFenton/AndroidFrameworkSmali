.class public Landroid/privacy/internal/rappor/RapporConfig;
.super Ljava/lang/Object;
.source "RapporConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final blacklist ALGORITHM_NAME:Ljava/lang/String; = "Rappor"


# instance fields
.field final blacklist mEncoderId:Ljava/lang/String;

.field final blacklist mNumBits:I

.field final blacklist mNumBloomHashes:I

.field final blacklist mNumCohorts:I

.field final blacklist mProbabilityF:D

.field final blacklist mProbabilityP:D

.field final blacklist mProbabilityQ:D


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IDDDII)V
    .registers 29
    .param p1, "encoderId"    # Ljava/lang/String;
    .param p2, "numBits"    # I
    .param p3, "probabilityF"    # D
    .param p5, "probabilityP"    # D
    .param p7, "probabilityQ"    # D
    .param p9, "numCohorts"    # I
    .param p10, "numBloomHashes"    # I

    .line 54
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    const-string v12, "encoderId cannot be empty"

    invoke-static {v10, v12}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 56
    move-object/from16 v10, p1

    iput-object v10, v0, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    .line 57
    const/4 v12, 0x0

    if-lez v1, :cond_25

    move v13, v11

    goto :goto_26

    :cond_25
    move v13, v12

    :goto_26
    const-string/jumbo v14, "numBits needs to be > 0"

    invoke-static {v13, v14}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 58
    iput v1, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    .line 59
    const-wide/16 v13, 0x0

    cmpl-double v15, v2, v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-ltz v15, :cond_3c

    cmpg-double v15, v2, v16

    if-gtz v15, :cond_3c

    move v15, v11

    goto :goto_3d

    :cond_3c
    move v15, v12

    :goto_3d
    const-string/jumbo v11, "probabilityF must be in range [0.0, 1.0]"

    invoke-static {v15, v11}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    iput-wide v2, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    .line 62
    cmpl-double v11, v4, v13

    if-ltz v11, :cond_4f

    cmpg-double v11, v4, v16

    if-gtz v11, :cond_4f

    const/4 v11, 0x1

    goto :goto_50

    :cond_4f
    move v11, v12

    :goto_50
    const-string/jumbo v15, "probabilityP must be in range [0.0, 1.0]"

    invoke-static {v11, v15}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 64
    iput-wide v4, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    .line 65
    cmpl-double v11, v6, v13

    if-ltz v11, :cond_62

    cmpg-double v11, v6, v16

    if-gtz v11, :cond_62

    const/4 v11, 0x1

    goto :goto_63

    :cond_62
    move v11, v12

    :goto_63
    const-string/jumbo v13, "probabilityQ must be in range [0.0, 1.0]"

    invoke-static {v11, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 67
    iput-wide v6, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    .line 68
    if-lez v8, :cond_6f

    const/4 v11, 0x1

    goto :goto_70

    :cond_6f
    move v11, v12

    :goto_70
    const-string/jumbo v13, "numCohorts needs to be > 0"

    invoke-static {v11, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    iput v8, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    .line 70
    if-lez v9, :cond_7c

    const/4 v11, 0x1

    goto :goto_7d

    :cond_7c
    move v11, v12

    :goto_7d
    const-string/jumbo v12, "numBloomHashes needs to be > 0"

    invoke-static {v11, v12}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    iput v9, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    .line 72
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, "Rappor"

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 81
    iget-object v0, p0, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    iget v1, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget v5, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 81
    const-string v1, "EncoderId: %s, NumBits: %d, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f, NumCohorts: %d, NumBloomHashes: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
