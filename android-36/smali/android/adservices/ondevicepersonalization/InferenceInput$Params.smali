.class public Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
.super Ljava/lang/Object;
.source "InferenceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/InferenceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Builder;,
        Landroid/adservices/ondevicepersonalization/InferenceInput$Params$ModelType;,
        Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Delegate;
    }
.end annotation


# static fields
.field public static final whitelist DELEGATE_CPU:I = 0x1

.field public static final blacklist MODEL_TYPE_EXECUTORCH:I = 0x2

.field public static final whitelist MODEL_TYPE_TENSORFLOW_LITE:I = 0x1


# instance fields
.field private blacklist mDelegateType:I

.field private blacklist mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

.field private blacklist mModelKey:Ljava/lang/String;

.field private blacklist mModelType:I

.field private blacklist mRecommendedNumThreads:I


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/KeyValueStore;Ljava/lang/String;III)V
    .registers 11
    .param p1, "keyValueStore"    # Landroid/adservices/ondevicepersonalization/KeyValueStore;
    .param p2, "modelKey"    # Ljava/lang/String;
    .param p3, "delegateType"    # I
    .param p4, "modelType"    # I
    .param p5, "recommendedNumThreads"    # I

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mDelegateType:I

    .line 134
    iput v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelType:I

    .line 141
    iput v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mRecommendedNumThreads:I

    .line 164
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/adservices/ondevicepersonalization/KeyValueStore;

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 165
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelKey:Ljava/lang/String;

    .line 166
    iput p3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mDelegateType:I

    .line 167
    iput p4, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelType:I

    .line 169
    iget v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelType:I

    if-eq v1, v0, :cond_5d

    iget v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    goto :goto_5d

    .line 171
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modelType was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: MODEL_TYPE_TENSORFLOW_LITE("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), MODEL_TYPE_EXECUTORCH("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_5d
    :goto_5d
    iput p5, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mRecommendedNumThreads:I

    .line 184
    if-lt p5, v0, :cond_62

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    const-string v1, "recommend thread number should be large or equal to 1"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 187
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 230
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 231
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3e

    .line 233
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    .line 235
    .local v2, "that":Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 236
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelKey:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelKey:Ljava/lang/String;

    .line 237
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mDelegateType:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mDelegateType:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelType:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelType:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mRecommendedNumThreads:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mRecommendedNumThreads:I

    if-ne v3, v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    .line 235
    :goto_3d
    return v0

    .line 231
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/InferenceInput$Params;
    :cond_3e
    :goto_3e
    return v1
.end method

.method public whitelist getDelegateType()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mDelegateType:I

    return v0
.end method

.method public whitelist getKeyValueStore()Landroid/adservices/ondevicepersonalization/KeyValueStore;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    return-object v0
.end method

.method public whitelist getModelKey()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getModelType()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelType:I

    return v0
.end method

.method public whitelist getRecommendedNumThreads()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mRecommendedNumThreads:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mKeyValueStore:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 250
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelKey:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 251
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mDelegateType:I

    add-int/2addr v1, v2

    .line 252
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mModelType:I

    add-int/2addr v0, v2

    .line 253
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->mRecommendedNumThreads:I

    add-int/2addr v1, v2

    .line 254
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method
