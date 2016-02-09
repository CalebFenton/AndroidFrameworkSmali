.class Ljava/math/BitLevel;
.super Ljava/lang/Object;
.source "BitLevel.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static bitCount(Ljava/math/BigInteger;)I
    .locals 4
    .param p0, "val"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 63
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@4
    .line 64
    const/4 v0, 0x0

    #@5
    .line 66
    .local v0, "bCount":I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    #@7
    if-nez v2, :cond_0

    #@9
    .line 67
    return v3

    #@a
    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@d
    move-result v1

    #@e
    .line 71
    .local v1, "i":I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    #@10
    if-lez v2, :cond_1

    #@12
    .line 72
    :goto_0
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@14
    if-ge v1, v2, :cond_3

    #@16
    .line 73
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@18
    aget v2, v2, v1

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    #@1d
    move-result v2

    #@1e
    add-int/2addr v0, v2

    #@1f
    .line 72
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 77
    :cond_1
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@24
    aget v2, v2, v1

    #@26
    neg-int v2, v2

    #@27
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    #@2a
    move-result v2

    #@2b
    add-int/lit8 v0, v2, 0x0

    #@2d
    .line 78
    add-int/lit8 v1, v1, 0x1

    #@2f
    :goto_1
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@31
    if-ge v1, v2, :cond_2

    #@33
    .line 79
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@35
    aget v2, v2, v1

    #@37
    not-int v2, v2

    #@38
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    #@3b
    move-result v2

    #@3c
    add-int/2addr v0, v2

    #@3d
    .line 78
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 82
    :cond_2
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@42
    shl-int/lit8 v2, v2, 0x5

    #@44
    sub-int v0, v2, v0

    #@46
    .line 84
    :cond_3
    return v0
.end method

.method static bitLength(Ljava/math/BigInteger;)I
    .locals 5
    .param p0, "val"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 42
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@4
    .line 43
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    #@6
    if-nez v3, :cond_0

    #@8
    .line 44
    return v4

    #@9
    .line 46
    :cond_0
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    #@b
    shl-int/lit8 v0, v3, 0x5

    #@d
    .line 47
    .local v0, "bLength":I
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    #@f
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    #@11
    add-int/lit8 v4, v4, -0x1

    #@13
    aget v1, v3, v4

    #@15
    .line 49
    .local v1, "highDigit":I
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    #@17
    if-gez v3, :cond_1

    #@19
    .line 50
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@1c
    move-result v2

    #@1d
    .line 52
    .local v2, "i":I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    #@1f
    add-int/lit8 v3, v3, -0x1

    #@21
    if-ne v2, v3, :cond_1

    #@23
    .line 53
    add-int/lit8 v1, v1, -0x1

    #@25
    .line 57
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@28
    move-result v3

    #@29
    sub-int/2addr v0, v3

    #@2a
    .line 58
    return v0
.end method

