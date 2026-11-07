.class public final Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;
.super Ljava/lang/Object;
.source "InferenceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/InferenceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBatchSize:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mData:[B

.field private blacklist mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

.field private blacklist mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/InferenceInput$Params;[B)V
    .registers 5
    .param p1, "params"    # Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
    .param p2, "inputData"    # [B

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;-><init>()V

    .line 475
    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->build()Landroid/adservices/ondevicepersonalization/InferenceOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    .line 543
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    .line 544
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mData:[B

    .line 545
    return-void
.end method

.method public constructor whitelist <init>(Landroid/adservices/ondevicepersonalization/InferenceInput$Params;[Ljava/lang/Object;Landroid/adservices/ondevicepersonalization/InferenceOutput;)V
    .registers 6
    .param p1, "params"    # Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
    .param p2, "inputData"    # [Ljava/lang/Object;
    .param p3, "expectedOutputStructure"    # Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;-><init>()V

    .line 475
    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->build()Landroid/adservices/ondevicepersonalization/InferenceOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    .line 517
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    .line 518
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayUtil;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mData:[B

    .line 519
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/InferenceOutput;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 520
    return-void
.end method

.method private blacklist validateInputData()V
    .registers 3

    .line 631
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Input data should not be empty for InferenceInput."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 633
    return-void
.end method

.method private blacklist validateOutputStructure()V
    .registers 3

    .line 638
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->getModelType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 639
    return-void

    .line 641
    :cond_a
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 642
    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/InferenceOutput;->getDataOutputs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 643
    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/InferenceOutput;->getData()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_20

    goto :goto_22

    :cond_20
    const/4 v1, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    nop

    .line 641
    :goto_23
    const-string v0, "ExpectedOutputStructure field is required for TensorflowLite model."

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 645
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/InferenceInput;
    .registers 6

    .line 650
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    .line 652
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 653
    const/4 v0, 0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBatchSize:I

    .line 655
    :cond_15
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->validateInputData()V

    .line 656
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->validateOutputStructure()V

    .line 657
    new-instance v0, Landroid/adservices/ondevicepersonalization/InferenceInput;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mData:[B

    iget v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBatchSize:I

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/adservices/ondevicepersonalization/InferenceInput;-><init>(Landroid/adservices/ondevicepersonalization/InferenceInput$Params;[BILandroid/adservices/ondevicepersonalization/InferenceOutput;)V

    .line 659
    .local v0, "o":Landroid/adservices/ondevicepersonalization/InferenceInput;
    return-object v0
.end method

.method public whitelist setBatchSize(I)Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 604
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    .line 605
    iput p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBatchSize:I

    .line 606
    return-object p0
.end method

.method public whitelist setExpectedOutputStructure(Landroid/adservices/ondevicepersonalization/InferenceOutput;)Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 624
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    .line 625
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 626
    return-object p0
.end method

.method public blacklist setInputData([B)Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 572
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    .line 573
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mData:[B

    .line 574
    return-object p0
.end method

.method public varargs whitelist setInputData([Ljava/lang/Object;)Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;
    .registers 6
    .param p1, "value"    # [Ljava/lang/Object;

    .line 594
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    .line 595
    invoke-static {p1}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayUtil;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mData:[B

    .line 596
    return-object p0
.end method

.method public whitelist setParams(Landroid/adservices/ondevicepersonalization/InferenceInput$Params;)Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    .line 549
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mBuilderFieldsSet:J

    .line 550
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Builder;->mParams:Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    .line 551
    return-object p0
.end method
