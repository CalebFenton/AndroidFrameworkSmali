.class public final Lcom/android/dex/EncodedValueCodec;
.super Ljava/lang/Object;
.source "EncodedValueCodec.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static readSignedInt(Lcom/android/dex/util/ByteInput;I)I
    .locals 4
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;
    .param p1, "zwidth"    # I

    #@0
    .prologue
    .line 124
    const/4 v1, 0x0

    #@1
    .line 125
    .local v1, "result":I
    move v0, p1

    #@2
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@4
    .line 126
    ushr-int/lit8 v2, v1, 0x8

    #@6
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@9
    move-result v3

    #@a
    and-int/lit16 v3, v3, 0xff

    #@c
    shl-int/lit8 v3, v3, 0x18

    #@e
    or-int v1, v2, v3

    #@10
    .line 125
    add-int/lit8 v0, v0, -0x1

    #@12
    goto :goto_0

    #@13
    .line 128
    :cond_0
    rsub-int/lit8 v2, p1, 0x3

    #@15
    mul-int/lit8 v2, v2, 0x8

    #@17
    shr-int/2addr v1, v2

    #@18
    .line 129
    return v1
.end method

.method public static readSignedLong(Lcom/android/dex/util/ByteInput;I)J
    .locals 10
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;
    .param p1, "zwidth"    # I

    #@0
    .prologue
    .line 159
    const-wide/16 v2, 0x0

    #@2
    .line 160
    .local v2, "result":J
    move v0, p1

    #@3
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@5
    .line 161
    const/16 v1, 0x8

    #@7
    ushr-long v4, v2, v1

    #@9
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@c
    move-result v1

    #@d
    int-to-long v6, v1

    #@e
    const-wide/16 v8, 0xff

    #@10
    and-long/2addr v6, v8

    #@11
    const/16 v1, 0x38

    #@13
    shl-long/2addr v6, v1

    #@14
    or-long v2, v4, v6

    #@16
    .line 160
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 163
    :cond_0
    rsub-int/lit8 v1, p1, 0x7

    #@1b
    mul-int/lit8 v1, v1, 0x8

    #@1d
    shr-long/2addr v2, v1

    #@1e
    .line 164
    return-wide v2
.end method

.method public static readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I
    .locals 4
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;
    .param p1, "zwidth"    # I
    .param p2, "fillOnRight"    # Z

    #@0
    .prologue
    .line 139
    const/4 v1, 0x0

    #@1
    .line 140
    .local v1, "result":I
    if-nez p2, :cond_2

    #@3
    .line 141
    move v0, p1

    #@4
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@6
    .line 142
    ushr-int/lit8 v2, v1, 0x8

    #@8
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@b
    move-result v3

    #@c
    and-int/lit16 v3, v3, 0xff

    #@e
    shl-int/lit8 v3, v3, 0x18

    #@10
    or-int v1, v2, v3

    #@12
    .line 141
    add-int/lit8 v0, v0, -0x1

    #@14
    goto :goto_0

    #@15
    .line 144
    :cond_0
    rsub-int/lit8 v2, p1, 0x3

    #@17
    mul-int/lit8 v2, v2, 0x8

    #@19
    ushr-int/2addr v1, v2

    #@1a
    .line 150
    :cond_1
    return v1

    #@1b
    .line 146
    .end local v0    # "i":I
    :cond_2
    move v0, p1

    #@1c
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    #@1e
    .line 147
    ushr-int/lit8 v2, v1, 0x8

    #@20
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@23
    move-result v3

    #@24
    and-int/lit16 v3, v3, 0xff

    #@26
    shl-int/lit8 v3, v3, 0x18

    #@28
    or-int v1, v2, v3

    #@2a
    .line 146
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_1
.end method

.method public static readUnsignedLong(Lcom/android/dex/util/ByteInput;IZ)J
    .locals 12
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;
    .param p1, "zwidth"    # I
    .param p2, "fillOnRight"    # Z

    #@0
    .prologue
    const-wide/16 v10, 0xff

    #@2
    const/16 v9, 0x38

    #@4
    const/16 v8, 0x8

    #@6
    .line 174
    const-wide/16 v2, 0x0

    #@8
    .line 175
    .local v2, "result":J
    if-nez p2, :cond_2

    #@a
    .line 176
    move v0, p1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@d
    .line 177
    ushr-long v4, v2, v8

    #@f
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@12
    move-result v1

    #@13
    int-to-long v6, v1

    #@14
    and-long/2addr v6, v10

    #@15
    shl-long/2addr v6, v9

    #@16
    or-long v2, v4, v6

    #@18
    .line 176
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 179
    :cond_0
    rsub-int/lit8 v1, p1, 0x7

    #@1d
    mul-int/lit8 v1, v1, 0x8

    #@1f
    ushr-long/2addr v2, v1

    #@20
    .line 185
    :cond_1
    return-wide v2

    #@21
    .line 181
    .end local v0    # "i":I
    :cond_2
    move v0, p1

    #@22
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    #@24
    .line 182
    ushr-long v4, v2, v8

    #@26
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@29
    move-result v1

    #@2a
    int-to-long v6, v1

    #@2b
    and-long/2addr v6, v10

    #@2c
    shl-long/2addr v6, v9

    #@2d
    or-long v2, v4, v6

    #@2f
    .line 181
    add-int/lit8 v0, v0, -0x1

    #@31
    goto :goto_1
