.class public final Lcom/android/dex/Leb128;
.super Ljava/lang/Object;
.source "Leb128.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static readSignedLeb128(Lcom/android/dex/util/ByteInput;)I
    .locals 7
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;

    #@0
    .prologue
    const/16 v6, 0x80

    #@2
    .line 82
    const/4 v2, 0x0

    #@3
    .line 84
    .local v2, "result":I
    const/4 v0, 0x0

    #@4
    .line 85
    .local v0, "count":I
    const/4 v3, -0x1

    #@5
    .line 88
    .local v3, "signBits":I
    :cond_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@8
    move-result v4

    #@9
    and-int/lit16 v1, v4, 0xff

    #@b
    .line 89
    .local v1, "cur":I
    and-int/lit8 v4, v1, 0x7f

    #@d
    mul-int/lit8 v5, v0, 0x7

    #@f
    shl-int/2addr v4, v5

    #@10
    or-int/2addr v2, v4

    #@11
    .line 90
    shl-int/lit8 v3, v3, 0x7

    #@13
    .line 91
    add-int/lit8 v0, v0, 0x1

    #@15
    .line 92
    and-int/lit16 v4, v1, 0x80

    #@17
    if-ne v4, v6, :cond_1

    #@19
    const/4 v4, 0x5

    #@1a
    if-lt v0, v4, :cond_0

    #@1c
    .line 94
    :cond_1
    and-int/lit16 v4, v1, 0x80

    #@1e
    if-ne v4, v6, :cond_2

    #@20
    .line 95
    new-instance v4, Lcom/android/dex/DexException;

    #@22
    const-string/jumbo v5, "invalid LEB128 sequence"

    #@25
    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 99
    :cond_2
    shr-int/lit8 v4, v3, 0x1

    #@2b
    and-int/2addr v4, v2

    #@2c
    if-eqz v4, :cond_3

    #@2e
    .line 100
    or-int/2addr v2, v3

    #@2f
    .line 103
    :cond_3
    return v2
.end method

.method public static readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I
    .locals 6
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;

    #@0
    .prologue
    const/16 v5, 0x80

    #@2
    .line 110
    const/4 v2, 0x0

    #@3
    .line 112
    .local v2, "result":I
    const/4 v0, 0x0

    #@4
    .line 115
    .local v0, "count":I
    :cond_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@7
    move-result v3

    #@8
    and-int/lit16 v1, v3, 0xff

    #@a
    .line 116
    .local v1, "cur":I
    and-int/lit8 v3, v1, 0x7f

    #@c
    mul-int/lit8 v4, v0, 0x7

    #@e
    shl-int/2addr v3, v4

    #@f
    or-int/2addr v2, v3

    #@10
    .line 117
    add-int/lit8 v0, v0, 0x1

    #@12
    .line 118
    and-int/lit16 v3, v1, 0x80

    #@14
    if-ne v3, v5, :cond_1

    #@16
    const/4 v3, 0x5

    #@17
    if-lt v0, v3, :cond_0

    #@19
    .line 120
    :cond_1
    and-int/lit16 v3, v1, 0x80

    #@1b
    if-ne v3, v5, :cond_2

    #@1d
    .line 121
    new-instance v3, Lcom/android/dex/DexException;

    #@1f
    const-string/jumbo v4, "invalid LEB128 sequence"

    #@22
    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v3

    #@26
    .line 124
    :cond_2
    return v2
.end method

.method public static signedLeb128Size(I)I
    .locals 6
    .param p0, "value"    # I

    #@0
    .prologue
    .line 61
    shr-int/lit8 v3, p0, 0x7

    #@2
    .line 62
    .local v3, "remaining":I
    const/4 v0, 0x0

    #@3
    .line 63
    .local v0, "count":I
    const/4 v2, 0x1

    #@4
    .line 64
    .local v2, "hasMore":Z
    const/high16 v4, -0x80000000

    #@6
    and-int/2addr v4, p0

    #@7
    if-nez v4, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    .line 66
    .local v1, "end":I
    :goto_0
    if-eqz v2, :cond_3

    #@c
    .line 67
    if-ne v3, v1, :cond_1

    #@e
    .line 68
    and-int/lit8 v4, v3, 0x1

    #@10
    shr-int/lit8 v5, p0, 0x6

    #@12
    and-int/lit8 v5, v5, 0x1

    #@14
    if-eq v4, v5, :cond_2

    #@16
    const/4 v2, 0x1

    #@17
    .line 70
    :goto_1
    move p0, v3

    #@18
    .line 71
    shr-int/lit8 v3, v3, 0x7

    #@1a
    .line 72
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 64
    .end local v1    # "end":I
    :cond_0
    const/4 v1, -0x1

    #@1e
    .restart local v1    # "end":I
    goto :goto_0

    #@1f
    .line 67
    :cond_1
    const/4 v2, 0x1

    #@20
    goto :goto_1

    #@21
    .line 68
    :cond_2
    const/4 v2, 0x0

    #@22
    goto :goto_1

    #@23
    .line 75
    :cond_3
    return v0
