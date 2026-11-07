.class public final Landroid/adservices/ondevicepersonalization/InferenceOutput;
.super Ljava/lang/Object;
.source "InferenceOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;
    }
.end annotation


# instance fields
.field private blacklist mData:[B

.field private blacklist mDataOutputs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Map;[B)V
    .registers 6
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;[B)V"
        }
    .end annotation

    .line 68
    .local p1, "dataOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mDataOutputs:Ljava/util/Map;

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mData:[B

    .line 69
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mDataOutputs:Ljava/util/Map;

    .line 70
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mDataOutputs:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 71
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mData:[B

    .line 72
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mData:[B

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 114
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 116
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 118
    .local v2, "that":Landroid/adservices/ondevicepersonalization/InferenceOutput;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mDataOutputs:Ljava/util/Map;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mDataOutputs:Ljava/util/Map;

    .line 119
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mData:[B

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mData:[B

    .line 120
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 118
    :goto_2b
    return v0

    .line 114
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/InferenceOutput;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist getData()[B
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mData:[B

    return-object v0
.end method

.method public whitelist getDataOutputs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mDataOutputs:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 129
    const/4 v0, 0x1

    .line 130
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mDataOutputs:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 131
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 132
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method
