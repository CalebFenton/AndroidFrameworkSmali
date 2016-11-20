.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableHighSpeedVideoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerHighSpeedVideoConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;

    #@2
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 42
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/16 v0, 0x14

    #@2
    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@7
    .line 49
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getHeight()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@e
    .line 50
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMin()I

    #@11
    move-result v0

    #@12
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@15
    .line 51
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMax()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1c
    .line 52
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getBatchSizeMax()I

    #@1f
    move-result v0

    #@20
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@23
    .line 47
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 47
    check-cast p1, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;->marshal(Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v1

    #@4
    .line 58
    .local v1, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@7
    move-result v2

    #@8
    .line 59
    .local v2, "height":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@b
    move-result v3

    #@c
    .line 60
    .local v3, "fpsMin":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@f
    move-result v4

    #@10
    .line 61
    .local v4, "fpsMax":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@13
    move-result v5

    #@14
    .line 63
    .local v5, "batchSizeMax":I
    new-instance v0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@16
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;-><init>(IIIII)V

    #@19
    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
