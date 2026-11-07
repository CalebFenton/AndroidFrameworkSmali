.class Ljava/io/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getBoolean([BI)Z
    .registers 3
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 40
    aget-byte v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static blacklist getChar([BI)C
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 44
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method static blacklist getDouble([BI)D
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 76
    invoke-static {p0, p1}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getFloat([BI)F
    .registers 3
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 61
    invoke-static {p0, p1}, Ljava/io/Bits;->getInt([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static blacklist getInt([BI)I
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 54
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method static blacklist getLong([BI)J
    .registers 9
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 65
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    aget-byte v2, p0, p1

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist getShort([BI)S
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 49
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static blacklist putBoolean([BIZ)V
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # Z

    .line 85
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 86
    return-void
.end method

.method static blacklist putChar([BIC)V
    .registers 5
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # C

    .line 89
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 90
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 91
    return-void
.end method

.method static blacklist putDouble([BID)V
    .registers 6
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # D

    .line 121
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/io/Bits;->putLong([BIJ)V

    .line 122
    return-void
.end method

.method static blacklist putFloat([BIF)V
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # F

    .line 106
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/io/Bits;->putInt([BII)V

    .line 107
    return-void
.end method

.method static blacklist putInt([BII)V
    .registers 5
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # I

    .line 99
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 100
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 101
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 102
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 103
    return-void
.end method

.method static blacklist putLong([BIJ)V
    .registers 7
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # J

    .line 110
    add-int/lit8 v0, p1, 0x7

    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 111
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 112
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 113
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 114
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 115
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 116
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 117
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 118
    return-void
.end method

.method static blacklist putShort([BIS)V
    .registers 5
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # S

    .line 94
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 95
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 96
    return-void
.end method
