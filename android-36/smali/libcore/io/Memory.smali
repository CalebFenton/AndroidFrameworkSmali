.class public final Llibcore/io/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist test-api memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist peekByte(J)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native greylist peekByteArray(J[BII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist peekCharArray(J[CIIZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist peekDoubleArray(J[DIIZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist peekFloatArray(J[FIIZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static greylist peekInt(JZ)I
    .registers 4
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    .line 250
    invoke-static {p0, p1}, Llibcore/io/Memory;->peekIntNative(J)I

    move-result v0

    .line 251
    .local v0, "result":I
    if-eqz p2, :cond_a

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 254
    :cond_a
    return v0
.end method

.method public static blacklist test-api peekInt([BILjava/nio/ByteOrder;)I
    .registers 5
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 70
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_26

    .line 71
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr p1, v1

    return p1

    .line 76
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :cond_26
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p1, v1

    return p1
.end method

.method public static native blacklist peekIntArray(J[IIIZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist peekIntNative(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static greylist peekLong(JZ)J
    .registers 5
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    .line 264
    invoke-static {p0, p1}, Llibcore/io/Memory;->peekLongNative(J)J

    move-result-wide v0

    .line 265
    .local v0, "result":J
    if-eqz p2, :cond_a

    .line 266
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 268
    :cond_a
    return-wide v0
.end method

.method public static blacklist peekLong([BILjava/nio/ByteOrder;)J
    .registers 12
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 87
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-ne p2, v0, :cond_55

    .line 88
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr p1, v4

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr p1, v0

    .line 92
    .local p1, "h":I
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "offset":I
    .local v5, "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v0, v5

    .line 96
    .local v0, "l":I
    int-to-long v5, p1

    shl-long/2addr v5, v3

    int-to-long v7, v0

    and-long/2addr v1, v7

    or-long/2addr v1, v5

    return-wide v1

    .line 98
    .end local v0    # "l":I
    .end local v4    # "offset":I
    .local p1, "offset":I
    :cond_55
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr p1, v4

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p1, v0

    .line 102
    .local p1, "l":I
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v0, v5

    .line 106
    .local v0, "h":I
    int-to-long v5, v0

    shl-long/2addr v5, v3

    int-to-long v7, p1

    and-long/2addr v1, v7

    or-long/2addr v1, v5

    return-wide v1
.end method

.method public static native blacklist peekLongArray(J[JIIZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist peekLongNative(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist peekShort(JZ)S
    .registers 4
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    .line 277
    invoke-static {p0, p1}, Llibcore/io/Memory;->peekShortNative(J)S

    move-result v0

    .line 278
    .local v0, "result":S
    if-eqz p2, :cond_a

    .line 279
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 281
    :cond_a
    return v0
.end method

.method public static blacklist test-api peekShort([BILjava/nio/ByteOrder;)S
    .registers 5
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 123
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_11

    .line 124
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 126
    :cond_11
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static native blacklist peekShortArray(J[SIIZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist peekShortNative(J)S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native greylist pokeByte(JB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native greylist pokeByteArray(J[BII)V
.end method

.method public static native blacklist pokeCharArray(J[CIIZ)V
.end method

.method public static native blacklist pokeDoubleArray(J[DIIZ)V
.end method

.method public static native blacklist pokeFloatArray(J[FIIZ)V
.end method

.method public static greylist pokeInt(JIZ)V
    .registers 4
    .param p0, "address"    # J
    .param p2, "value"    # I
    .param p3, "swap"    # Z

    .line 341
    if-eqz p3, :cond_6

    .line 342
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    .line 344
    :cond_6
    invoke-static {p0, p1, p2}, Llibcore/io/Memory;->pokeIntNative(JI)V

    .line 345
    return-void
.end method

.method public static blacklist test-api pokeInt([BIILjava/nio/ByteOrder;)V
    .registers 6
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 143
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_27

    .line 144
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 145
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 146
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 147
    shr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    goto :goto_49

    .line 149
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :cond_27
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 150
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 151
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 152
    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    .line 154
    :goto_49
    return-void
.end method

.method public static native blacklist pokeIntArray(J[IIIZ)V
.end method

.method private static native blacklist pokeIntNative(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static greylist pokeLong(JJZ)V
    .registers 5
    .param p0, "address"    # J
    .param p2, "value"    # J
    .param p4, "swap"    # Z

    .line 354
    if-eqz p4, :cond_6

    .line 355
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    .line 357
    :cond_6
    invoke-static {p0, p1, p2, p3}, Llibcore/io/Memory;->pokeLongNative(JJ)V

    .line 358
    return-void
.end method

.method public static blacklist test-api pokeLong([BIJLjava/nio/ByteOrder;)V
    .registers 9
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "order"    # Ljava/nio/ByteOrder;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 169
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x20

    if-ne p4, v0, :cond_51

    .line 170
    shr-long v0, p2, v1

    long-to-int v0, v0

    .line 171
    .local v0, "i":I
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 172
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 173
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 174
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 175
    long-to-int v0, p2

    .line 176
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 177
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 178
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 179
    shr-int/lit8 p1, v0, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    .line 180
    .end local v0    # "i":I
    goto :goto_9b

    .line 181
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_51
    long-to-int v0, p2

    .line 182
    .restart local v0    # "i":I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    shr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 183
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 184
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 185
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 186
    shr-long v1, p2, v1

    long-to-int v0, v1

    .line 187
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 188
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 189
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 190
    shr-int/lit8 p1, v0, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    .line 192
    .end local v0    # "i":I
    :goto_9b
    return-void
.end method

.method public static native blacklist pokeLongArray(J[JIIZ)V
.end method

.method private static native blacklist pokeLongNative(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist pokeShort(JSZ)V
    .registers 4
    .param p0, "address"    # J
    .param p2, "value"    # S
    .param p3, "swap"    # Z

    .line 366
    if-eqz p3, :cond_6

    .line 367
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    .line 369
    :cond_6
    invoke-static {p0, p1, p2}, Llibcore/io/Memory;->pokeShortNative(JS)V

    .line 370
    return-void
.end method

.method public static blacklist test-api pokeShort([BISLjava/nio/ByteOrder;)V
    .registers 6
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 207
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_15

    .line 208
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 209
    shr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    goto :goto_25

    .line 211
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :cond_15
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 212
    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    .line 214
    :goto_25
    return-void
.end method

.method public static native blacklist pokeShortArray(J[SIIZ)V
.end method

.method private static native blacklist pokeShortNative(JS)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V
.end method

.method public static native blacklist unsafeBulkPut([BIILjava/lang/Object;IIZ)V
.end method
