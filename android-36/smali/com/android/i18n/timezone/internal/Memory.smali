.class public final Lcom/android/i18n/timezone/internal/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist peekByte(J)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist peekByteArray(J[BII)V
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

.method public static blacklist peekInt(JZ)I
    .registers 4
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    .line 129
    invoke-static {p0, p1}, Lcom/android/i18n/timezone/internal/Memory;->peekIntNative(J)I

    move-result v0

    .line 130
    .local v0, "result":I
    if-eqz p2, :cond_a

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 133
    :cond_a
    return v0
.end method

.method public static blacklist peekInt([BILjava/nio/ByteOrder;)I
    .registers 5
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 32
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_26

    .line 33
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

    .line 38
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

.method public static blacklist peekLong(JZ)J
    .registers 5
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    .line 138
    invoke-static {p0, p1}, Lcom/android/i18n/timezone/internal/Memory;->peekLongNative(J)J

    move-result-wide v0

    .line 139
    .local v0, "result":J
    if-eqz p2, :cond_a

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 142
    :cond_a
    return-wide v0
.end method

.method public static blacklist peekLong([BILjava/nio/ByteOrder;)J
    .registers 12
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 46
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-ne p2, v0, :cond_55

    .line 47
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

    .line 51
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

    .line 55
    .local v0, "l":I
    int-to-long v5, p1

    shl-long/2addr v5, v3

    int-to-long v7, v0

    and-long/2addr v1, v7

    or-long/2addr v1, v5

    return-wide v1

    .line 57
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

    .line 61
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

    .line 65
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

    .line 148
    invoke-static {p0, p1}, Lcom/android/i18n/timezone/internal/Memory;->peekShortNative(J)S

    move-result v0

    .line 149
    .local v0, "result":S
    if-eqz p2, :cond_a

    .line 150
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 152
    :cond_a
    return v0
.end method

.method public static blacklist peekShort([BILjava/nio/ByteOrder;)S
    .registers 5
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 70
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_11

    .line 71
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 73
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

.method public static native blacklist pokeByte(JB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist pokeByteArray(J[BII)V
.end method

.method public static native blacklist pokeCharArray(J[CIIZ)V
.end method

.method public static native blacklist pokeDoubleArray(J[DIIZ)V
.end method

.method public static native blacklist pokeFloatArray(J[FIIZ)V
.end method

.method public static blacklist pokeInt(JIZ)V
    .registers 4
    .param p0, "address"    # J
    .param p2, "value"    # I
    .param p3, "swap"    # Z

    .line 173
    if-eqz p3, :cond_6

    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    .line 176
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/android/i18n/timezone/internal/Memory;->pokeIntNative(JI)V

    .line 177
    return-void
.end method

.method public static blacklist pokeInt([BIILjava/nio/ByteOrder;)V
    .registers 6
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 79
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_27

    .line 80
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 81
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 82
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 83
    shr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    goto :goto_49

    .line 85
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

    .line 86
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 87
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 88
    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    .line 90
    :goto_49
    return-void
.end method

.method public static native blacklist pokeIntArray(J[IIIZ)V
.end method

.method private static native blacklist pokeIntNative(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist pokeLong(JJZ)V
    .registers 5
    .param p0, "address"    # J
    .param p2, "value"    # J
    .param p4, "swap"    # Z

    .line 181
    if-eqz p4, :cond_6

    .line 182
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    .line 184
    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcom/android/i18n/timezone/internal/Memory;->pokeLongNative(JJ)V

    .line 185
    return-void
.end method

.method public static blacklist pokeLong([BIJLjava/nio/ByteOrder;)V
    .registers 9
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "order"    # Ljava/nio/ByteOrder;

    .line 92
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x20

    if-ne p4, v0, :cond_51

    .line 93
    shr-long v0, p2, v1

    long-to-int v0, v0

    .line 94
    .local v0, "i":I
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 95
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 96
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 97
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 98
    long-to-int v0, p2

    .line 99
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 100
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 101
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 102
    shr-int/lit8 p1, v0, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    .line 103
    .end local v0    # "i":I
    goto :goto_9b

    .line 104
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_51
    long-to-int v0, p2

    .line 105
    .restart local v0    # "i":I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    shr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 106
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 107
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 108
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 109
    shr-long v1, p2, v1

    long-to-int v0, v1

    .line 110
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 111
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 112
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 113
    shr-int/lit8 p1, v0, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    .line 115
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

    .line 190
    if-eqz p3, :cond_6

    .line 191
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    .line 193
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/android/i18n/timezone/internal/Memory;->pokeShortNative(JS)V

    .line 194
    return-void
.end method

.method public static blacklist pokeShort([BISLjava/nio/ByteOrder;)V
    .registers 6
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 117
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_15

    .line 118
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 119
    shr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    goto :goto_25

    .line 121
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

    .line 122
    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    .line 124
    :goto_25
    return-void
.end method

.method public static native blacklist pokeShortArray(J[SIIZ)V
.end method

.method private static native blacklist pokeShortNative(JS)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
