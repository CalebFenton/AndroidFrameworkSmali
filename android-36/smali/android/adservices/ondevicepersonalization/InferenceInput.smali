.class public final Landroid/adservices/ondevicepersonalization/InferenceInput;
.super Ljava/lang/Object;
.source "InferenceInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/InferenceInput$Params;,
        Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;
    }
.end annotation


# instance fields
.field private blacklist mBatchSize:I

.field private blacklist mData:[B

.field private blacklist mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

.field private blacklist mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/InferenceInput$Params;[BILandroid/adservices/ondevicepersonalization/InferenceOutput;)V
    .registers 6
    .param p1, "params"    # Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
    .param p2, "data"    # [B
    .param p3, "batchSize"    # I
    .param p4, "expectedOutputStructure"    # Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mBatchSize:I

    .line 356
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    .line 357
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mData:[B

    .line 358
    iput p3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mBatchSize:I

    .line 359
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/InferenceOutput;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 360
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 441
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 442
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 444
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/InferenceInput;

    .line 446
    .local v2, "that":Landroid/adservices/ondevicepersonalization/InferenceInput;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/InferenceInput;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    .line 447
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mData:[B

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/InferenceInput;->mData:[B

    .line 448
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mBatchSize:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/InferenceInput;->mBatchSize:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/InferenceInput;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 450
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 446
    :goto_3b
    return v0

    .line 442
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/InferenceInput;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public whitelist getBatchSize()I
    .registers 2

    .line 414
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mBatchSize:I

    return v0
.end method

.method public blacklist getData()[B
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mData:[B

    return-object v0
.end method

.method public whitelist getExpectedOutputStructure()Landroid/adservices/ondevicepersonalization/InferenceOutput;
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    return-object v0
.end method

.method public whitelist getInputData()[Ljava/lang/Object;
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mData:[B

    invoke-static {v0}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayUtil;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getParams()Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
    .registers 2

    .line 364
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 459
    const/4 v0, 0x1

    .line 460
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 461
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 462
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mBatchSize:I

    add-int/2addr v1, v2

    .line 463
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 464
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method
