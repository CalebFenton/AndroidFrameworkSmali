.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform$MarshalerColorSpaceTransform;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableColorSpaceTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerColorSpaceTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/ColorSpaceTransform;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 39
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/ColorSpaceTransform;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform$MarshalerColorSpaceTransform;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;

    #@2
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 40
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 67
    const/16 v0, 0x48

    #@2
    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "value"    # Landroid/hardware/camera2/params/ColorSpaceTransform;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/16 v3, 0x12

    #@2
    .line 46
    new-array v1, v3, [I

    #@4
    .line 47
    .local v1, "transformAsArray":[I
    const/4 v2, 0x0

    #@5
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    #@8
    .line 49
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@b
    .line 50
    aget v2, v1, v0

    #@d
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@10
    .line 49
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 45
    :cond_0
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 45
    check-cast p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform$MarshalerColorSpaceTransform;->marshal(Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/16 v3, 0x12

    #@2
    .line 56
    new-array v1, v3, [I

    #@4
    .line 58
    .local v1, "transformAsArray":[I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@7
    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@a
    move-result v2

    #@b
    aput v2, v1, v0

    #@d
    .line 58
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 62
    :cond_0
    new-instance v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    #@12
    invoke-direct {v2, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;-><init>([I)V

    #@15
    return-object v2
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform$MarshalerColorSpaceTransform;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ColorSpaceTransform;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
