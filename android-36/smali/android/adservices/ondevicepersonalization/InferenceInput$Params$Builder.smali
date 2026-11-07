.class public final Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;
.super Ljava/lang/Object;
.source "InferenceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDelegateType:I

.field private blacklist mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

.field private blacklist mModelKey:Ljava/lang/String;

.field private blacklist mModelType:I

.field private blacklist mRecommendedNumThreads:I


# direct methods
.method public constructor whitelist <init>(Landroid/adservices/ondevicepersonalization/KeyValueStore;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyValueStore"    # Landroid/adservices/ondevicepersonalization/KeyValueStore;
    .param p2, "modelKey"    # Ljava/lang/String;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    .line 277
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/KeyValueStore;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 278
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mModelKey:Ljava/lang/String;

    .line 279
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
    .registers 9

    .line 328
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    .line 330
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 331
    iput v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mDelegateType:I

    .line 333
    :cond_15
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_20

    .line 334
    iput v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mModelType:I

    .line 336
    :cond_20
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_2b

    .line 337
    iput v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mRecommendedNumThreads:I

    .line 339
    :cond_2b
    new-instance v2, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mModelKey:Ljava/lang/String;

    iget v5, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mDelegateType:I

    iget v6, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mModelType:I

    iget v7, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mRecommendedNumThreads:I

    invoke-direct/range {v2 .. v7}, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;-><init>(Landroid/adservices/ondevicepersonalization/KeyValueStore;Ljava/lang/String;III)V

    .line 346
    .local v2, "o":Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
    return-object v2
.end method

.method public whitelist setDelegateType(I)Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 300
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    .line 301
    iput p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mDelegateType:I

    .line 302
    return-object p0
.end method

.method public whitelist setKeyValueStore(Landroid/adservices/ondevicepersonalization/KeyValueStore;)Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 283
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    .line 284
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 285
    return-object p0
.end method

.method public whitelist setModelKey(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 290
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    .line 291
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mModelKey:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public whitelist setModelType(I)Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 310
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    .line 311
    iput p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mModelType:I

    .line 312
    return-object p0
.end method

.method public whitelist setRecommendedNumThreads(I)Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 321
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mBuilderFieldsSet:J

    .line 322
    iput p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;->mRecommendedNumThreads:I

    .line 323
    return-object p0
.end method
