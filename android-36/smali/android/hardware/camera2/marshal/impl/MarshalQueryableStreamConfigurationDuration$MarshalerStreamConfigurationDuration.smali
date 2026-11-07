.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration$MarshalerStreamConfigurationDuration;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableStreamConfigurationDuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerStreamConfigurationDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;Landroid/hardware/camera2/utils/TypeReference;I)V
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
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;I)V"
        }
    .end annotation

    .line 50
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist getNativeSize()I
    .registers 2

    .line 73
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist marshal(Landroid/hardware/camera2/params/StreamConfigurationDuration;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "value"    # Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 59
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

    .line 45
    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration$MarshalerStreamConfigurationDuration;->marshal(Landroid/hardware/camera2/params/StreamConfigurationDuration;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v3, v0

    .line 64
    .local v3, "format":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v4, v0

    .line 65
    .local v4, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v5, v0

    .line 66
    .local v5, "height":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 68
    .local v6, "durationNs":J
    new-instance v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    return-object v2
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

    .line 45
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration$MarshalerStreamConfigurationDuration;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-result-object p1

    return-object p1
.end method
