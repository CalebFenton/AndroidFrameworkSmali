.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableSizeF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerSizeF"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/util/SizeF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/util/SizeF;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 37
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/util/SizeF;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;

    #@2
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 37
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 57
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public marshal(Landroid/util/SizeF;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Landroid/util/SizeF;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    #@7
    .line 44
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    #@a
    move-result v0

    #@b
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    #@e
    .line 42
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 42
    check-cast p1, Landroid/util/SizeF;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;->marshal(Landroid/util/SizeF;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/SizeF;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    #@3
    move-result v1

    #@4
    .line 50
    .local v1, "width":F
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    #@7
    move-result v0

    #@8
    .line 52
    .local v0, "height":F
    new-instance v2, Landroid/util/SizeF;

    #@a
    invoke-direct {v2, v1, v0}, Landroid/util/SizeF;-><init>(FF)V

    #@d
    return-object v2
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/SizeF;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
