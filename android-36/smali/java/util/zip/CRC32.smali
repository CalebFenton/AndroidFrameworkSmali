.class public Ljava/util/zip/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o crc:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 45
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static native greylist update(II)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static greylist-max-o updateByteBuffer(IJII)I
    .registers 6
    .param p0, "alder"    # I
    .param p1, "addr"    # J
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 177
    invoke-static {p1, p2}, Ljava/util/zip/CRC32;->updateByteBufferCheck(J)V

    .line 178
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/zip/CRC32;->updateByteBuffer0(IJII)I

    move-result v0

    return v0
.end method

.method private static native blacklist updateByteBuffer0(IJII)I
.end method

.method private static blacklist updateByteBufferCheck(J)V
    .registers 4
    .param p0, "addr"    # J

    .line 188
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_7

    .line 191
    return-void

    .line 189
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o updateBytes(I[BII)I
    .registers 5
    .param p0, "crc"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 151
    invoke-static {p1, p2, p3}, Ljava/util/zip/CRC32;->updateBytesCheck([BII)V

    .line 152
    invoke-static {p0, p1, p2, p3}, Ljava/util/zip/CRC32;->updateBytes0(I[BII)I

    move-result v0

    return v0
.end method

.method private static native blacklist updateBytes0(I[BII)I
.end method

.method private static blacklist updateBytesCheck([BII)V
    .registers 5
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 159
    if-gtz p2, :cond_3

    .line 160
    return-void

    .line 163
    :cond_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    if-ltz p1, :cond_1b

    array-length v0, p0

    if-ge p1, v0, :cond_1b

    .line 169
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 170
    .local v0, "endIndex":I
    if-ltz v0, :cond_15

    array-length v1, p0

    if-ge v0, v1, :cond_15

    .line 173
    return-void

    .line 171
    :cond_15
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 166
    .end local v0    # "endIndex":I
    :cond_1b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getValue()J
    .registers 5

    .line 143
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    .line 136
    return-void
.end method

.method public whitelist test-api update(I)V
    .registers 3
    .param p1, "b"    # I

    .line 61
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    invoke-static {v0, p1}, Ljava/util/zip/CRC32;->update(II)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    .line 62
    return-void
.end method

.method public whitelist test-api update(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 106
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 107
    .local v1, "limit":I
    nop

    .line 108
    sub-int v2, v1, v0

    .line 109
    .local v2, "rem":I
    if-gtz v2, :cond_e

    .line 110
    return-void

    .line 111
    :cond_e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 113
    :try_start_14
    iget v3, p0, Ljava/util/zip/CRC32;->crc:I

    move-object v4, p1

    check-cast v4, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v0, v2}, Ljava/util/zip/CRC32;->updateByteBuffer(IJII)I

    move-result v3

    iput v3, p0, Ljava/util/zip/CRC32;->crc:I
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_27

    .line 115
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 116
    goto :goto_67

    .line 115
    :catchall_27
    move-exception v3

    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 116
    throw v3

    .line 117
    :cond_2c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 118
    iget v3, p0, Ljava/util/zip/CRC32;->crc:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v3, v4, v5, v2}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    move-result v3

    iput v3, p0, Ljava/util/zip/CRC32;->crc:I

    goto :goto_67

    .line 120
    :cond_44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x1000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    .line 121
    .local v3, "b":[B
    :goto_50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 123
    .local v4, "length":I
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {p0, v3, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 125
    .end local v4    # "length":I
    goto :goto_50

    .line 127
    .end local v3    # "b":[B
    :cond_67
    :goto_67
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    return-void
.end method

.method public whitelist test-api update([B)V
    .registers 5
    .param p1, "b"    # [B

    .line 91
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    .line 92
    return-void
.end method

.method public whitelist test-api update([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 74
    if-eqz p1, :cond_19

    .line 77
    if-ltz p2, :cond_13

    if-ltz p3, :cond_13

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_13

    .line 80
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    invoke-static {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    .line 81
    return-void

    .line 78
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 75
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
