.class Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;
.super Ljava/lang/Object;
.source "MarshalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/MarshalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarshalToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist hash:I

.field final blacklist nativeType:I

.field final blacklist typeReference:Landroid/hardware/camera2/utils/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 4
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    .local p1, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 109
    iput p2, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    .line 110
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    move-result v0

    xor-int/2addr v0, p2

    iput v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->hash:I

    .line 111
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 119
    .local p0, "this":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    instance-of v0, p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 120
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    .line 121
    .local v0, "otherToken":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<*>;"
    iget-object v2, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    iget-object v3, v0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/utils/TypeReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    iget v3, v0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 125
    .end local v0    # "otherToken":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<*>;"
    :cond_1a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 130
    .local p0, "this":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    iget v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->hash:I

    return v0
.end method
