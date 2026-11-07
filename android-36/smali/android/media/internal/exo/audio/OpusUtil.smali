.class public Landroid/media/internal/exo/audio/OpusUtil;
.super Ljava/lang/Object;
.source "OpusUtil.java"


# direct methods
.method public static blacklist buildInitializationData([B)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Landroid/media/internal/exo/audio/OpusUtil;->getPreSkipSamples([B)I

    move-result v0

    int-to-long v0, v0

    .line 54
    invoke-static {v0, v1}, Landroid/media/internal/exo/audio/OpusUtil;->sampleCountToNanoseconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0xf00

    .line 55
    invoke-static {v2, v3}, Landroid/media/internal/exo/audio/OpusUtil;->sampleCountToNanoseconds(J)J

    move-result-wide v2

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v0, v1}, Landroid/media/internal/exo/audio/OpusUtil;->buildNativeOrderByteArray(J)[B

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {v2, v3}, Landroid/media/internal/exo/audio/OpusUtil;->buildNativeOrderByteArray(J)[B

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method private static blacklist buildNativeOrderByteArray(J)[B
    .registers 4

    const/16 v0, 0x8

    .line 69
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getChannelCount([B)I
    .registers 2

    const/16 v0, 0x9

    .line 42
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static blacklist getPreSkipSamples([B)I
    .registers 3

    const/16 v0, 0xb

    .line 65
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xa

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static blacklist sampleCountToNanoseconds(J)J
    .registers 4

    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xbb80

    .line 73
    div-long/2addr p0, v0

    return-wide p0
.end method
