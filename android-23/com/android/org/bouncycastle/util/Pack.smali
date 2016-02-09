.class public abstract Lcom/android/org/bouncycastle/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3
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
    .line 7
    aget-byte v1, p0, p1

    #@2
    shl-int/lit8 v0, v1, 0x18

    #@4
    .line 8
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
    .line 9
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
    .line 10
    add-int/lit8 p1, p1, 0x1

    #@18
    aget-byte v1, p0, p1

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    or-int/2addr v0, v1

    #@1d
    .line 11
    return v0
.end method

.method public static bigEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    #@0
    .prologue
    .line 16
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 18
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@7
    move-result v1

    #@8
    aput v1, p2, v0

    #@a
    .line 19
    add-int/lit8 p1, p1, 0x4

    #@c
    .line 16
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 14
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
    .line 56
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@8
    move-result v0

    #@9
    .line 57
    .local v0, "hi":I
    add-int/lit8 v2, p1, 0x4

    #@b
    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@e
    move-result v1

    #@f
    .line 58
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
    .line 63
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 65
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@7
    move-result-wide v2

    #@8
    aput-wide v2, p2, v0

    #@a
    .line 66
    add-int/lit8 p1, p1, 0x8

    #@c
    .line 63
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 61
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
    .line 32
    ushr-int/lit8 v0, p0, 0x18

    #@2
    int-to-byte v0, v0

    #@3
    aput-byte v0, p1, p2

    #@5
    .line 33
    add-int/lit8 p2, p2, 0x1

    #@7
    ushr-int/lit8 v0, p0, 0x10

    #@9
    int-to-byte v0, v0

    #@a
    aput-byte v0, p1, p2

    #@c
    .line 34
    add-int/lit8 p2, p2, 0x1

    #@e
    ushr-int/lit8 v0, p0, 0x8

    #@10
    int-to-byte v0, v0

    #@11
    aput-byte v0, p1, p2

    #@13
    .line 35
    add-int/lit8 p2, p2, 0x1

    #@15
    int-to-byte v0, p0

    #@16
    aput-byte v0, p1, p2

    #@18
    .line 30
    return-void
.end method

