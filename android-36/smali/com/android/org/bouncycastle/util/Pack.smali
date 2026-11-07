.class public abstract Lcom/android/org/bouncycastle/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public static blacklist bigEndianToInt([BI)I
    .registers 4

    .line 19
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    .line 20
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 21
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    .line 22
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static blacklist bigEndianToLong([BI)J
    .registers 6

    .line 86
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 87
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist bigEndianToLong([BI[JII)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_10

    add-int v1, p3, v0

    .line 104
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static blacklist intToBigEndian(I[BI)V
    .registers 5

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 53
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 54
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 55
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p0

    .line 56
    aput-byte p0, p1, p2

    return-void
.end method

.method public static blacklist intToLittleEndian(I[BI)V
    .registers 5

    int-to-byte v0, p0

    .line 264
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 265
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 266
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    .line 267
    aput-byte p0, p1, p2

    return-void
.end method

.method public static blacklist intToLittleEndian([III[BI)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_f

    add-int v1, p1, v0

    .line 290
    aget v1, p0, v1

    invoke-static {v1, p3, p4}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 p4, p4, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public static blacklist littleEndianToInt([BI)I
    .registers 4

    .line 172
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 173
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 174
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    .line 175
    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static blacklist littleEndianToInt([BI[III)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_10

    add-int v1, p3, v0

    .line 211
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static blacklist littleEndianToLong([BI)J
    .registers 7

    .line 297
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 298
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    const/16 v3, 0x20

    shl-long/2addr p0, v3

    int-to-long v3, v0

    and-long v0, v3, v1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist littleEndianToLong([BI[JII)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_10

    add-int v1, p3, v0

    .line 315
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static blacklist longToBigEndian(J[BI)V
    .registers 6

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    .line 118
    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p3, p3, 0x4

    .line 119
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public static blacklist longToBigEndian([JII[BI)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_f

    add-int v1, p1, v0

    .line 142
    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/lit8 p4, p4, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public static blacklist longToLittleEndian(J[BI)V
    .registers 6

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    .line 363
    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p3, p3, 0x4

    .line 364
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method public static blacklist longToLittleEndian([J[BI)V
    .registers 6

    const/4 v0, 0x0

    .line 376
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 378
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method
