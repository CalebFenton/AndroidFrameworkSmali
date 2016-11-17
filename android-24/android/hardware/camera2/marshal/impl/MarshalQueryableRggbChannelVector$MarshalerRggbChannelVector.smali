.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableRggbChannelVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerRggbChannelVector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/RggbChannelVector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/RggbChannelVector;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 35
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/RggbChannelVector;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

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
    .line 59
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/RggbChannelVector;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "value"    # Landroid/hardware/camera2/params/RggbChannelVector;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 43
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/RggbChannelVector;->getComponent(I)F

    #@7
    move-result v1

    #@8
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    #@b
    .line 42
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 41
    :cond_0
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 41
    check-cast p1, Landroid/hardware/camera2/params/RggbChannelVector;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;->marshal(Landroid/hardware/camera2/params/RggbChannelVector;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    #@3
    move-result v3

    #@4
    .line 50
    .local v3, "red":F
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    #@7
    move-result v1

    #@8
    .line 51
    .local v1, "gEven":F
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    #@b
    move-result v2

    #@c
    .line 52
    .local v2, "gOdd":F
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    #@f
    move-result v0

    #@10
    .line 54
    .local v0, "blue":F
    new-instance v4, Landroid/hardware/camera2/params/RggbChannelVector;

    #@12
    invoke-direct {v4, v3, v1, v2, v0}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    #@15
    return-object v4
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/RggbChannelVector;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
