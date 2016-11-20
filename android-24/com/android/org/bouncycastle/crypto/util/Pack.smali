.class public abstract Lcom/android/org/bouncycastle/crypto/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static bigEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 10
    aget-byte v1, p0, p1

    #@2
    shl-int/lit8 v0, v1, 0x18

    #@4
    .line 11
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    #@6
    aget-byte v1, p0, p1

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    shl-int/lit8 v1, v1, 0x10

    #@c
    or-int/2addr v0, v1

    #@d
    .line 12
    add-int/lit8 p1, p1, 0x1

    #@f
    aget-byte v1, p0, p1

    #@11
    and-int/lit16 v1, v1, 0xff

    #@13
    shl-int/lit8 v1, v1, 0x8

    #@15
    or-int/2addr v0, v1

    #@16
    .line 13
    add-int/lit8 p1, p1, 0x1

    #@18
    aget-byte v1, p0, p1

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    or-int/2addr v0, v1

    #@1d
    .line 14
    return v0
.end method

.method public static bigEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    #@0
    .prologue
    .line 19
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 21
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    #@7
    move-result v1

    #@8
    aput v1, p2, v0

    #@a
    .line 22
    add-int/lit8 p1, p1, 0x4

    #@c
    .line 19
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 17
    :cond_0
    return-void
.end method

.method public static bigEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 59
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    #@8
    move-result v0

    #@9
    .line 60
    .local v0, "hi":I
    add-int/lit8 v2, p1, 0x4

    #@b
    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    #@e
    move-result v1

    #@f
    .line 61
    .local v1, "lo":I
    int-to-long v2, v0

    #@10
    and-long/2addr v2, v6

    #@11
    const/16 v4, 0x20

    #@13
    shl-long/2addr v2, v4

    #@14
    int-to-long v4, v1

    #@15
    and-long/2addr v4, v6

    #@16
    or-long/2addr v2, v4

    #@17
    return-wide v2
.end method