.end method

.method public static unsignedLeb128Size(I)I
    .locals 3
    .param p0, "value"    # I

    #@0
    .prologue
    .line 40
    shr-int/lit8 v1, p0, 0x7

    #@2
    .line 41
    .local v1, "remaining":I
    const/4 v0, 0x0

    #@3
    .line 43
    .local v0, "count":I
    :goto_0
    if-eqz v1, :cond_0

    #@5
    .line 44
    shr-int/lit8 v1, v1, 0x7

    #@7
    .line 45
    add-int/lit8 v0, v0, 0x1

    #@9
    goto :goto_0

    #@a
    .line 48
    :cond_0
    add-int/lit8 v2, v0, 0x1

    #@c
    return v2
.end method

.method public static writeSignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    .locals 6
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 148
    shr-int/lit8 v2, p1, 0x7

    #@3
    .line 149
    .local v2, "remaining":I
    const/4 v1, 0x1

    #@4
    .line 150
    .local v1, "hasMore":Z
    const/high16 v3, -0x80000000

    #@6
    and-int/2addr v3, p1

    #@7
    if-nez v3, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    .line 152
    .local v0, "end":I
    :goto_0
    if-eqz v1, :cond_4

    #@c
    .line 153
    if-ne v2, v0, :cond_1

    #@e
    .line 154
    and-int/lit8 v3, v2, 0x1

    #@10
    shr-int/lit8 v5, p1, 0x6

    #@12
    and-int/lit8 v5, v5, 0x1

    #@14
    if-eq v3, v5, :cond_2

    #@16
    const/4 v1, 0x1

    #@17
    .line 156
    :goto_1
    and-int/lit8 v5, p1, 0x7f

    #@19
    if-eqz v1, :cond_3

    #@1b
    const/16 v3, 0x80

    #@1d
    :goto_2
    or-int/2addr v3, v5

    #@1e
    int-to-byte v3, v3

    #@1f
    invoke-interface {p0, v3}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    #@22
    .line 157
    move p1, v2

    #@23
    .line 158
    shr-int/lit8 v2, v2, 0x7

    #@25
    goto :goto_0

    #@26
    .line 150
    .end local v0    # "end":I
    :cond_0
    const/4 v0, -0x1

    #@27
    .restart local v0    # "end":I
    goto :goto_0

    #@28
    .line 153
    :cond_1
    const/4 v1, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 154
    :cond_2
    const/4 v1, 0x0

    #@2b
    goto :goto_1

    #@2c
    :cond_3
    move v3, v4

    #@2d
    .line 156
    goto :goto_2

    #@2e
    .line 147
    :cond_4
    return-void
.end method

.method public static writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    .locals 2
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "value"    # I

    #@0
    .prologue
    .line 132
    ushr-int/lit8 v0, p1, 0x7

    #@2
    .line 134
    .local v0, "remaining":I
    :goto_0
    if-eqz v0, :cond_0

    #@4
    .line 135
    and-int/lit8 v1, p1, 0x7f

    #@6
    or-int/lit16 v1, v1, 0x80

    #@8
    int-to-byte v1, v1

    #@9
    invoke-interface {p0, v1}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    #@c
    .line 136
    move p1, v0

    #@d
    .line 137
    ushr-int/lit8 v0, v0, 0x7

    #@f
    goto :goto_0

    #@10
    .line 140
    :cond_0
    and-int/lit8 v1, p1, 0x7f

    #@12
    int-to-byte v1, v1

    #@13
    invoke-interface {p0, v1}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    #@16
    .line 131
    return-void
.end method