.method public static intToBigEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 49
    aget v1, p0, v0

    #@6
    invoke-static {v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@9
    .line 50
    add-int/lit8 p2, p2, 0x4

    #@b
    .line 47
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 45
    :cond_0
    return-void
.end method

.method public static intToBigEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 25
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 26
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@7
    .line 27
    return-object v0
.end method

.method public static intToBigEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    #@0
    .prologue
    .line 40
    array-length v1, p0

    #@1
    mul-int/lit8 v1, v1, 0x4

    #@3
    new-array v0, v1, [B

    #@5
    .line 41
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    #@9
    .line 42
    return-object v0
.end method

.method public static intToLittleEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 135
    int-to-byte v0, p0

    #@1
    aput-byte v0, p1, p2

    #@3
    .line 136
    add-int/lit8 p2, p2, 0x1

    #@5
    ushr-int/lit8 v0, p0, 0x8

    #@7
    int-to-byte v0, v0

    #@8
    aput-byte v0, p1, p2

    #@a
    .line 137
    add-int/lit8 p2, p2, 0x1

    #@c
    ushr-int/lit8 v0, p0, 0x10

    #@e
    int-to-byte v0, v0

    #@f
    aput-byte v0, p1, p2

    #@11
    .line 138
    add-int/lit8 p2, p2, 0x1

    #@13
    ushr-int/lit8 v0, p0, 0x18

    #@15
    int-to-byte v0, v0

    #@16
    aput-byte v0, p1, p2

    #@18
    .line 133
    return-void
.end method

.method public static intToLittleEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 150
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 152
    aget v1, p0, v0

    #@6
    invoke-static {v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    #@9
    .line 153
    add-int/lit8 p2, p2, 0x4

    #@b
    .line 150
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 148
    :cond_0
    return-void
.end method

.method public static intToLittleEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 128
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 129
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    #@7
    .line 130
    return-object v0
.end method

.method public static intToLittleEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    #@0
    .prologue
    .line 143
    array-length v1, p0

    #@1
    mul-int/lit8 v1, v1, 0x4

    #@3
    new-array v0, v1, [B

    #@5
    .line 144
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    #@9
    .line 145
    return-object v0
.end method

.method public static littleEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 101
    aget-byte v1, p0, p1

    #@2
    and-int/lit16 v0, v1, 0xff

    #@4
    .line 102
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
    .line 103
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
    .line 104
    add-int/lit8 p1, p1, 0x1

    #@18
    aget-byte v1, p0, p1

    #@1a
    shl-int/lit8 v1, v1, 0x18

    #@1c
    or-int/2addr v0, v1

    #@1d
    .line 105
    return v0
.end method

.method public static littleEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 112
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    #@7
    move-result v1

    #@8
    aput v1, p2, v0

    #@a
    .line 113
    add-int/lit8 p1, p1, 0x4

    #@c
    .line 110
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 108
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
    .line 119
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@3
    .line 121
    add-int v1, p3, v0

    #@5
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    #@8
    move-result v2

    #@9
    aput v2, p2, v1

    #@b
    .line 122
    add-int/lit8 p1, p1, 0x4

    #@d
    .line 119
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 117
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
    .line 159
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    #@8
    move-result v1

    #@9
    .line 160
    .local v1, "lo":I
    add-int/lit8 v2, p1, 0x4

    #@b
    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    #@e
    move-result v0

    #@f
    .line 161
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
    .line 166
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 168
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    #@7
    move-result-wide v2

    #@8
    aput-wide v2, p2, v0

    #@a
    .line 169
    add-int/lit8 p1, p1, 0x8

    #@c
    .line 166
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 164
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
    .line 79
    const/16 v0, 0x20

    #@2
    ushr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@8
    .line 80
    const-wide v0, 0xffffffffL

    #@d
    and-long/2addr v0, p0

    #@e
    long-to-int v0, v0

    #@f
    add-int/lit8 v1, p3, 0x4

    #@11
    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@14
    .line 77
    return-void
.end method

.method public static longToBigEndian([J[BI)V
    .locals 4
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 94
    aget-wide v2, p0, v0

    #@6
    invoke-static {v2, v3, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@9
    .line 95
    add-int/lit8 p2, p2, 0x8

    #@b
    .line 92
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 90
    :cond_0
    return-void
.end method

.method public static longToBigEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    #@0
    .prologue
    .line 72
    const/16 v1, 0x8

    #@2
    new-array v0, v1, [B

    #@4
    .line 73
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    invoke-static {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@8
    .line 74
    return-object v0
.end method

.method public static longToBigEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    #@0
    .prologue
    .line 85
    array-length v1, p0

    #@1
    mul-int/lit8 v1, v1, 0x8

    #@3
    new-array v0, v1, [B

    #@5
    .line 86
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    #@9
    .line 87
    return-object v0
.end method

.method public static longToLittleEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    #@0
    .prologue
    .line 182
    const-wide v0, 0xffffffffL

    #@5
    and-long/2addr v0, p0

    #@6
    long-to-int v0, v0

    #@7
    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    #@a
    .line 183
    const/16 v0, 0x20

    #@c
    ushr-long v0, p0, v0

    #@e
    long-to-int v0, v0

    #@f
    add-int/lit8 v1, p3, 0x4

    #@11
    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    #@14
    .line 180
    return-void
.end method

.method public static longToLittleEndian([J[BI)V
    .locals 4
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 195
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 197
    aget-wide v2, p0, v0

    #@6
    invoke-static {v2, v3, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    #@9
    .line 198
    add-int/lit8 p2, p2, 0x8

    #@b
    .line 195
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 193
    :cond_0
    return-void
.end method

.method public static longToLittleEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    #@0
    .prologue
    .line 175
    const/16 v1, 0x8

    #@2
    new-array v0, v1, [B

    #@4
    .line 176
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    invoke-static {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    #@8
    .line 177
    return-object v0
.end method

.method public static longToLittleEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    #@0
    .prologue
    .line 188
    array-length v1, p0

    #@1
    mul-int/lit8 v1, v1, 0x8

    #@3
    new-array v0, v1, [B

    #@5
    .line 189
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    #@9
    .line 190
    return-object v0
.end method
