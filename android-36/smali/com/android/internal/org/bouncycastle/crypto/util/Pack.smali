.class public abstract Lcom/android/internal/org/bouncycastle/crypto/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bigEndianToInt([BI)I
    .registers 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 12
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    .line 13
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 14
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 15
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public static blacklist bigEndianToInt([BI[I)V
    .registers 5
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 23
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 24
    add-int/lit8 p1, p1, 0x4

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 26
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist bigEndianToLong([BI)J
    .registers 10
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 61
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 62
    .local v0, "hi":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 63
    .local v1, "lo":I
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static blacklist bigEndianToLong([BI[J)V
    .registers 6
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 70
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 71
    add-int/lit8 p1, p1, 0x8

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist intToBigEndian(I[BI)V
    .registers 4
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 37
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 38
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 39
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 40
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 41
    return-void
.end method

.method public static blacklist intToBigEndian([I[BI)V
    .registers 5
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 54
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 55
    add-int/lit8 p2, p2, 0x4

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public static blacklist intToBigEndian(I)[B
    .registers 3
    .param p0, "n"    # I

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 31
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 32
    return-object v0
.end method

.method public static blacklist intToBigEndian([I)[B
    .registers 3
    .param p0, "ns"    # [I

    .line 45
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 46
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToBigEndian([I[BI)V

    .line 47
    return-object v0
.end method

.method public static blacklist intToLittleEndian(I[BI)V
    .registers 4
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 140
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 141
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 142
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 143
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 144
    return-void
.end method

.method public static blacklist intToLittleEndian([I[BI)V
    .registers 5
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 157
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 158
    add-int/lit8 p2, p2, 0x4

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public static blacklist intToLittleEndian(I)[B
    .registers 3
    .param p0, "n"    # I

    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 134
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 135
    return-object v0
.end method

.method public static blacklist intToLittleEndian([I)[B
    .registers 3
    .param p0, "ns"    # [I

    .line 148
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 149
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    .line 150
    return-object v0
.end method

.method public static blacklist littleEndianToInt([BI)I
    .registers 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 106
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 107
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 108
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 109
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 110
    return v0
.end method

.method public static blacklist littleEndianToInt([BI[I)V
    .registers 5
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 117
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 118
    add-int/lit8 p1, p1, 0x4

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist littleEndianToInt([BI[III)V
    .registers 8
    .param p0, "bs"    # [B
    .param p1, "bOff"    # I
    .param p2, "ns"    # [I
    .param p3, "nOff"    # I
    .param p4, "count"    # I

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_10

    .line 126
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    .line 127
    add-int/lit8 p1, p1, 0x4

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static blacklist littleEndianToLong([BI)J
    .registers 10
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 164
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    .line 165
    .local v0, "lo":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 166
    .local v1, "hi":I
    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static blacklist littleEndianToLong([BI[J)V
    .registers 6
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 173
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 174
    add-int/lit8 p1, p1, 0x8

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist longToBigEndian(J[BI)V
    .registers 6
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .line 84
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 85
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 86
    return-void
.end method

.method public static blacklist longToBigEndian([J[BI)V
    .registers 6
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 99
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 100
    add-int/lit8 p2, p2, 0x8

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public static blacklist longToBigEndian(J)[B
    .registers 4
    .param p0, "n"    # J

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 78
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 79
    return-object v0
.end method

.method public static blacklist longToBigEndian([J)[B
    .registers 3
    .param p0, "ns"    # [J

    .line 90
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 91
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->longToBigEndian([J[BI)V

    .line 92
    return-object v0
.end method

.method public static blacklist longToLittleEndian(J[BI)V
    .registers 6
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .line 187
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 188
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 189
    return-void
.end method

.method public static blacklist longToLittleEndian([J[BI)V
    .registers 6
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 202
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->longToLittleEndian(J[BI)V

    .line 203
    add-int/lit8 p2, p2, 0x8

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public static blacklist longToLittleEndian(J)[B
    .registers 4
    .param p0, "n"    # J

    .line 180
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 181
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->longToLittleEndian(J[BI)V

    .line 182
    return-object v0
.end method

.method public static blacklist longToLittleEndian([J)[B
    .registers 3
    .param p0, "ns"    # [J

    .line 193
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 194
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/Pack;->longToLittleEndian([J[BI)V

    .line 195
    return-object v0
.end method