.end method

.method public static writeRightZeroExtendedValue(Lcom/android/dex/util/ByteOutput;IJ)V
    .locals 4
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "type"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 93
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@3
    move-result v2

    #@4
    rsub-int/lit8 v0, v2, 0x40

    #@6
    .line 94
    .local v0, "requiredBits":I
    if-nez v0, :cond_0

    #@8
    .line 95
    const/4 v0, 0x1

    #@9
    .line 99
    :cond_0
    add-int/lit8 v2, v0, 0x7

    #@b
    shr-int/lit8 v1, v2, 0x3

    #@d
    .line 102
    .local v1, "requiredBytes":I
    mul-int/lit8 v2, v1, 0x8

    #@f
    rsub-int/lit8 v2, v2, 0x40

    #@11
    shr-long/2addr p2, v2

    #@12
    .line 108
    add-int/lit8 v2, v1, -0x1

    #@14
    shl-int/lit8 v2, v2, 0x5

    #@16
    or-int/2addr v2, p1

    #@17
    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    #@1a
    .line 111
    :goto_0
    if-lez v1, :cond_1

    #@1c
    .line 112
    long-to-int v2, p2

    #@1d
    int-to-byte v2, v2

    #@1e
    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    #@21
    .line 113
    const/16 v2, 0x8

    #@23
    shr-long/2addr p2, v2

    #@24
    .line 114
    add-int/lit8 v1, v1, -0x1

    #@26
    goto :goto_0

    #@27
    .line 91
    :cond_1
    return-void
.end method

.method public static writeSignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V
    .locals 4
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "type"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 42
    const/16 v2, 0x3f

    #@2
    shr-long v2, p2, v2

    #@4
    xor-long/2addr v2, p2

    #@5
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@8
    move-result v2

    #@9
    rsub-int/lit8 v0, v2, 0x41

    #@b
    .line 45
    .local v0, "requiredBits":I
    add-int/lit8 v2, v0, 0x7

    #@d
    shr-int/lit8 v1, v2, 0x3

    #@f
    .line 51
    .local v1, "requiredBytes":I
    add-int/lit8 v2, v1, -0x1

    #@11
    shl-int/lit8 v2, v2, 0x5

    #@13
    or-int/2addr v2, p1

    #@14
    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    #@17
    .line 54
    :goto_0
    if-lez v1, :cond_0

    #@19
    .line 55
    long-to-int v2, p2

    #@1a
    int-to-byte v2, v2

    #@1b
    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    #@1e
    .line 56
    const/16 v2, 0x8

    #@20
    shr-long/2addr p2, v2

    #@21
    .line 57
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0

    #@24
    .line 32
    :cond_0
    return-void
.end method

.method public static writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V
    .locals 4
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "type"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@3
    move-result v2

    #@4
    rsub-int/lit8 v0, v2, 0x40

    #@6
    .line 67
    .local v0, "requiredBits":I
    if-nez v0, :cond_0

    #@8
    .line 68
    const/4 v0, 0x1

    #@9
    .line 72
    :cond_0
    add-int/lit8 v2, v0, 0x7

    #@b
    shr-int/lit8 v1, v2, 0x3

    #@d
    .line 78
    .local v1, "requiredBytes":I
    add-int/lit8 v2, v1, -0x1

    #@f
    shl-int/lit8 v2, v2, 0x5

    #@11
    or-int/2addr v2, p1

    #@12
    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    #@15
    .line 81
    :goto_0
    if-lez v1, :cond_1

    #@17
    .line 82
    long-to-int v2, p2

    #@18
    int-to-byte v2, v2

    #@19
    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    #@1c
    .line 83
    const/16 v2, 0x8

    #@1e
    shr-long/2addr p2, v2

    #@1f
    .line 84
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 64
    :cond_1
    return-void
.end method
