.class public Landroid/federatedcompute/common/ExampleConsumption$Builder;
.super Ljava/lang/Object;
.source "ExampleConsumption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/common/ExampleConsumption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mCollectionUri:Ljava/lang/String;

.field private blacklist mExampleCount:I

.field private blacklist mResumptionToken:[B

.field private blacklist mSelectionCriteria:[B

.field private blacklist mTaskId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    .line 208
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 267
    iget-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 271
    return-void

    .line 268
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/federatedcompute/common/ExampleConsumption;
    .registers 9

    .line 253
    invoke-direct {p0}, Landroid/federatedcompute/common/ExampleConsumption$Builder;->checkNotUsed()V

    .line 254
    iget-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    .line 256
    new-instance v2, Landroid/federatedcompute/common/ExampleConsumption;

    iget-object v3, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mTaskId:Ljava/lang/String;

    iget-object v4, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mSelectionCriteria:[B

    iget v5, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mExampleCount:I

    iget-object v6, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mResumptionToken:[B

    iget-object v7, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mCollectionUri:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Landroid/federatedcompute/common/ExampleConsumption;-><init>(Ljava/lang/String;[BI[BLjava/lang/String;)V

    .line 263
    .local v2, "o":Landroid/federatedcompute/common/ExampleConsumption;
    return-object v2
.end method

.method public blacklist setCollectionUri(Ljava/lang/String;)Landroid/federatedcompute/common/ExampleConsumption$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 245
    invoke-direct {p0}, Landroid/federatedcompute/common/ExampleConsumption$Builder;->checkNotUsed()V

    .line 246
    iget-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    .line 247
    iput-object p1, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mCollectionUri:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public blacklist setExampleCount(I)Landroid/federatedcompute/common/ExampleConsumption$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 229
    invoke-direct {p0}, Landroid/federatedcompute/common/ExampleConsumption$Builder;->checkNotUsed()V

    .line 230
    iget-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    .line 231
    iput p1, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mExampleCount:I

    .line 232
    return-object p0
.end method

.method public varargs blacklist setResumptionToken([B)Landroid/federatedcompute/common/ExampleConsumption$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 237
    invoke-direct {p0}, Landroid/federatedcompute/common/ExampleConsumption$Builder;->checkNotUsed()V

    .line 238
    iget-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    .line 239
    iput-object p1, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mResumptionToken:[B

    .line 240
    return-object p0
.end method

.method public varargs blacklist setSelectionCriteria([B)Landroid/federatedcompute/common/ExampleConsumption$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 221
    invoke-direct {p0}, Landroid/federatedcompute/common/ExampleConsumption$Builder;->checkNotUsed()V

    .line 222
    iget-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    .line 223
    iput-object p1, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mSelectionCriteria:[B

    .line 224
    return-object p0
.end method

.method public blacklist setTaskId(Ljava/lang/String;)Landroid/federatedcompute/common/ExampleConsumption$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Landroid/federatedcompute/common/ExampleConsumption$Builder;->checkNotUsed()V

    .line 213
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 214
    iget-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mBuilderFieldsSet:J

    .line 215
    iput-object p1, p0, Landroid/federatedcompute/common/ExampleConsumption$Builder;->mTaskId:Ljava/lang/String;

    .line 216
    return-object p0
.end method
