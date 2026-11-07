.class public final Lcom/android/internal/util/BitUtils;
.super Ljava/lang/Object;
.source "BitUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bitAt(I)J
    .registers 3
    .param p0, "bitIndex"    # I

    .line 139
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static blacklist bytesToBEInt([B)I
    .registers 3
    .param p0, "bytes"    # [B

    .line 105
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    .line 106
    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    .line 107
    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    .line 108
    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    return v0
.end method

.method public static blacklist bytesToLEInt([B)I
    .registers 2
    .param p0, "bytes"    # [B

    .line 112
    invoke-static {p0}, Lcom/android/internal/util/BitUtils;->bytesToBEInt([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static blacklist flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;
    .registers 6
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/IntFunction<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 143
    .local p1, "getFlagName":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 145
    .local v1, "count":I
    :goto_6
    if-eqz p0, :cond_25

    .line 146
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 147
    .local v2, "flag":I
    not-int v3, v2

    and-int/2addr p0, v3

    .line 148
    if-lez v1, :cond_18

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_18
    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    nop

    .end local v2    # "flag":I
    add-int/lit8 v1, v1, 0x1

    .line 151
    goto :goto_6

    .line 152
    :cond_25
    const-string v2, "["

    const-string v3, "]"

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist flagsUpTo(I)I
    .registers 2
    .param p0, "lastFlag"    # I

    .line 167
    if-gtz p0, :cond_4

    const/4 v0, 0x0

    goto :goto_b

    :cond_4
    shr-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result v0

    or-int/2addr v0, p0

    :goto_b
    return v0
.end method

.method public static blacklist flagsWithin(II)I
    .registers 4
    .param p0, "firstFlag"    # I
    .param p1, "lastFlag"    # I

    .line 174
    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0
.end method

.method public static blacklist getUint16(Ljava/nio/ByteBuffer;I)I
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .line 120
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v0

    return v0
.end method

.method public static blacklist getUint32(Ljava/nio/ByteBuffer;I)J
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .line 124
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getUint8(Ljava/nio/ByteBuffer;I)I
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .line 116
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v0

    return v0
.end method

.method public static blacklist isBitSet(JI)Z
    .registers 7
    .param p0, "flags"    # J
    .param p2, "bitIndex"    # I

    .line 135
    invoke-static {p2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static blacklist maskedEquals(BBB)Z
    .registers 5
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "mask"    # B

    .line 43
    and-int v0, p0, p2

    and-int v1, p1, p2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist maskedEquals(JJJ)Z
    .registers 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "mask"    # J

    .line 39
    and-long v0, p0, p4

    and-long v2, p2, p4

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 10
    .param p0, "a"    # Ljava/util/UUID;
    .param p1, "b"    # Ljava/util/UUID;
    .param p2, "mask"    # Ljava/util/UUID;

    .line 58
    if-nez p2, :cond_7

    .line 59
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 61
    :cond_7
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    .line 62
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 61
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 63
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 64
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    .line 63
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 61
    :goto_2e
    return v0
.end method

.method public static blacklist maskedEquals([B[B[B)Z
    .registers 9
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "mask"    # [B

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3b

    if-nez p1, :cond_7

    goto :goto_3b

    .line 48
    :cond_7
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v0

    :goto_e
    const-string v3, "Inputs must be of same size"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 49
    if-nez p2, :cond_1a

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 50
    :cond_1a
    array-length v2, p0

    array-length v3, p2

    if-ne v2, v3, :cond_20

    move v2, v1

    goto :goto_21

    :cond_20
    move v2, v0

    :goto_21
    const-string v3, "Mask must be of same size as inputs"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    array-length v3, p2

    if-ge v2, v3, :cond_3a

    .line 52
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    aget-byte v5, p2, v2

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(BBB)Z

    move-result v3

    if-nez v3, :cond_37

    return v0

    .line 51
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 54
    .end local v2    # "i":I
    :cond_3a
    return v1

    .line 47
    :cond_3b
    :goto_3b
    if-ne p0, p1, :cond_3e

    move v0, v1

    :cond_3e
    return v0
.end method

.method public static blacklist packBits([I)J
    .registers 8
    .param p0, "bits"    # [I

    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .local v0, "packed":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_f

    aget v4, p0, v3

    .line 83
    .local v4, "b":I
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 82
    .end local v4    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 85
    :cond_f
    return-wide v0
.end method

.method public static blacklist put(Ljava/nio/ByteBuffer;I[B)V
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I
    .param p2, "bytes"    # [B

    .line 128
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 129
    .local v0, "original":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    return-void
.end method

.method public static blacklist toBytes(J)[B
    .registers 3
    .param p0, "l"    # J

    .line 160
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist uint16(BB)I
    .registers 4
    .param p0, "hi"    # B
    .param p1, "lo"    # B

    .line 97
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static blacklist uint16(S)I
    .registers 2
    .param p0, "s"    # S

    .line 93
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static blacklist uint32(I)J
    .registers 5
    .param p0, "i"    # I

    .line 101
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist uint8(B)I
    .registers 2
    .param p0, "b"    # B

    .line 89
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static blacklist unpackBits(J)[I
    .registers 10
    .param p0, "val"    # J

    .line 68
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 69
    .local v0, "size":I
    new-array v1, v0, [I

    .line 70
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 71
    .local v2, "index":I
    const/4 v3, 0x0

    .line 72
    .local v3, "bitPos":I
    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_20

    .line 73
    const-wide/16 v4, 0x1

    and-long v6, p0, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_1b

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    aput v3, v1, v2

    move v2, v4

    .line 74
    .end local v4    # "index":I
    .restart local v2    # "index":I
    :cond_1b
    const/4 v4, 0x1

    ushr-long/2addr p0, v4

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 77
    :cond_20
    return-object v1
.end method