.method public static bigEndianToLong([BI[J)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 68
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToLong([BI)J

    #@7
    move-result-wide v2

    #@8
    aput-wide v2, p2, v0

    #@a
    .line 69
    add-int/lit8 p1, p1, 0x8

    #@c
    .line 66
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 64
    :cond_0
    return-void
.end method

.method public static intToBigEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 35
    ushr-int/lit8 v0, p0, 0x18

    #@2
    int-to-byte v0, v0

    #@3
    aput-byte v0, p1, p2

    #@5
    .line 36
    add-int/lit8 p2, p2, 0x1

    #@7
    ushr-int/lit8 v0, p0, 0x10

    #@9
    int-to-byte v0, v0

    #@a
    aput-byte v0, p1, p2

    #@c
    .line 37
    add-int/lit8 p2, p2, 0x1

    #@e
    ushr-int/lit8 v0, p0, 0x8

    #@10
    int-to-byte v0, v0

    #@11
    aput-byte v0, p1, p2

    #@13
    .line 38
    add-int/lit8 p2, p2, 0x1

    #@15
    int-to-byte v0, p0

    #@16
    aput-byte v0, p1, p2

    #@18
    .line 33
    return-void
.end method

.method public static intToBigEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 52
    aget v1, p0, v0

    #@6
    invoke-static {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    #@9
    .line 53
    add-int/lit8 p2, p2, 0x4

    #@b
    .line 50
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 48
    :cond_0
    return-void
.end method

.method public static intToBigEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 28
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 29
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    #@7
    .line 30
    return-object v0
.end method

.method public static intToBigEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    #@0
    .prologue
    .line 43
    array-length v1, p0

    #@1
    mul-int/lit8 v1, v1, 0x4

    #@3
    new-array v0, v1, [B

    #@5
    .line 44
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian([I[BI)V

    #@9
    .line 45
    return-object v0
.end method

.method public static intToLittleEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 138
    int-to-byte v0, p0

    #@1
    aput-byte v0, p1, p2

    #@3
    .line 139
    add-int/lit8 p2, p2, 0x1

    #@5
    ushr-int/lit8 v0, p0, 0x8

    #@7
    int-to-byte v0, v0

    #@8
    aput-byte v0, p1, p2

    #@a
    .line 140
    add-int/lit8 p2, p2, 0x1

    #@c
    ushr-int/lit8 v0, p0, 0x10

    #@e
    int-to-byte v0, v0

    #@f
    aput-byte v0, p1, p2

    #@11
    .line 141
    add-int/lit8 p2, p2, 0x1

    #@13
    ushr-int/lit8 v0, p0, 0x18

    #@15
    int-to-byte v0, v0

    #@16
    aput-byte v0, p1, p2

    #@18
    .line 136
    return-void
.end method

.method public static intToLittleEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 153
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 155
    aget v1, p0, v0

    #@6
    invoke-static {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    #@9
    .line 156
    add-int/lit8 p2, p2, 0x4

    #@b
    .line 153
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 151
    :cond_0
    return-void
.end method

.method public static intToLittleEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 131
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 132
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    #@7
    .line 133
    return-object v0
.end method

.method public static intToLittleEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    #@0
    .prologue
    .line 146
    array-length v1, p0

    #@1
    mul-int/lit8 v1, v1, 0x4

    #@3
    new-array v0, v1, [B

    #@5
    .line 147
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    #@9
    .line 148
    return-object v0
.end method

.method public static littleEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 104
    aget-byte v1, p0, p1

    #@2
    and-int/lit16 v0, v1, 0xff

    #@4
    .line 105
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    #@6
    aget-byte v1, p0, p1

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    shl-int/lit8 v1, v1, 0x8

    #@c
    or-int/2addr v0, v1

    #@d
    .line 106
    add-int/lit8 p1, p1, 0x1

    #@f
    aget-byte v1, p0, p1

    #@11
    and-int/lit16 v1, v1, 0xff

    #@13
    shl-int/lit8 v1, v1, 0x10

    #@15
    or-int/2addr v0, v1

    #@16
    .line 107
    add-int/lit8 p1, p1, 0x1

    #@18
    aget-byte v1, p0, p1

    #@1a
    shl-int/lit8 v1, v1, 0x18

    #@1c
    or-int/2addr v0, v1

    #@1d
    .line 108
    return v0
.end method

.method public static littleEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 115
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    #@7
    move-result v1

    #@8
    aput v1, p2, v0

    #@a
    .line 116
    add-int/lit8 p1, p1, 0x4

    #@c
    .line 113
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 111
    :cond_0
    return-void
.end method

.method public static littleEndianToInt([BI[III)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "bOff"    # I
    .param p2, "ns"    # [I
    .param p3, "nOff"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@3
    .line 124
    add-int v1, p3, v0

    #@5
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    #@8
    move-result v2

    #@9
    aput v2, p2, v1

    #@b
    .line 125
    add-int/lit8 p1, p1, 0x4

    #@d
    .line 122
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 120
    :cond_0
    return-void
.end method

.method public static littleEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 162
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    #@8
    move-result v1

    #@9
    .line 163
    .local v1, "lo":I
    add-int/lit8 v2, p1, 0x4

    #@b
    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    #@e
    move-result v0

    #@f
    .line 164
    .local v0, "hi":I
    int-to-long v2, v0

    #@10
    and-long/2addr v2, v6

    #@11
    const/16 v4, 0x20

    #@13
    shl-long/2addr v2, v4

    #@14
    int-to-long v4, v1

    #@15
    and-long/2addr v4, v6

    #@16
    or-long/2addr v2, v4

    #@17
    return-wide v2
.end method

.method public static littleEndianToLong([BI[J)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 171
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->littleEndianToLong([BI)J

    #@7
    move-result-wide v2

    #@8
    aput-wide v2, p2, v0

    #@a
    .line 172
    add-int/lit8 p1, p1, 0x8

    #@c
    .line 169
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 167
    :cond_0
    return-void
.end method

.method public static longToBigEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    #@0
    .prologue
    .line 82
    const/16 v0, 0x20

    #@2
    ushr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    #@8
    .line 83
    const-wide v0, 0xffffffffL

    #@d
    and-long/2addr v0, p0

    #@e
    long-to-int v0, v0

    #@f
    add-int/lit8 v1, p3, 0x4

    #@11
    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    #@14
    .line 80
    return-void
.end method

.method public static longToBigEndian([J[BI)V
    .locals 4
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 95
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 97
    aget-wide v2, p0, v0

    #@6
    invoke-static {v2, v3, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    #@9
    .line 98
    add-int/lit8 p2, p2, 0x8

    #@b
    .line 95
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 93
    :cond_0
    return-void
.end method

.method public static longToBigEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    #@0
    .prologue
    .line 75
    const/16 v1, 0x8

    #@2
    new-array v0, v1, [B

    #@4
    .line 76
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    invoke-static {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    #@8
    .line 77
    return-object v0
.end method

.method public static longToBigEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    #@0
    .prologue
    .line 88
    array-length v1, p0

    #@1
    mul-int/lit8 v1, v1, 0x8

    #@3
    new-array v0, v1, [B

    #@5
    .line 89
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian([J[BI)V

    #@9
    .line 90
    return-object v0
.end method

.method public static longToLittleEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    #@0
    .prologue
    .line 185
    const-wide v0, 0xffffffffL

    #@5
    and-long/2addr v0, p0

    #@6
    long-to-int v0, v0

    #@7
    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    #@a
    .line 186
    const/16 v0, 0x20

    #@c
    ushr-long v0, p0, v0

    #@e
    long-to-int v0, v0

    #@f
    add-int/lit8 v1, p3, 0x4

    #@11
    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    #@14
    .line 183
    return-void
.end method

.method public static longToLittleEndian([J[BI)V
    .locals 4
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 198
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 200
    aget-wide v2, p0, v0

    #@6
    invoke-static {v2, v3, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToLittleEndian(J[BI)V

    #@9
    .line 201
    add-int/lit8 p2, p2, 0x8

    #@b
    .line 198
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 196
    :cond_0
    return-void
.end method

.method public static longToLittleEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    #@0
    .prologue
    .line 178
    const/16 v1, 0x8

    #@2
    new-array v0, v1, [B

    #@4
    .line 179
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    invoke-static {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToLittleEndian(J[BI)V

    #@8
    .line 180
    return-object v0
.end method

.method public static longToLittleEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    #@0
    .prologue
    .line 191
    array-length v1, p0

    #@1
    mul-int/lit8 v1, v1, 0x8

    #@3
    new-array v0, v1, [B

    #@5
    .line 192
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToLittleEndian([J[BI)V

    #@9
    .line 193
    return-object v0
.end method
