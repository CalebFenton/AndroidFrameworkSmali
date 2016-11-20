.class Ljava/io/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getBoolean([BI)Z
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 40
    aget-byte v1, p0, p1

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method static getChar([BI)C
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 44
    add-int/lit8 v0, p1, 0x1

    #@2
    aget-byte v0, p0, v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    .line 45
    aget-byte v1, p0, p1

    #@8
    shl-int/lit8 v1, v1, 0x8

    #@a
    .line 44
    add-int/2addr v0, v1

    #@b
    int-to-char v0, v0

    #@c
    return v0
.end method

.method static getDouble([BI)D
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 76
    invoke-static {p0, p1}, Ljava/io/Bits;->getLong([BI)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method static getFloat([BI)F
    .locals 1
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 61
    invoke-static {p0, p1}, Ljava/io/Bits;->getInt([BI)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static getInt([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 54
    add-int/lit8 v0, p1, 0x3

    #@2
    aget-byte v0, p0, v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    .line 55
    add-int/lit8 v1, p1, 0x2

    #@8
    aget-byte v1, p0, v1

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    shl-int/lit8 v1, v1, 0x8

    #@e
    .line 54
    add-int/2addr v0, v1

    #@f
    .line 56
    add-int/lit8 v1, p1, 0x1

    #@11
    aget-byte v1, p0, v1

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    shl-int/lit8 v1, v1, 0x10

    #@17
    .line 54
    add-int/2addr v0, v1

    #@18
    .line 57
    aget-byte v1, p0, p1

    #@1a
    shl-int/lit8 v1, v1, 0x18

    #@1c
    .line 54
    add-int/2addr v0, v1

    #@1d
    return v0
.end method

.method static getLong([BI)J
    .locals 8
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    const-wide/16 v6, 0xff

    #@2
    .line 65
    add-int/lit8 v0, p1, 0x7

    #@4
    aget-byte v0, p0, v0

    #@6
    int-to-long v0, v0

    #@7
    and-long/2addr v0, v6

    #@8
    .line 66
    add-int/lit8 v2, p1, 0x6

    #@a
    aget-byte v2, p0, v2

    #@c
    int-to-long v2, v2

    #@d
    and-long/2addr v2, v6

    #@e
    const/16 v4, 0x8

    #@10
    shl-long/2addr v2, v4

    #@11
    .line 65
    add-long/2addr v0, v2

    #@12
    .line 67
    add-int/lit8 v2, p1, 0x5

    #@14
    aget-byte v2, p0, v2

    #@16
    int-to-long v2, v2

    #@17
    and-long/2addr v2, v6

    #@18
    const/16 v4, 0x10

    #@1a
    shl-long/2addr v2, v4

    #@1b
    .line 65
    add-long/2addr v0, v2

    #@1c
    .line 68
    add-int/lit8 v2, p1, 0x4

    #@1e
    aget-byte v2, p0, v2

    #@20
    int-to-long v2, v2

    #@21
    and-long/2addr v2, v6

    #@22
    const/16 v4, 0x18

    #@24
    shl-long/2addr v2, v4

    #@25
    .line 65
    add-long/2addr v0, v2

    #@26
    .line 69
    add-int/lit8 v2, p1, 0x3

    #@28
    aget-byte v2, p0, v2

    #@2a
    int-to-long v2, v2

    #@2b
    and-long/2addr v2, v6

    #@2c
    const/16 v4, 0x20

    #@2e
    shl-long/2addr v2, v4

    #@2f
    .line 65
    add-long/2addr v0, v2

    #@30
    .line 70
    add-int/lit8 v2, p1, 0x2

    #@32
    aget-byte v2, p0, v2

    #@34
    int-to-long v2, v2

    #@35
    and-long/2addr v2, v6

    #@36
    const/16 v4, 0x28

    #@38
    shl-long/2addr v2, v4

    #@39
    .line 65
    add-long/2addr v0, v2

    #@3a
    .line 71
    add-int/lit8 v2, p1, 0x1

    #@3c
    aget-byte v2, p0, v2

    #@3e
    int-to-long v2, v2

    #@3f
    and-long/2addr v2, v6

    #@40
    const/16 v4, 0x30

    #@42
    shl-long/2addr v2, v4

    #@43
    .line 65
    add-long/2addr v0, v2

    #@44
    .line 72
    aget-byte v2, p0, p1

    #@46
    int-to-long v2, v2

    #@47
    const/16 v4, 0x38

    #@49
    shl-long/2addr v2, v4

    #@4a
    .line 65
    add-long/2addr v0, v2

    #@4b
    return-wide v0
.end method

.method static getShort([BI)S
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 49
    add-int/lit8 v0, p1, 0x1

    #@2
    aget-byte v0, p0, v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    .line 50
    aget-byte v1, p0, p1

    #@8
    shl-int/lit8 v1, v1, 0x8

    #@a
    .line 49
    add-int/2addr v0, v1

    #@b
    int-to-short v0, v0

    #@c
    return v0
.end method

.method static putBoolean([BIZ)V
    .locals 1
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # Z

    #@0
    .prologue
    .line 85
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    int-to-byte v0, v0

    #@4
    aput-byte v0, p0, p1

    #@6
    .line 84
    return-void

    #@7
    .line 85
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method static putChar([BIC)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # C

    #@0
    .prologue
    .line 89
    add-int/lit8 v0, p1, 0x1

    #@2
    int-to-byte v1, p2

    #@3
    aput-byte v1, p0, v0

    #@5
    .line 90
    ushr-int/lit8 v0, p2, 0x8

    #@7
    int-to-byte v0, v0

    #@8
    aput-byte v0, p0, p1

    #@a
    .line 88
    return-void
.end method

.method static putDouble([BID)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # D

    #@0
    .prologue
    .line 121
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p0, p1, v0, v1}, Ljava/io/Bits;->putLong([BIJ)V

    #@7
    .line 120
    return-void
.end method

.method static putFloat([BIF)V
    .locals 1
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # F

    #@0
    .prologue
    .line 106
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/io/Bits;->putInt([BII)V

    #@7
    .line 105
    return-void
.end method

.method static putInt([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # I

    #@0
    .prologue
    .line 99
    add-int/lit8 v0, p1, 0x3

    #@2
    int-to-byte v1, p2

    #@3
    aput-byte v1, p0, v0

    #@5
    .line 100
    add-int/lit8 v0, p1, 0x2

    #@7
    ushr-int/lit8 v1, p2, 0x8

    #@9
    int-to-byte v1, v1

    #@a
    aput-byte v1, p0, v0

    #@c
    .line 101
    add-int/lit8 v0, p1, 0x1

    #@e
    ushr-int/lit8 v1, p2, 0x10

    #@10
    int-to-byte v1, v1

    #@11
    aput-byte v1, p0, v0

    #@13
    .line 102
    ushr-int/lit8 v0, p2, 0x18

    #@15
    int-to-byte v0, v0

    #@16
    aput-byte v0, p0, p1

    #@18
    .line 98
    return-void
.end method

.method static putLong([BIJ)V
    .locals 4
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # J

    #@0
    .prologue
    .line 110
    add-int/lit8 v0, p1, 0x7

    #@2
    long-to-int v1, p2

    #@3
    int-to-byte v1, v1

    #@4
    aput-byte v1, p0, v0

    #@6
    .line 111
    add-int/lit8 v0, p1, 0x6

    #@8
    const/16 v1, 0x8

    #@a
    ushr-long v2, p2, v1

    #@c
    long-to-int v1, v2

    #@d
    int-to-byte v1, v1

    #@e
    aput-byte v1, p0, v0

    #@10
    .line 112
    add-int/lit8 v0, p1, 0x5

    #@12
    const/16 v1, 0x10

    #@14
    ushr-long v2, p2, v1

    #@16
    long-to-int v1, v2

    #@17
    int-to-byte v1, v1

    #@18
    aput-byte v1, p0, v0

    #@1a
    .line 113
    add-int/lit8 v0, p1, 0x4

    #@1c
    const/16 v1, 0x18

    #@1e
    ushr-long v2, p2, v1

    #@20
    long-to-int v1, v2

    #@21
    int-to-byte v1, v1

    #@22
    aput-byte v1, p0, v0

    #@24
    .line 114
    add-int/lit8 v0, p1, 0x3

    #@26
    const/16 v1, 0x20

    #@28
    ushr-long v2, p2, v1

    #@2a
    long-to-int v1, v2

    #@2b
    int-to-byte v1, v1

    #@2c
    aput-byte v1, p0, v0

    #@2e
    .line 115
    add-int/lit8 v0, p1, 0x2

    #@30
    const/16 v1, 0x28

    #@32
    ushr-long v2, p2, v1

    #@34
    long-to-int v1, v2

    #@35
    int-to-byte v1, v1

    #@36
    aput-byte v1, p0, v0

    #@38
    .line 116
    add-int/lit8 v0, p1, 0x1

    #@3a
    const/16 v1, 0x30

    #@3c
    ushr-long v2, p2, v1

    #@3e
    long-to-int v1, v2

    #@3f
    int-to-byte v1, v1

    #@40
    aput-byte v1, p0, v0

    #@42
    .line 117
    const/16 v0, 0x38

    #@44
    ushr-long v0, p2, v0

    #@46
    long-to-int v0, v0

    #@47
    int-to-byte v0, v0

    #@48
    aput-byte v0, p0, p1

    #@4a
    .line 109
    return-void
.end method

.method static putShort([BIS)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # S

    #@0
    .prologue
    .line 94
    add-int/lit8 v0, p1, 0x1

    #@2
    int-to-byte v1, p2

    #@3
    aput-byte v1, p0, v0

    #@5
    .line 95
    ushr-int/lit8 v0, p2, 0x8

    #@7
    int-to-byte v0, v0

    #@8
    aput-byte v0, p0, p1

    #@a
    .line 93
    return-void
.end method
