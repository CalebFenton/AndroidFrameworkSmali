.class public final Llibcore/io/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V
.end method

.method public static native peekByte(J)B
.end method

.method public static native peekByteArray(J[BII)V
.end method

.method public static native peekCharArray(J[CIIZ)V
.end method

.method public static native peekDoubleArray(J[DIIZ)V
.end method

.method public static native peekFloatArray(J[FIIZ)V
.end method

.method public static peekInt(JZ)I
    .locals 2
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    #@0
    .prologue
    .line 156
    invoke-static {p0, p1}, Llibcore/io/Memory;->peekIntNative(J)I

    #@3
    move-result v0

    #@4
    .line 157
    .local v0, "result":I
    if-eqz p2, :cond_0

    #@6
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    #@9
    move-result v0

    #@a
    .line 160
    :cond_0
    return v0
.end method

.method public static peekInt([BILjava/nio/ByteOrder;)I
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 46
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    if-ne p2, v1, :cond_0

    #@4
    .line 47
    add-int/lit8 v0, p1, 0x1

    #@6
    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    shl-int/lit8 v1, v1, 0x18

    #@c
    .line 48
    add-int/lit8 p1, v0, 0x1

    #@e
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    #@10
    and-int/lit16 v2, v2, 0xff

    #@12
    shl-int/lit8 v2, v2, 0x10

    #@14
    .line 47
    or-int/2addr v1, v2

    #@15
    .line 49
    add-int/lit8 v0, p1, 0x1

    #@17
    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    #@19
    and-int/lit16 v2, v2, 0xff

    #@1b
    shl-int/lit8 v2, v2, 0x8

    #@1d
    .line 47
    or-int/2addr v1, v2

    #@1e
    .line 50
    aget-byte v2, p0, v0

    #@20
    and-int/lit16 v2, v2, 0xff

    #@22
    shl-int/lit8 v2, v2, 0x0

    #@24
    .line 47
    or-int/2addr v1, v2

    #@25
    return v1

    #@26
    .line 52
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :cond_0
    add-int/lit8 v0, p1, 0x1

    #@28
    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p0, p1

    #@2a
    and-int/lit16 v1, v1, 0xff

    #@2c
    shl-int/lit8 v1, v1, 0x0

    #@2e
    .line 53
    add-int/lit8 p1, v0, 0x1

    #@30
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    #@32
    and-int/lit16 v2, v2, 0xff

    #@34
    shl-int/lit8 v2, v2, 0x8

    #@36
    .line 52
    or-int/2addr v1, v2

    #@37
    .line 54
    add-int/lit8 v0, p1, 0x1

    #@39
    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    #@3b
    and-int/lit16 v2, v2, 0xff

    #@3d
    shl-int/lit8 v2, v2, 0x10

    #@3f
    .line 52
    or-int/2addr v1, v2

    #@40
    .line 55
    aget-byte v2, p0, v0

    #@42
    and-int/lit16 v2, v2, 0xff

    #@44
    shl-int/lit8 v2, v2, 0x18

    #@46
    .line 52
    or-int/2addr v1, v2

    #@47
    return v1
.end method

.method public static native peekIntArray(J[IIIZ)V
.end method

.method private static native peekIntNative(J)I
.end method

.method public static peekLong(JZ)J
    .locals 2
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    #@0
    .prologue
    .line 165
    invoke-static {p0, p1}, Llibcore/io/Memory;->peekLongNative(J)J

    #@3
    move-result-wide v0

    #@4
    .line 166
    .local v0, "result":J
    if-eqz p2, :cond_0

    #@6
    .line 167
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    #@9
    move-result-wide v0

    #@a
    .line 169
    :cond_0
    return-wide v0
.end method

.method public static peekLong([BILjava/nio/ByteOrder;)J
    .locals 10
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/16 v6, 0x20

    #@7
    .line 60
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    if-ne p2, v3, :cond_0

    #@b
    .line 61
    add-int/lit8 v2, p1, 0x1

    #@d
    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-byte v3, p0, p1

    #@f
    and-int/lit16 v3, v3, 0xff

    #@11
    shl-int/lit8 v3, v3, 0x18

    #@13
    .line 62
    add-int/lit8 p1, v2, 0x1

    #@15
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    #@17
    and-int/lit16 v4, v4, 0xff

    #@19
    shl-int/lit8 v4, v4, 0x10

    #@1b
    .line 61
    or-int/2addr v3, v4

    #@1c
    .line 63
    add-int/lit8 v2, p1, 0x1

    #@1e
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    #@20
    and-int/lit16 v4, v4, 0xff

    #@22
    shl-int/lit8 v4, v4, 0x8

    #@24
    .line 61
    or-int/2addr v3, v4

    #@25
    .line 64
    add-int/lit8 p1, v2, 0x1

    #@27
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    #@29
    and-int/lit16 v4, v4, 0xff

    #@2b
    shl-int/lit8 v4, v4, 0x0

    #@2d
    .line 61
    or-int v0, v3, v4

    #@2f
    .line 65
    .local v0, "h":I
    add-int/lit8 v2, p1, 0x1

    #@31
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, p1

    #@33
    and-int/lit16 v3, v3, 0xff

    #@35
    shl-int/lit8 v3, v3, 0x18

    #@37
    .line 66
    add-int/lit8 p1, v2, 0x1

    #@39
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    #@3b
    and-int/lit16 v4, v4, 0xff

    #@3d
    shl-int/lit8 v4, v4, 0x10

    #@3f
    .line 65
    or-int/2addr v3, v4

    #@40
    .line 67
    add-int/lit8 v2, p1, 0x1

    #@42
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    #@44
    and-int/lit16 v4, v4, 0xff

    #@46
    shl-int/lit8 v4, v4, 0x8

    #@48
    .line 65
    or-int/2addr v3, v4

    #@49
    .line 68
    aget-byte v4, p0, v2

    #@4b
    and-int/lit16 v4, v4, 0xff

    #@4d
    shl-int/lit8 v4, v4, 0x0

    #@4f
    .line 65
    or-int v1, v3, v4

    #@51
    .line 69
    .local v1, "l":I
    int-to-long v4, v0

    #@52
    shl-long/2addr v4, v6

    #@53
    int-to-long v6, v1

    #@54
    and-long/2addr v6, v8

    #@55
    or-long/2addr v4, v6

    #@56
    return-wide v4

    #@57
    .line 71
    .end local v0    # "h":I
    .end local v1    # "l":I
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    :cond_0
    add-int/lit8 v2, p1, 0x1

    #@59
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, p1

    #@5b
    and-int/lit16 v3, v3, 0xff

    #@5d
    shl-int/lit8 v3, v3, 0x0

    #@5f
    .line 72
    add-int/lit8 p1, v2, 0x1

    #@61
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    #@63
    and-int/lit16 v4, v4, 0xff

    #@65
    shl-int/lit8 v4, v4, 0x8

    #@67
    .line 71
    or-int/2addr v3, v4

    #@68
    .line 73
    add-int/lit8 v2, p1, 0x1

    #@6a
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    #@6c
    and-int/lit16 v4, v4, 0xff

    #@6e
    shl-int/lit8 v4, v4, 0x10

    #@70
    .line 71
    or-int/2addr v3, v4

    #@71
    .line 74
    add-int/lit8 p1, v2, 0x1

    #@73
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    #@75
    and-int/lit16 v4, v4, 0xff

    #@77
    shl-int/lit8 v4, v4, 0x18

    #@79
    .line 71
    or-int v1, v3, v4

    #@7b
    .line 75
    .restart local v1    # "l":I
    add-int/lit8 v2, p1, 0x1

    #@7d
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, p1

    #@7f
    and-int/lit16 v3, v3, 0xff

    #@81
    shl-int/lit8 v3, v3, 0x0

    #@83
    .line 76
    add-int/lit8 p1, v2, 0x1

    #@85
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    #@87
    and-int/lit16 v4, v4, 0xff

    #@89
    shl-int/lit8 v4, v4, 0x8

    #@8b
    .line 75
    or-int/2addr v3, v4

    #@8c
    .line 77
    add-int/lit8 v2, p1, 0x1

    #@8e
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    #@90
    and-int/lit16 v4, v4, 0xff

    #@92
    shl-int/lit8 v4, v4, 0x10

    #@94
    .line 75
    or-int/2addr v3, v4

    #@95
    .line 78
    aget-byte v4, p0, v2

    #@97
    and-int/lit16 v4, v4, 0xff

    #@99
    shl-int/lit8 v4, v4, 0x18

    #@9b
    .line 75
    or-int v0, v3, v4

    #@9d
    .line 79
    .restart local v0    # "h":I
    int-to-long v4, v0

    #@9e
    shl-long/2addr v4, v6

    #@9f
    int-to-long v6, v1

    #@a0
    and-long/2addr v6, v8

    #@a1
    or-long/2addr v4, v6

    #@a2
    return-wide v4
.end method

.method public static native peekLongArray(J[JIIZ)V
.end method

.method private static native peekLongNative(J)J
.end method

.method public static peekShort(JZ)S
    .locals 2
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    #@0
    .prologue
    .line 174
    invoke-static {p0, p1}, Llibcore/io/Memory;->peekShortNative(J)S

    #@3
    move-result v0

    #@4
    .line 175
    .local v0, "result":S
    if-eqz p2, :cond_0

    #@6
    .line 176
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    #@9
    move-result v0

    #@a
    .line 178
    :cond_0
    return v0
.end method

.method public static peekShort([BILjava/nio/ByteOrder;)S
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 84
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    if-ne p2, v0, :cond_0

    #@4
    .line 85
    aget-byte v0, p0, p1

    #@6
    shl-int/lit8 v0, v0, 0x8

    #@8
    add-int/lit8 v1, p1, 0x1

    #@a
    aget-byte v1, p0, v1

    #@c
    and-int/lit16 v1, v1, 0xff

    #@e
    or-int/2addr v0, v1

    #@f
    int-to-short v0, v0

    #@10
    return v0

    #@11
    .line 87
    :cond_0
    add-int/lit8 v0, p1, 0x1

    #@13
    aget-byte v0, p0, v0

    #@15
    shl-int/lit8 v0, v0, 0x8

    #@17
    aget-byte v1, p0, p1

    #@19
    and-int/lit16 v1, v1, 0xff

    #@1b
    or-int/2addr v0, v1

    #@1c
    int-to-short v0, v0

    #@1d
    return v0
.end method

.method public static native peekShortArray(J[SIIZ)V
.end method

.method private static native peekShortNative(J)S
.end method

.method public static native pokeByte(JB)V
.end method

.method public static native pokeByteArray(J[BII)V
.end method

.method public static native pokeCharArray(J[CIIZ)V
.end method

.method public static native pokeDoubleArray(J[DIIZ)V
.end method

.method public static native pokeFloatArray(J[FIIZ)V
.end method

.method public static pokeInt(JIZ)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # I
    .param p3, "swap"    # Z

    #@0
    .prologue
    .line 193
    if-eqz p3, :cond_0

    #@2
    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    #@5
    move-result p2

    #@6
    .line 196
    :cond_0
    invoke-static {p0, p1, p2}, Llibcore/io/Memory;->pokeIntNative(JI)V

    #@9
    .line 192
    return-void
.end method

.method public static pokeInt([BIILjava/nio/ByteOrder;)V
    .locals 2
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 92
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    if-ne p3, v1, :cond_0

    #@4
    .line 93
    add-int/lit8 v0, p1, 0x1

    #@6
    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x18

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    int-to-byte v1, v1

    #@b
    aput-byte v1, p0, p1

    #@d
    .line 94
    add-int/lit8 p1, v0, 0x1

    #@f
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    #@11
    and-int/lit16 v1, v1, 0xff

    #@13
    int-to-byte v1, v1

    #@14
    aput-byte v1, p0, v0

    #@16
    .line 95
    add-int/lit8 v0, p1, 0x1

    #@18
    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    int-to-byte v1, v1

    #@1d
    aput-byte v1, p0, p1

    #@1f
    .line 96
    shr-int/lit8 v1, p2, 0x0

    #@21
    and-int/lit16 v1, v1, 0xff

    #@23
    int-to-byte v1, v1

    #@24
    aput-byte v1, p0, v0

    #@26
    move p1, v0

    #@27
    .line 91
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-void

    #@28
    .line 98
    :cond_0
    add-int/lit8 v0, p1, 0x1

    #@2a
    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    #@2c
    and-int/lit16 v1, v1, 0xff

    #@2e
    int-to-byte v1, v1

    #@2f
    aput-byte v1, p0, p1

    #@31
    .line 99
    add-int/lit8 p1, v0, 0x1

    #@33
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    #@35
    and-int/lit16 v1, v1, 0xff

    #@37
    int-to-byte v1, v1

    #@38
    aput-byte v1, p0, v0

    #@3a
    .line 100
    add-int/lit8 v0, p1, 0x1

    #@3c
    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    #@3e
    and-int/lit16 v1, v1, 0xff

    #@40
    int-to-byte v1, v1

    #@41
    aput-byte v1, p0, p1

    #@43
    .line 101
    shr-int/lit8 v1, p2, 0x18

    #@45
    and-int/lit16 v1, v1, 0xff

    #@47
    int-to-byte v1, v1

    #@48
    aput-byte v1, p0, v0

    #@4a
    move p1, v0

    #@4b
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static native pokeIntArray(J[IIIZ)V
.end method

.method private static native pokeIntNative(JI)V
.end method

.method public static pokeLong(JJZ)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # J
    .param p4, "swap"    # Z

    #@0
    .prologue
    .line 201
    if-eqz p4, :cond_0

    #@2
    .line 202
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    #@5
    move-result-wide p2

    #@6
    .line 204
    :cond_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/Memory;->pokeLongNative(JJ)V

    #@9
    .line 200
    return-void
.end method

.method public static pokeLong([BIJLjava/nio/ByteOrder;)V
    .locals 4
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 106
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@4
    if-ne p4, v2, :cond_0

    #@6
    .line 107
    shr-long v2, p2, v3

    #@8
    long-to-int v0, v2

    #@9
    .line 108
    .local v0, "i":I
    add-int/lit8 v1, p1, 0x1

    #@b
    .end local p1    # "offset":I
    .local v1, "offset":I
    shr-int/lit8 v2, v0, 0x18

    #@d
    and-int/lit16 v2, v2, 0xff

    #@f
    int-to-byte v2, v2

    #@10
    aput-byte v2, p0, p1

    #@12
    .line 109
    add-int/lit8 p1, v1, 0x1

    #@14
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    #@16
    and-int/lit16 v2, v2, 0xff

    #@18
    int-to-byte v2, v2

    #@19
    aput-byte v2, p0, v1

    #@1b
    .line 110
    add-int/lit8 v1, p1, 0x1

    #@1d
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    #@1f
    and-int/lit16 v2, v2, 0xff

    #@21
    int-to-byte v2, v2

    #@22
    aput-byte v2, p0, p1

    #@24
    .line 111
    add-int/lit8 p1, v1, 0x1

    #@26
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    #@28
    and-int/lit16 v2, v2, 0xff

    #@2a
    int-to-byte v2, v2

    #@2b
    aput-byte v2, p0, v1

    #@2d
    .line 112
    long-to-int v0, p2

    #@2e
    .line 113
    add-int/lit8 v1, p1, 0x1

    #@30
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x18

    #@32
    and-int/lit16 v2, v2, 0xff

    #@34
    int-to-byte v2, v2

    #@35
    aput-byte v2, p0, p1

    #@37
    .line 114
    add-int/lit8 p1, v1, 0x1

    #@39
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    #@3b
    and-int/lit16 v2, v2, 0xff

    #@3d
    int-to-byte v2, v2

    #@3e
    aput-byte v2, p0, v1

    #@40
    .line 115
    add-int/lit8 v1, p1, 0x1

    #@42
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    #@44
    and-int/lit16 v2, v2, 0xff

    #@46
    int-to-byte v2, v2

    #@47
    aput-byte v2, p0, p1

    #@49
    .line 116
    shr-int/lit8 v2, v0, 0x0

    #@4b
    and-int/lit16 v2, v2, 0xff

    #@4d
    int-to-byte v2, v2

    #@4e
    aput-byte v2, p0, v1

    #@50
    move p1, v1

    #@51
    .line 105
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-void

    #@52
    .line 118
    .end local v0    # "i":I
    :cond_0
    long-to-int v0, p2

    #@53
    .line 119
    .restart local v0    # "i":I
    add-int/lit8 v1, p1, 0x1

    #@55
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    #@57
    and-int/lit16 v2, v2, 0xff

    #@59
    int-to-byte v2, v2

    #@5a
    aput-byte v2, p0, p1

    #@5c
    .line 120
    add-int/lit8 p1, v1, 0x1

    #@5e
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    #@60
    and-int/lit16 v2, v2, 0xff

    #@62
    int-to-byte v2, v2

    #@63
    aput-byte v2, p0, v1

    #@65
    .line 121
    add-int/lit8 v1, p1, 0x1

    #@67
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    #@69
    and-int/lit16 v2, v2, 0xff

    #@6b
    int-to-byte v2, v2

    #@6c
    aput-byte v2, p0, p1

    #@6e
    .line 122
    add-int/lit8 p1, v1, 0x1

    #@70
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x18

    #@72
    and-int/lit16 v2, v2, 0xff

    #@74
    int-to-byte v2, v2

    #@75
    aput-byte v2, p0, v1

    #@77
    .line 123
    shr-long v2, p2, v3

    #@79
    long-to-int v0, v2

    #@7a
    .line 124
    add-int/lit8 v1, p1, 0x1

    #@7c
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    #@7e
    and-int/lit16 v2, v2, 0xff

    #@80
    int-to-byte v2, v2

    #@81
    aput-byte v2, p0, p1

    #@83
    .line 125
    add-int/lit8 p1, v1, 0x1

    #@85
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    #@87
    and-int/lit16 v2, v2, 0xff

    #@89
    int-to-byte v2, v2

    #@8a
    aput-byte v2, p0, v1

    #@8c
    .line 126
    add-int/lit8 v1, p1, 0x1

    #@8e
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    #@90
    and-int/lit16 v2, v2, 0xff

    #@92
    int-to-byte v2, v2

    #@93
    aput-byte v2, p0, p1

    #@95
    .line 127
    shr-int/lit8 v2, v0, 0x18

    #@97
    and-int/lit16 v2, v2, 0xff

    #@99
    int-to-byte v2, v2

    #@9a
    aput-byte v2, p0, v1

    #@9c
    move p1, v1

    #@9d
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static native pokeLongArray(J[JIIZ)V
.end method

.method private static native pokeLongNative(JJ)V
.end method

.method public static pokeShort(JSZ)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # S
    .param p3, "swap"    # Z

    #@0
    .prologue
    .line 209
    if-eqz p3, :cond_0

    #@2
    .line 210
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    #@5
    move-result p2

    #@6
    .line 212
    :cond_0
    invoke-static {p0, p1, p2}, Llibcore/io/Memory;->pokeShortNative(JS)V

    #@9
    .line 208
    return-void
.end method

.method public static pokeShort([BISLjava/nio/ByteOrder;)V
    .locals 2
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 132
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    if-ne p3, v1, :cond_0

    #@4
    .line 133
    add-int/lit8 v0, p1, 0x1

    #@6
    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x8

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    int-to-byte v1, v1

    #@b
    aput-byte v1, p0, p1

    #@d
    .line 134
    shr-int/lit8 v1, p2, 0x0

    #@f
    and-int/lit16 v1, v1, 0xff

    #@11
    int-to-byte v1, v1

    #@12
    aput-byte v1, p0, v0

    #@14
    move p1, v0

    #@15
    .line 131
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-void

    #@16
    .line 136
    :cond_0
    add-int/lit8 v0, p1, 0x1

    #@18
    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    int-to-byte v1, v1

    #@1d
    aput-byte v1, p0, p1

    #@1f
    .line 137
    shr-int/lit8 v1, p2, 0x8

    #@21
    and-int/lit16 v1, v1, 0xff

    #@23
    int-to-byte v1, v1

    #@24
    aput-byte v1, p0, v0

    #@26
    move p1, v0

    #@27
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static native pokeShortArray(J[SIIZ)V
.end method

.method private static native pokeShortNative(JS)V
.end method

.method public static native unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V
.end method

.method public static native unsafeBulkPut([BIILjava/lang/Object;IIZ)V
.end method