.method static flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 12
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 214
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@5
    .line 215
    iget v8, p0, Ljava/math/BigInteger;->sign:I

    #@7
    if-nez v8, :cond_1

    #@9
    const/4 v7, 0x1

    #@a
    .line 216
    .local v7, "resSign":I
    :goto_0
    shr-int/lit8 v4, p1, 0x5

    #@c
    .line 217
    .local v4, "intCount":I
    and-int/lit8 v0, p1, 0x1f

    #@e
    .line 218
    .local v0, "bitN":I
    add-int/lit8 v8, v4, 0x1

    #@10
    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    #@12
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v8

    #@16
    add-int/lit8 v6, v8, 0x1

    #@18
    .line 219
    .local v6, "resLength":I
    new-array v5, v6, [I

    #@1a
    .line 222
    .local v5, "resDigits":[I
    const/4 v8, 0x1

    #@1b
    shl-int v1, v8, v0

    #@1d
    .line 223
    .local v1, "bitNumber":I
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    #@1f
    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    #@21
    invoke-static {v8, v10, v5, v10, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@24
    .line 225
    iget v8, p0, Ljava/math/BigInteger;->sign:I

    #@26
    if-gez v8, :cond_7

    #@28
    .line 226
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    #@2a
    if-lt v4, v8, :cond_2

    #@2c
    .line 227
    aput v1, v5, v4

    #@2e
    .line 253
    :cond_0
    :goto_1
    new-instance v8, Ljava/math/BigInteger;

    #@30
    invoke-direct {v8, v7, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    #@33
    return-object v8

    #@34
    .line 215
    .end local v0    # "bitN":I
    .end local v1    # "bitNumber":I
    .end local v4    # "intCount":I
    .end local v5    # "resDigits":[I
    .end local v6    # "resLength":I
    .end local v7    # "resSign":I
    :cond_1
    iget v7, p0, Ljava/math/BigInteger;->sign:I

    #@36
    .restart local v7    # "resSign":I
    goto :goto_0

    #@37
    .line 230
    .restart local v0    # "bitN":I
    .restart local v1    # "bitNumber":I
    .restart local v4    # "intCount":I
    .restart local v5    # "resDigits":[I
    .restart local v6    # "resLength":I
    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@3a
    move-result v2

    #@3b
    .line 231
    .local v2, "firstNonZeroDigit":I
    if-le v4, v2, :cond_3

    #@3d
    .line 232
    aget v8, v5, v4

    #@3f
    xor-int/2addr v8, v1

    #@40
    aput v8, v5, v4

    #@42
    goto :goto_1

    #@43
    .line 233
    :cond_3
    if-ge v4, v2, :cond_5

    #@45
    .line 234
    neg-int v8, v1

    #@46
    aput v8, v5, v4

    #@48
    .line 235
    add-int/lit8 v3, v4, 0x1

    #@4a
    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    #@4c
    .line 236
    aput v11, v5, v3

    #@4e
    .line 235
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_2

    #@51
    .line 238
    :cond_4
    aget v8, v5, v3

    #@53
    add-int/lit8 v9, v8, -0x1

    #@55
    aput v9, v5, v3

    #@57
    aput v8, v5, v3

    #@59
    goto :goto_1

    #@5a
    .line 240
    .end local v3    # "i":I
    :cond_5
    move v3, v4

    #@5b
    .line 241
    .restart local v3    # "i":I
    aget v8, v5, v4

    #@5d
    neg-int v8, v8

    #@5e
    xor-int/2addr v8, v1

    #@5f
    neg-int v8, v8

    #@60
    aput v8, v5, v3

    #@62
    .line 242
    aget v8, v5, v3

    #@64
    if-nez v8, :cond_0

    #@66
    .line 243
    add-int/lit8 v3, v3, 0x1

    #@68
    :goto_3
    aget v8, v5, v3

    #@6a
    if-ne v8, v11, :cond_6

    #@6c
    .line 244
    aput v10, v5, v3

    #@6e
    .line 243
    add-int/lit8 v3, v3, 0x1

    #@70
    goto :goto_3

    #@71
    .line 246
    :cond_6
    aget v8, v5, v3

    #@73
    add-int/lit8 v8, v8, 0x1

    #@75
    aput v8, v5, v3

    #@77
    goto :goto_1

    #@78
    .line 251
    .end local v2    # "firstNonZeroDigit":I
    .end local v3    # "i":I
    :cond_7
    aget v8, v5, v4

    #@7a
    xor-int/2addr v8, v1

    #@7b
    aput v8, v5, v4

    #@7d
    goto :goto_1
.end method

.method static nonZeroDroppedBits(I[I)Z
    .locals 7
    .param p0, "numberOfBits"    # I
    .param p1, "digits"    # [I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 104
    shr-int/lit8 v2, p0, 0x5

    #@4
    .line 105
    .local v2, "intCount":I
    and-int/lit8 v0, p0, 0x1f

    #@6
    .line 108
    .local v0, "bitCount":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    aget v5, p1, v1

    #@b
    if-nez v5, :cond_0

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 111
    :cond_0
    if-ne v1, v2, :cond_1

    #@12
    aget v5, p1, v1

    #@14
    rsub-int/lit8 v6, v0, 0x20

    #@16
    shl-int/2addr v5, v6

    #@17
    if-eqz v5, :cond_2

    #@19
    :cond_1
    :goto_1
    return v3

    #@1a
    :cond_2
    move v3, v4

    #@1b
    goto :goto_1
.end method

.method static shiftLeftOneBit(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "source"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 128
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@5
    .line 129
    .local v2, "srcLen":I
    add-int/lit8 v1, v2, 0x1

    #@7
    .line 130
    .local v1, "resLen":I
    new-array v0, v1, [I

    #@9
    .line 131
    .local v0, "resDigits":[I
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    #@b
    invoke-static {v0, v3, v2}, Ljava/math/BitLevel;->shiftLeftOneBit([I[II)V

    #@e
    .line 132
    new-instance v3, Ljava/math/BigInteger;

    #@10
    iget v4, p0, Ljava/math/BigInteger;->sign:I

    #@12
    invoke-direct {v3, v4, v1, v0}, Ljava/math/BigInteger;-><init>(II[I)V

    #@15
    return-object v3
.end method

.method static shiftLeftOneBit([I[II)V
    .locals 4
    .param p0, "result"    # [I
    .param p1, "source"    # [I
    .param p2, "srcLen"    # I

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    .line 116
    .local v0, "carry":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@4
    .line 117
    aget v2, p1, v1

    #@6
    .line 118
    .local v2, "val":I
    shl-int/lit8 v3, v2, 0x1

    #@8
    or-int/2addr v3, v0

    #@9
    aput v3, p0, v1

    #@b
    .line 119
    ushr-int/lit8 v0, v2, 0x1f

    #@d
    .line 116
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 121
    .end local v2    # "val":I
    :cond_0
    if-eqz v0, :cond_1

    #@12
    .line 122
    aput v0, p0, p2

    #@14
    .line 114
    :cond_1
    return-void
.end method

.method static shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 7
    .param p0, "source"    # Ljava/math/BigInteger;
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 137
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@4
    .line 138
    shr-int/lit8 v1, p1, 0x5

    #@6
    .line 139
    .local v1, "intCount":I
    and-int/lit8 p1, p1, 0x1f

    #@8
    .line 140
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    #@a
    if-lt v1, v4, :cond_1

    #@c
    .line 141
    iget v4, p0, Ljava/math/BigInteger;->sign:I

    #@e
    if-gez v4, :cond_0

    #@10
    sget-object v4, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@12
    :goto_0
    return-object v4

    #@13
    :cond_0
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@15
    goto :goto_0

    #@16
    .line 144
    :cond_1
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    #@18
    sub-int v3, v4, v1

    #@1a
    .line 145
    .local v3, "resLength":I
    add-int/lit8 v4, v3, 0x1

    #@1c
    new-array v2, v4, [I

    #@1e
    .line 147
    .local v2, "resDigits":[I
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    #@20
    invoke-static {v2, v3, v4, v1, p1}, Ljava/math/BitLevel;->shiftRight([II[III)Z

    #@23
    .line 148
    iget v4, p0, Ljava/math/BigInteger;->sign:I

    #@25
    if-gez v4, :cond_6

    #@27
    .line 151
    const/4 v0, 0x0

    #@28
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    #@2a
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    #@2c
    aget v4, v4, v0

    #@2e
    if-nez v4, :cond_2

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 155
    :cond_2
    if-lt v0, v1, :cond_3

    #@35
    .line 156
    if-lez p1, :cond_6

    #@37
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    #@39
    aget v4, v4, v0

    #@3b
    rsub-int/lit8 v5, p1, 0x20

    #@3d
    shl-int/2addr v4, v5

    #@3e
    if-eqz v4, :cond_6

    #@40
    .line 157
    :cond_3
    const/4 v0, 0x0

    #@41
    :goto_2
    if-ge v0, v3, :cond_4

    #@43
    aget v4, v2, v0

    #@45
    const/4 v5, -0x1

    #@46
    if-ne v4, v5, :cond_4

    #@48
    .line 158
    aput v6, v2, v0

    #@4a
    .line 157
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_2

    #@4d
    .line 160
    :cond_4
    if-ne v0, v3, :cond_5

    #@4f
    .line 161
    add-int/lit8 v3, v3, 0x1

    #@51
    .line 163
    :cond_5
    aget v4, v2, v0

    #@53
    add-int/lit8 v4, v4, 0x1

    #@55
    aput v4, v2, v0

    #@57
    .line 166
    .end local v0    # "i":I
    :cond_6
    new-instance v4, Ljava/math/BigInteger;

    #@59
    iget v5, p0, Ljava/math/BigInteger;->sign:I

    #@5b
    invoke-direct {v4, v5, v3, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    #@5e
    return-object v4
.end method

.method static shiftRight([II[III)Z
    .locals 6
    .param p0, "result"    # [I
    .param p1, "resultLen"    # I
    .param p2, "source"    # [I
    .param p3, "intCount"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 187
    const/4 v0, 0x1

    #@3
    .line 188
    .local v0, "allZero":Z
    const/4 v1, 0x0

    #@4
    .end local v0    # "allZero":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    #@6
    .line 189
    aget v3, p2, v1

    #@8
    if-nez v3, :cond_0

    #@a
    move v3, v4

    #@b
    :goto_1
    and-int/2addr v0, v3

    #@c
    .line 188
    .local v0, "allZero":Z
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .end local v0    # "allZero":Z
    :cond_0
    move v3, v5

    #@10
    .line 189
    goto :goto_1

    #@11
    .line 190
    :cond_1
    if-nez p4, :cond_2

    #@13
    .line 191
    invoke-static {p2, p3, p0, v5, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@16
    .line 192
    move v1, p1

    #@17
    .line 205
    :goto_2
    return v0

    #@18
    .line 194
    :cond_2
    rsub-int/lit8 v2, p4, 0x20

    #@1a
    .line 196
    .local v2, "leftShiftCount":I
    aget v3, p2, v1

    #@1c
    shl-int/2addr v3, v2

    #@1d
    if-nez v3, :cond_3

    #@1f
    :goto_3
    and-int/2addr v0, v4

    #@20
    .line 197
    .restart local v0    # "allZero":Z
    const/4 v1, 0x0

    #@21
    :goto_4
    add-int/lit8 v3, p1, -0x1

    #@23
    if-ge v1, v3, :cond_4

    #@25
    .line 198
    add-int v3, v1, p3

    #@27
    aget v3, p2, v3

    #@29
    ushr-int/2addr v3, p4

    #@2a
    .line 199
    add-int v4, v1, p3

    #@2c
    add-int/lit8 v4, v4, 0x1

    #@2e
    aget v4, p2, v4

    #@30
    shl-int/2addr v4, v2

    #@31
    .line 198
    or-int/2addr v3, v4

    #@32
    aput v3, p0, v1

    #@34
    .line 197
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_4

    #@37
    .end local v0    # "allZero":Z
    :cond_3
    move v4, v5

    #@38
    .line 196
    goto :goto_3

    #@39
    .line 201
    .restart local v0    # "allZero":Z
    :cond_4
    add-int v3, v1, p3

    #@3b
    aget v3, p2, v3

    #@3d
    ushr-int/2addr v3, p4

    #@3e
    aput v3, p0, v1

    #@40
    .line 202
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_2
.end method

.method static testBit(Ljava/math/BigInteger;I)Z
    .locals 4
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 92
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@5
    .line 94
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@7
    shr-int/lit8 v3, p1, 0x5

    #@9
    aget v2, v2, v3

    #@b
    and-int/lit8 v3, p1, 0x1f

    #@d
    shl-int v3, v0, v3

    #@f
    and-int/2addr v2, v3

    #@10
    if-eqz v2, :cond_0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    move v0, v1

    #@14
    goto :goto_0
.end method
