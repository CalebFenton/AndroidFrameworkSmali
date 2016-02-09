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
.field private final hash:I

.field final nativeType:I

.field final typeReference:Landroid/hardware/camera2/utils/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    .local p0, "this":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    .local p1, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    iput-object p1, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@5
    .line 103
    iput p2, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    #@7
    .line 104
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    #@a
    move-result v0

    #@b
    xor-int/2addr v0, p2

    #@c
    iput v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->hash:I

    #@e
    .line 101
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 113
    instance-of v2, p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 114
    check-cast v0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    #@8
    .line 115
    .local v0, "otherToken":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<*>;"
    iget-object v2, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@a
    iget-object v3, v0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@c
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/utils/TypeReference;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 116
    iget v2, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    #@14
    iget v3, v0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    #@16
    if-ne v2, v3, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    .line 115
    :cond_0
    return v1

    #@1a
    .line 119
    .end local v0    # "otherToken":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<*>;"
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 124
    .local p0, "this":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    iget v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->hash:I

    #@2
    return v0
.end method
