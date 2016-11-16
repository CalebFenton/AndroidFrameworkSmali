.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerRect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/graphics/Rect;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 35
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/graphics/Rect;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;

    #@2
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 36
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 63
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public marshal(Landroid/graphics/Rect;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/Rect;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 42
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@5
    .line 43
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@7
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@a
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@11
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@14
    move-result v0

    #@15
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@18
    .line 41
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 41
    check-cast p1, Landroid/graphics/Rect;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;->marshal(Landroid/graphics/Rect;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v2

    #@4
    .line 51
    .local v2, "left":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@7
    move-result v4

    #@8
    .line 52
    .local v4, "top":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@b
    move-result v5

    #@c
    .line 53
    .local v5, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@f
    move-result v1

    #@10
    .line 55
    .local v1, "height":I
    add-int v3, v2, v5

    #@12
    .line 56
    .local v3, "right":I
    add-int v0, v4, v1

    #@14
    .line 58
    .local v0, "bottom":I
    new-instance v6, Landroid/graphics/Rect;

    #@16
    invoke-direct {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@19
    return-object v6
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
