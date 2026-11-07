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
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 4
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
            ">;I)V"
        }
    .end annotation

    .line 43
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getNativeSize()I
    .registers 2

    .line 68
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist marshal(Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "value"    # Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMin()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMax()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getBatchSizeMax()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 53
    return-void
.end method

.method public bridge synthetic blacklist marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 38
    check-cast p1, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;->marshal(Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 58
    .local v1, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 59
    .local v2, "height":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 60
    .local v3, "fpsMin":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 61
    .local v4, "fpsMax":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 63
    .local v5, "batchSizeMax":I
    new-instance v0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;-><init>(IIIII)V

    return-object v0
.end method

.method public bridge synthetic blacklist unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-result-object p1

    return-object p1
.end method
