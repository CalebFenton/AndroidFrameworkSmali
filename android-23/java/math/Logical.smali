.class Ljava/math/Logical;
.super Ljava/lang/Object;
.source "Logical.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 83
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@6
    if-nez v0, :cond_1

    #@8
    .line 84
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@a
    return-object v0

    #@b
    .line 86
    :cond_1
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@d
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 87
    return-object p0

    #@14
    .line 89
    :cond_2
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@16
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 90
    return-object p1

    #@1d
    .line 93
    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@1f
    if-lez v0, :cond_5

    #@21
    .line 94
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@23
    if-lez v0, :cond_4

    #@25
    .line 95
    invoke-static {p0, p1}, Ljava/math/Logical;->andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 97
    :cond_4
    invoke-static {p0, p1}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 100
    :cond_5
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@31
    if-lez v0, :cond_6

    #@33
    .line 101
    invoke-static {p1, p0}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    .line 102
    :cond_6
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    #@3a
    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    #@3c
    if-le v0, v1, :cond_7

    #@3e
    .line 103
    invoke-static {p0, p1}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@41
    move-result-object v0

    #@42
    return-object v0

    #@43
    .line 105
    :cond_7
    invoke-static {p1, p0}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method

.method static andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@3
    move-result v2

    #@4
    .line 132
    .local v2, "iPos":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@7
    move-result v1

    #@8
    .line 136
    .local v1, "iNeg":I
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@a
    if-lt v1, v6, :cond_0

    #@c
    .line 137
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@e
    return-object v6

    #@f
    .line 139
    :cond_0
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    #@11
    .line 140
    .local v5, "resLength":I
    new-array v4, v5, [I

    #@13
    .line 143
    .local v4, "resDigits":[I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v0

    #@17
    .line 144
    .local v0, "i":I
    if-ne v0, v1, :cond_1

    #@19
    .line 145
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@1b
    aget v6, v6, v0

    #@1d
    neg-int v6, v6

    #@1e
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@20
    aget v7, v7, v0

    #@22
    and-int/2addr v6, v7

    #@23
    aput v6, v4, v0

    #@25
    .line 146
    add-int/lit8 v0, v0, 0x1

    #@27
    .line 148
    :cond_1
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@29
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@2b
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v3

    #@2f
    .line 149
    .local v3, "limit":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@31
    .line 150
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@33
    aget v6, v6, v0

    #@35
    not-int v6, v6

    #@36
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@38
    aget v7, v7, v0

    #@3a
    and-int/2addr v6, v7

    #@3b
    aput v6, v4, v0

    #@3d
    .line 149
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 154
    :cond_2
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@42
    if-lt v0, v6, :cond_3

    #@44
    .line 155
    :goto_1
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@46
    if-ge v0, v6, :cond_3

    #@48
    .line 156
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@4a
    aget v6, v6, v0

    #@4c
    aput v6, v4, v0

    #@4e
    .line 155
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_1

    #@51
    .line 160
    :cond_3
    new-instance v6, Ljava/math/BigInteger;

    #@53
    const/4 v7, 0x1

    #@54
    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    #@57
    return-object v6
.end method

.method static andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 9
    .param p0, "longer"    # Ljava/math/BigInteger;
    .param p1, "shorter"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 167
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@4
    move-result v2

    #@5
    .line 168
    .local v2, "iLonger":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@8
    move-result v3

    #@9
    .line 171
    .local v3, "iShorter":I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@b
    if-lt v2, v6, :cond_0

    #@d
    .line 172
    return-object p0

    #@e
    .line 177
    :cond_0
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v1

    #@12
    .line 179
    .local v1, "i":I
    if-le v3, v2, :cond_1

    #@14
    .line 180
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@16
    aget v6, v6, v1

    #@18
    neg-int v6, v6

    #@19
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@1b
    aget v7, v7, v1

    #@1d
    not-int v7, v7

    #@1e
    and-int v0, v6, v7

    #@20
    .line 186
    .local v0, "digit":I
    :goto_0
    if-nez v0, :cond_5

    #@22
    .line 187
    add-int/lit8 v1, v1, 0x1

    #@24
    :goto_1
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@26
    if-ge v1, v6, :cond_3

    #@28
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@2a
    aget v6, v6, v1

    #@2c
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@2e
    aget v7, v7, v1

    #@30
    or-int/2addr v6, v7

    #@31
    not-int v0, v6

    #@32
    if-nez v0, :cond_3

    #@34
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_1

    #@37
    .line 181
    .end local v0    # "digit":I
    :cond_1
    if-ge v3, v2, :cond_2

    #@39
    .line 182
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@3b
    aget v6, v6, v1

    #@3d
    not-int v6, v6

    #@3e
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@40
    aget v7, v7, v1

    #@42
    neg-int v7, v7

    #@43
    and-int v0, v6, v7

    #@45
    .restart local v0    # "digit":I
    goto :goto_0

    #@46
    .line 184
    .end local v0    # "digit":I
    :cond_2
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@48
    aget v6, v6, v1

    #@4a
    neg-int v6, v6

    #@4b
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@4d
    aget v7, v7, v1

    #@4f
    neg-int v7, v7

    #@50
    and-int v0, v6, v7

    #@52
    .restart local v0    # "digit":I
    goto :goto_0

    #@53
    .line 189
    :cond_3
    if-nez v0, :cond_5

    #@55
    .line 191
    :goto_2
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@57
    if-ge v1, v6, :cond_4

    #@59
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@5b
    aget v6, v6, v1

    #@5d
    not-int v0, v6

    #@5e
    if-nez v0, :cond_4

    #@60
    add-int/lit8 v1, v1, 0x1

    #@62
    goto :goto_2

    #@63
    .line 193
    :cond_4
    if-nez v0, :cond_5

    #@65
    .line 194
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@67
    add-int/lit8 v5, v6, 0x1

    #@69
    .line 195
    .local v5, "resLength":I
    new-array v4, v5, [I

    #@6b
    .line 196
    .local v4, "resDigits":[I
    add-int/lit8 v6, v5, -0x1

    #@6d
    const/4 v7, 0x1

    #@6e
    aput v7, v4, v6

    #@70
    .line 198
    new-instance v6, Ljava/math/BigInteger;

    #@72
    invoke-direct {v6, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    #@75
    return-object v6

    #@76
    .line 202
    .end local v4    # "resDigits":[I
    .end local v5    # "resLength":I
    :cond_5
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    #@78
    .line 203
    .restart local v5    # "resLength":I
    new-array v4, v5, [I

    #@7a
    .line 204
    .restart local v4    # "resDigits":[I
    neg-int v6, v0

    #@7b
    aput v6, v4, v1

    #@7d
    .line 205
    add-int/lit8 v1, v1, 0x1

    #@7f
    :goto_3
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@81
    if-ge v1, v6, :cond_6

    #@83
    .line 207
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@85
    aget v6, v6, v1

    #@87
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@89
    aget v7, v7, v1

    #@8b
    or-int/2addr v6, v7

    #@8c
    aput v6, v4, v1

    #@8e
    .line 205
    add-int/lit8 v1, v1, 0x1

    #@90
    goto :goto_3

    #@91
    .line 210
    :cond_6
    :goto_4
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@93
    if-ge v1, v6, :cond_7

    #@95
    .line 211
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@97
    aget v6, v6, v1

    #@99
    aput v6, v4, v1

    #@9b
    .line 210
    add-int/lit8 v1, v1, 0x1

    #@9d
    goto :goto_4

    #@9e
    .line 214
    :cond_7
    new-instance v6, Ljava/math/BigInteger;

    #@a0
    invoke-direct {v6, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    #@a3
    return-object v6
.end method

.method static andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 219
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 220
    return-object p0

    #@5
    .line 222
    :cond_0
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@7
    if-nez v0, :cond_1

    #@9
    .line 223
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@b
    return-object v0

    #@c
    .line 225
    :cond_1
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@e
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 226
    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 228
    :cond_2
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@1b
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 229
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@23
    return-object v0

    #@24
    .line 234
    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@26
    if-lez v0, :cond_5

    #@28
    .line 235
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@2a
    if-lez v0, :cond_4

    #@2c
    .line 236
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2f
    move-result-object v0

    #@30
    return-object v0

    #@31
    .line 238
    :cond_4
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@34
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 241
    :cond_5
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@38
    if-lez v0, :cond_6

    #@3a
    .line 242
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3d
    move-result-object v0

    #@3e
    return-object v0

    #@3f
    .line 244
    :cond_6
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method

.method static andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 373
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@3
    move-result v2

    #@4
    .line 374
    .local v2, "iVal":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@7
    move-result v1

    #@8
    .line 376
    .local v1, "iThat":I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@a
    if-lt v2, v6, :cond_0

    #@c
    .line 377
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@e
    return-object v6

    #@f
    .line 380
    :cond_0
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    #@11
    .line 381
    .local v5, "resLength":I
    new-array v4, v5, [I

    #@13
    .line 383
    .local v4, "resDigits":[I
    move v0, v2

    #@14
    .line 384
    .local v0, "i":I
    if-ge v2, v1, :cond_4

    #@16
    .line 386
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@18
    aget v6, v6, v0

    #@1a
    neg-int v6, v6

    #@1b
    aput v6, v4, v0

    #@1d
    .line 387
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@1f
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    #@22
    move-result v3

    #@23
    .line 388
    .local v3, "limit":I
    add-int/lit8 v0, v0, 0x1

    #@25
    :goto_0
    if-ge v0, v3, :cond_1

    #@27
    .line 390
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@29
    aget v6, v6, v0

    #@2b
    not-int v6, v6

    #@2c
    aput v6, v4, v0

    #@2e
    .line 388
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 392
    :cond_1
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@33
    if-ne v0, v6, :cond_3

    #@35
    .line 393
    :goto_1
    if-ge v0, v1, :cond_2

    #@37
    .line 395
    const/4 v6, -0x1

    #@38
    aput v6, v4, v0

    #@3a
    .line 393
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 398
    :cond_2
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@3f
    aget v6, v6, v0

    #@41
    add-int/lit8 v6, v6, -0x1

    #@43
    aput v6, v4, v0

    #@45
    .line 411
    .end local v3    # "limit":I
    :goto_2
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@47
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@49
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@4c
    move-result v3

    #@4d
    .line 412
    .restart local v3    # "limit":I
    add-int/lit8 v0, v0, 0x1

    #@4f
    :goto_3
    if-ge v0, v3, :cond_6

    #@51
    .line 414
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@53
    aget v6, v6, v0

    #@55
    not-int v6, v6

    #@56
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@58
    aget v7, v7, v0

    #@5a
    and-int/2addr v6, v7

    #@5b
    aput v6, v4, v0

    #@5d
    .line 412
    add-int/lit8 v0, v0, 0x1

    #@5f
    goto :goto_3

    #@60
    .line 401
    :cond_3
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@62
    aget v6, v6, v0

    #@64
    not-int v6, v6

    #@65
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@67
    aget v7, v7, v0

    #@69
    add-int/lit8 v7, v7, -0x1

    #@6b
    and-int/2addr v6, v7

    #@6c
    aput v6, v4, v0

    #@6e
    goto :goto_2

    #@6f
    .line 403
    .end local v3    # "limit":I
    :cond_4
    if-ge v1, v2, :cond_5

    #@71
    .line 405
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@73
    aget v6, v6, v0

    #@75
    neg-int v6, v6

    #@76
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@78
    aget v7, v7, v0

    #@7a
    and-int/2addr v6, v7

    #@7b
    aput v6, v4, v0

    #@7d
    goto :goto_2

    #@7e
    .line 408
    :cond_5
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@80
    aget v6, v6, v0

    #@82
    neg-int v6, v6

    #@83
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@85
    aget v7, v7, v0

    #@87
    add-int/lit8 v7, v7, -0x1

    #@89
    and-int/2addr v6, v7

    #@8a
    aput v6, v4, v0

    #@8c
    goto :goto_2

    #@8d
    .line 416
    .restart local v3    # "limit":I
    :cond_6
    :goto_4
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@8f
    if-ge v0, v6, :cond_7

    #@91
    .line 418
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@93
    aget v6, v6, v0

    #@95
    aput v6, v4, v0

    #@97
    .line 416
    add-int/lit8 v0, v0, 0x1

    #@99
    goto :goto_4

    #@9a
    .line 421
    :cond_7
    new-instance v6, Ljava/math/BigInteger;

    #@9c
    const/4 v7, 0x1

    #@9d
    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    #@a0
    return-object v6
.end method

.method static andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 10
    .param p0, "negative"    # Ljava/math/BigInteger;
    .param p1, "positive"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    .line 305
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@4
    move-result v2

    #@5
    .line 306
    .local v2, "iNeg":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@8
    move-result v3

    #@9
    .line 308
    .local v3, "iPos":I
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@b
    if-lt v2, v7, :cond_0

    #@d
    .line 309
    return-object p0

    #@e
    .line 312
    :cond_0
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@10
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    #@12
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v6

    #@16
    .line 313
    .local v6, "resLength":I
    move v1, v2

    #@17
    .line 314
    .local v1, "i":I
    if-le v3, v2, :cond_2

    #@19
    .line 315
    new-array v5, v6, [I

    #@1b
    .line 316
    .local v5, "resDigits":[I
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@1d
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    #@20
    move-result v4

    #@21
    .line 317
    .local v4, "limit":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@23
    .line 320
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@25
    aget v7, v7, v1

    #@27
    aput v7, v5, v1

    #@29
    .line 317
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 322
    :cond_1
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@2e
    if-ne v1, v7, :cond_7

    #@30
    .line 323
    move v1, v3

    #@31
    :goto_1
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@33
    if-ge v1, v7, :cond_7

    #@35
    .line 325
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@37
    aget v7, v7, v1

    #@39
    aput v7, v5, v1

    #@3b
    .line 323
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 329
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_2
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@40
    aget v7, v7, v1

    #@42
    neg-int v7, v7

    #@43
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    #@45
    aget v8, v8, v1

    #@47
    not-int v8, v8

    #@48
    and-int v0, v7, v8

    #@4a
    .line 330
    .local v0, "digit":I
    if-nez v0, :cond_6

    #@4c
    .line 331
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@4e
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    #@50
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@53
    move-result v4

    #@54
    .line 332
    .restart local v4    # "limit":I
    add-int/lit8 v1, v1, 0x1

    #@56
    :goto_2
    if-ge v1, v4, :cond_3

    #@58
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@5a
    aget v7, v7, v1

    #@5c
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    #@5e
    aget v8, v8, v1

    #@60
    or-int/2addr v7, v8

    #@61
    not-int v0, v7

    #@62
    if-nez v0, :cond_3

    #@64
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_2

    #@67
    .line 334
    :cond_3
    if-nez v0, :cond_6

    #@69
    .line 336
    :goto_3
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@6b
    if-ge v1, v7, :cond_4

    #@6d
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@6f
    aget v7, v7, v1

    #@71
    not-int v0, v7

    #@72
    if-nez v0, :cond_4

    #@74
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_3

    #@77
    .line 338
    :cond_4
    :goto_4
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@79
    if-ge v1, v7, :cond_5

    #@7b
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@7d
    aget v7, v7, v1

    #@7f
    not-int v0, v7

    #@80
    if-nez v0, :cond_5

    #@82
    add-int/lit8 v1, v1, 0x1

    #@84
    goto :goto_4

    #@85
    .line 340
    :cond_5
    if-nez v0, :cond_6

    #@87
    .line 341
    add-int/lit8 v6, v6, 0x1

    #@89
    .line 342
    new-array v5, v6, [I

    #@8b
    .line 343
    .restart local v5    # "resDigits":[I
    add-int/lit8 v7, v6, -0x1

    #@8d
    const/4 v8, 0x1

    #@8e
    aput v8, v5, v7

    #@90
    .line 345
    new-instance v7, Ljava/math/BigInteger;

    #@92
    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    #@95
    return-object v7

    #@96
    .line 349
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_6
    new-array v5, v6, [I

    #@98
    .line 350
    .restart local v5    # "resDigits":[I
    neg-int v7, v0

    #@99
    aput v7, v5, v1

    #@9b
    .line 351
    add-int/lit8 v1, v1, 0x1

    #@9d
    .line 354
    .end local v0    # "digit":I
    :cond_7
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@9f
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    #@a1
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@a4
    move-result v4

    #@a5
    .line 355
    .restart local v4    # "limit":I
    :goto_5
    if-ge v1, v4, :cond_8

    #@a7
    .line 357
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@a9
    aget v7, v7, v1

    #@ab
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    #@ad
    aget v8, v8, v1

    #@af
    or-int/2addr v7, v8

    #@b0
    aput v7, v5, v1

    #@b2
    .line 355
    add-int/lit8 v1, v1, 0x1

    #@b4
    goto :goto_5

    #@b5
    .line 360
    :cond_8
    :goto_6
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@b7
    if-ge v1, v7, :cond_9

    #@b9
    .line 361
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@bb
    aget v7, v7, v1

    #@bd
    aput v7, v5, v1

    #@bf
    .line 360
    add-int/lit8 v1, v1, 0x1

    #@c1
    goto :goto_6

    #@c2
    .line 363
    :cond_9
    :goto_7
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@c4
    if-ge v1, v7, :cond_a

    #@c6
    .line 364
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@c8
    aget v7, v7, v1

    #@ca
    aput v7, v5, v1

    #@cc
    .line 363
    add-int/lit8 v1, v1, 0x1

    #@ce
    goto :goto_7

    #@cf
    .line 367
    :cond_a
    new-instance v7, Ljava/math/BigInteger;

    #@d1
    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    #@d4
    return-object v7
.end method

.method static andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 252
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    #@2
    new-array v2, v3, [I

    #@4
    .line 254
    .local v2, "resDigits":[I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    #@6
    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    #@8
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v1

    #@c
    .line 256
    .local v1, "limit":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@f
    move-result v0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@12
    .line 257
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    #@14
    aget v3, v3, v0

    #@16
    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    #@18
    aget v4, v4, v0

    #@1a
    not-int v4, v4

    #@1b
    and-int/2addr v3, v4

    #@1c
    aput v3, v2, v0

    #@1e
    .line 256
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 259
    :cond_0
    :goto_1
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    #@23
    if-ge v0, v3, :cond_1

    #@25
    .line 260
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    #@27
    aget v3, v3, v0

    #@29
    aput v3, v2, v0

    #@2b
    .line 259
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 263
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    #@30
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    #@32
    const/4 v5, 0x1

    #@33
    invoke-direct {v3, v5, v4, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    #@36
    return-object v3
.end method

.method static andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@3
    move-result v1

    #@4
    .line 270
    .local v1, "iNeg":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@7
    move-result v2

    #@8
    .line 272
    .local v2, "iPos":I
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    #@a
    if-lt v1, v5, :cond_0

    #@c
    .line 273
    return-object p0

    #@d
    .line 276
    :cond_0
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    #@f
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@11
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v4

    #@15
    .line 277
    .local v4, "resLength":I
    new-array v3, v4, [I

    #@17
    .line 280
    .local v3, "resDigits":[I
    move v0, v2

    #@18
    .line 281
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@1a
    .line 283
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    #@1c
    aget v5, v5, v0

    #@1e
    aput v5, v3, v0

    #@20
    .line 281
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 285
    :cond_1
    if-ne v0, v1, :cond_2

    #@25
    .line 286
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    #@27
    aget v5, v5, v0

    #@29
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@2b
    aget v6, v6, v0

    #@2d
    add-int/lit8 v6, v6, -0x1

    #@2f
    and-int/2addr v5, v6

    #@30
    aput v5, v3, v0

    #@32
    .line 287
    add-int/lit8 v0, v0, 0x1

    #@34
    .line 289
    :cond_2
    :goto_1
    if-ge v0, v4, :cond_3

    #@36
    .line 291
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    #@38
    aget v5, v5, v0

    #@3a
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@3c
    aget v6, v6, v0

    #@3e
    and-int/2addr v5, v6

    #@3f
    aput v5, v3, v0

    #@41
    .line 289
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_1

    #@44
    .line 294
    :cond_3
    new-instance v5, Ljava/math/BigInteger;

    #@46
    const/4 v6, 0x1

    #@47
    invoke-direct {v5, v6, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    #@4a
    return-object v5
.end method

.method static andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 113
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    #@2
    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    #@4
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v2

    #@8
    .line 114
    .local v2, "resLength":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@b
    move-result v3

    #@c
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@f
    move-result v4

    #@10
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v0

    #@14
    .line 116
    .local v0, "i":I
    if-lt v0, v2, :cond_0

    #@16
    .line 117
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@18
    return-object v3

    #@19
    .line 120
    :cond_0
    new-array v1, v2, [I

    #@1b
    .line 121
    .local v1, "resDigits":[I
    :goto_0
    if-ge v0, v2, :cond_1

    #@1d
    .line 122
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    #@1f
    aget v3, v3, v0

    #@21
    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    #@23
    aget v4, v4, v0

    #@25
    and-int/2addr v3, v4

    #@26
    aput v3, v1, v0

    #@28
    .line 121
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 125
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    #@2d
    const/4 v4, 0x1

    #@2e
    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    #@31
    return-object v3
.end method

.method static not(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "val"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 40
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 41
    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@7
    return-object v2

    #@8
    .line 43
    :cond_0
    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@a
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 44
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@12
    return-object v2

    #@13
    .line 46
    :cond_1
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    new-array v1, v2, [I

    #@19
    .line 49
    .local v1, "resDigits":[I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    #@1b
    if-lez v2, :cond_4

    #@1d
    .line 51
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@1f
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    #@21
    add-int/lit8 v3, v3, -0x1

    #@23
    aget v2, v2, v3

    #@25
    if-eq v2, v4, :cond_2

    #@27
    .line 52
    const/4 v0, 0x0

    #@28
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@2a
    aget v2, v2, v0

    #@2c
    if-ne v2, v4, :cond_5

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 56
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    #@32
    .restart local v0    # "i":I
    :goto_1
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@34
    if-ge v0, v2, :cond_3

    #@36
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@38
    aget v2, v2, v0

    #@3a
    if-ne v2, v4, :cond_3

    #@3c
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 59
    :cond_3
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@41
    if-ne v0, v2, :cond_5

    #@43
    .line 60
    const/4 v2, 0x1

    #@44
    aput v2, v1, v0

    #@46
    .line 61
    new-instance v2, Ljava/math/BigInteger;

    #@48
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    #@4a
    neg-int v3, v3

    #@4b
    add-int/lit8 v4, v0, 0x1

    #@4d
    invoke-direct {v2, v3, v4, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    #@50
    return-object v2

    #@51
    .line 67
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@52
    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@54
    aget v2, v2, v0

    #@56
    if-nez v2, :cond_5

    #@58
    .line 68
    aput v4, v1, v0

    #@5a
    .line 67
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_2

    #@5d
    .line 73
    :cond_5
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@5f
    aget v2, v2, v0

    #@61
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    #@63
    add-int/2addr v2, v3

    #@64
    aput v2, v1, v0

    #@66
    .line 75
    add-int/lit8 v0, v0, 0x1

    #@68
    :goto_3
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@6a
    if-ge v0, v2, :cond_6

    #@6c
    .line 76
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@6e
    aget v2, v2, v0

    #@70
    aput v2, v1, v0

    #@72
    .line 75
    add-int/lit8 v0, v0, 0x1

    #@74
    goto :goto_3

    #@75
    .line 78
    :cond_6
    new-instance v2, Ljava/math/BigInteger;

    #@77
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    #@79
    neg-int v3, v3

    #@7a
    invoke-direct {v2, v3, v0, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    #@7d
    return-object v2
.end method

.method static or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 426
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@2
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@a
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 427
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@12
    return-object v0

    #@13
    .line 429
    :cond_1
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@15
    if-nez v0, :cond_2

    #@17
    .line 430
    return-object p0

    #@18
    .line 432
    :cond_2
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@1a
    if-nez v0, :cond_3

    #@1c
    .line 433
    return-object p1

    #@1d
    .line 436
    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@1f
    if-lez v0, :cond_6

    #@21
    .line 437
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@23
    if-lez v0, :cond_5

    #@25
    .line 438
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    #@27
    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    #@29
    if-le v0, v1, :cond_4

    #@2b
    .line 439
    invoke-static {p0, p1}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 441
    :cond_4
    invoke-static {p1, p0}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@33
    move-result-object v0

    #@34
    return-object v0

    #@35
    .line 444
    :cond_5
    invoke-static {p0, p1}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    .line 447
    :cond_6
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@3c
    if-lez v0, :cond_7

    #@3e
    .line 448
    invoke-static {p1, p0}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@41
    move-result-object v0

    #@42
    return-object v0

    #@43
    .line 449
    :cond_7
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@46
    move-result v0

    #@47
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@4a
    move-result v1

    #@4b
    if-le v0, v1, :cond_8

    #@4d
    .line 450
    invoke-static {p1, p0}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@50
    move-result-object v0

    #@51
    return-object v0

    #@52
    .line 452
    :cond_8
    invoke-static {p0, p1}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@55
    move-result-object v0

    #@56
    return-object v0
.end method

.method static orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 9
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 513
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@4
    move-result v1

    #@5
    .line 514
    .local v1, "iNeg":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@8
    move-result v2

    #@9
    .line 520
    .local v2, "iPos":I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@b
    if-lt v2, v6, :cond_0

    #@d
    .line 521
    return-object p1

    #@e
    .line 523
    :cond_0
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    #@10
    .line 524
    .local v5, "resLength":I
    new-array v4, v5, [I

    #@12
    .line 526
    .local v4, "resDigits":[I
    if-ge v1, v2, :cond_1

    #@14
    .line 529
    move v0, v1

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@17
    .line 530
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@19
    aget v6, v6, v0

    #@1b
    aput v6, v4, v0

    #@1d
    .line 529
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 532
    .end local v0    # "i":I
    :cond_1
    if-ge v2, v1, :cond_6

    #@22
    .line 533
    move v0, v2

    #@23
    .line 534
    .restart local v0    # "i":I
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@25
    aget v6, v6, v0

    #@27
    neg-int v6, v6

    #@28
    aput v6, v4, v0

    #@2a
    .line 535
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@2c
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    #@2f
    move-result v3

    #@30
    .line 536
    .local v3, "limit":I
    add-int/lit8 v0, v0, 0x1

    #@32
    :goto_1
    if-ge v0, v3, :cond_2

    #@34
    .line 537
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@36
    aget v6, v6, v0

    #@38
    not-int v6, v6

    #@39
    aput v6, v4, v0

    #@3b
    .line 536
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 539
    :cond_2
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@40
    if-eq v0, v6, :cond_4

    #@42
    .line 540
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@44
    aget v6, v6, v0

    #@46
    neg-int v6, v6

    #@47
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@49
    aget v7, v7, v0

    #@4b
    or-int/2addr v6, v7

    #@4c
    not-int v6, v6

    #@4d
    aput v6, v4, v0

    #@4f
    .line 548
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@51
    .line 555
    .end local v3    # "limit":I
    :cond_3
    :goto_3
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@53
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@55
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@58
    move-result v3

    #@59
    .line 556
    .restart local v3    # "limit":I
    :goto_4
    if-ge v0, v3, :cond_7

    #@5b
    .line 559
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@5d
    aget v6, v6, v0

    #@5f
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@61
    aget v7, v7, v0

    #@63
    not-int v7, v7

    #@64
    and-int/2addr v6, v7

    #@65
    aput v6, v4, v0

    #@67
    .line 556
    add-int/lit8 v0, v0, 0x1

    #@69
    goto :goto_4

    #@6a
    .line 542
    :cond_4
    :goto_5
    if-ge v0, v1, :cond_5

    #@6c
    .line 543
    aput v8, v4, v0

    #@6e
    .line 542
    add-int/lit8 v0, v0, 0x1

    #@70
    goto :goto_5

    #@71
    .line 546
    :cond_5
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@73
    aget v6, v6, v0

    #@75
    add-int/lit8 v6, v6, -0x1

    #@77
    aput v6, v4, v0

    #@79
    goto :goto_2

    #@7a
    .line 551
    .end local v0    # "i":I
    .end local v3    # "limit":I
    :cond_6
    move v0, v2

    #@7b
    .line 552
    .restart local v0    # "i":I
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@7d
    aget v6, v6, v0

    #@7f
    neg-int v6, v6

    #@80
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@82
    aget v7, v7, v0

    #@84
    or-int/2addr v6, v7

    #@85
    neg-int v6, v6

    #@86
    aput v6, v4, v0

    #@88
    .line 553
    add-int/lit8 v0, v0, 0x1

    #@8a
    goto :goto_3

    #@8b
    .line 561
    .restart local v3    # "limit":I
    :cond_7
    :goto_6
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@8d
    if-ge v0, v6, :cond_8

    #@8f
    .line 562
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@91
    aget v6, v6, v0

    #@93
    aput v6, v4, v0

    #@95
    .line 561
    add-int/lit8 v0, v0, 0x1

    #@97
    goto :goto_6

    #@98
    .line 565
    :cond_8
    new-instance v6, Ljava/math/BigInteger;

    #@9a
    invoke-direct {v6, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    #@9d
    return-object v6
.end method

.method static orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 479
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@3
    move-result v1

    #@4
    .line 480
    .local v1, "iThat":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@7
    move-result v2

    #@8
    .line 483
    .local v2, "iVal":I
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    #@a
    if-lt v2, v5, :cond_0

    #@c
    .line 484
    return-object p1

    #@d
    .line 485
    :cond_0
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    #@f
    if-lt v1, v5, :cond_1

    #@11
    .line 486
    return-object p0

    #@12
    .line 489
    :cond_1
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    #@14
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@16
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v4

    #@1a
    .line 490
    .local v4, "resLength":I
    new-array v3, v4, [I

    #@1c
    .line 493
    .local v3, "resDigits":[I
    if-ne v1, v2, :cond_2

    #@1e
    .line 494
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    #@20
    aget v5, v5, v2

    #@22
    neg-int v5, v5

    #@23
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@25
    aget v6, v6, v2

    #@27
    neg-int v6, v6

    #@28
    or-int/2addr v5, v6

    #@29
    neg-int v5, v5

    #@2a
    aput v5, v3, v2

    #@2c
    .line 495
    move v0, v2

    #@2d
    .line 503
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    #@2f
    :goto_1
    if-ge v0, v4, :cond_4

    #@31
    .line 504
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    #@33
    aget v5, v5, v0

    #@35
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@37
    aget v6, v6, v0

    #@39
    and-int/2addr v5, v6

    #@3a
    aput v5, v3, v0

    #@3c
    .line 503
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 497
    .end local v0    # "i":I
    :cond_2
    move v0, v1

    #@40
    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    #@42
    .line 498
    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    #@44
    aget v5, v5, v0

    #@46
    aput v5, v3, v0

    #@48
    .line 497
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 500
    :cond_3
    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    #@4d
    aget v5, v5, v0

    #@4f
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@51
    aget v6, v6, v0

    #@53
    add-int/lit8 v6, v6, -0x1

    #@55
    and-int/2addr v5, v6

    #@56
    aput v5, v3, v0

    #@58
    goto :goto_0

    #@59
    .line 507
    :cond_4
    new-instance v5, Ljava/math/BigInteger;

    #@5b
    const/4 v6, -0x1

    #@5c
    invoke-direct {v5, v6, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    #@5f
    return-object v5
.end method

.method static orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "longer"    # Ljava/math/BigInteger;
    .param p1, "shorter"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 461
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@2
    .line 462
    .local v2, "resLength":I
    new-array v1, v2, [I

    #@4
    .line 465
    .local v1, "resDigits":[I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget v3, p1, Ljava/math/BigInteger;->numberLength:I

    #@7
    if-ge v0, v3, :cond_0

    #@9
    .line 466
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    #@b
    aget v3, v3, v0

    #@d
    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    #@f
    aget v4, v4, v0

    #@11
    or-int/2addr v3, v4

    #@12
    aput v3, v1, v0

    #@14
    .line 465
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 468
    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    #@19
    .line 469
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    #@1b
    aget v3, v3, v0

    #@1d
    aput v3, v1, v0

    #@1f
    .line 468
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_1

    #@22
    .line 472
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    #@24
    const/4 v4, 0x1

    #@25
    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    #@28
    return-object v3
.end method

.method static xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 570
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 571
    return-object p0

    #@5
    .line 573
    :cond_0
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@7
    if-nez v0, :cond_1

    #@9
    .line 574
    return-object p1

    #@a
    .line 576
    :cond_1
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@c
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 577
    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 579
    :cond_2
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@19
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 580
    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 583
    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@26
    if-lez v0, :cond_6

    #@28
    .line 584
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@2a
    if-lez v0, :cond_5

    #@2c
    .line 585
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    #@2e
    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    #@30
    if-le v0, v1, :cond_4

    #@32
    .line 586
    invoke-static {p0, p1}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 588
    :cond_4
    invoke-static {p1, p0}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3a
    move-result-object v0

    #@3b
    return-object v0

    #@3c
    .line 591
    :cond_5
    invoke-static {p0, p1}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3f
    move-result-object v0

    #@40
    return-object v0

    #@41
    .line 594
    :cond_6
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    #@43
    if-lez v0, :cond_7

    #@45
    .line 595
    invoke-static {p1, p0}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@48
    move-result-object v0

    #@49
    return-object v0

    #@4a
    .line 596
    :cond_7
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@4d
    move-result v0

    #@4e
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@51
    move-result v1

    #@52
    if-le v0, v1, :cond_8

    #@54
    .line 597
    invoke-static {p1, p0}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@57
    move-result-object v0

    #@58
    return-object v0

    #@59
    .line 599
    :cond_8
    invoke-static {p0, p1}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5c
    move-result-object v0

    #@5d
    return-object v0
.end method

.method static xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 10
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    .line 676
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@3
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    #@5
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v6

    #@9
    .line 678
    .local v6, "resLength":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@c
    move-result v2

    #@d
    .line 679
    .local v2, "iNeg":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@10
    move-result v3

    #@11
    .line 684
    .local v3, "iPos":I
    if-ge v2, v3, :cond_1

    #@13
    .line 685
    new-array v5, v6, [I

    #@15
    .line 686
    .local v5, "resDigits":[I
    move v1, v2

    #@16
    .line 688
    .local v1, "i":I
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@18
    aget v7, v7, v1

    #@1a
    aput v7, v5, v1

    #@1c
    .line 689
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@1e
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    #@21
    move-result v4

    #@22
    .line 691
    .local v4, "limit":I
    add-int/lit8 v1, v1, 0x1

    #@24
    :goto_0
    if-ge v1, v4, :cond_0

    #@26
    .line 693
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@28
    aget v7, v7, v1

    #@2a
    aput v7, v5, v1

    #@2c
    .line 691
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 697
    :cond_0
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@31
    if-ne v1, v7, :cond_3

    #@33
    .line 698
    :goto_1
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@35
    if-ge v1, v7, :cond_3

    #@37
    .line 700
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@39
    aget v7, v7, v1

    #@3b
    aput v7, v5, v1

    #@3d
    .line 698
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 703
    .end local v1    # "i":I
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_1
    if-ge v3, v2, :cond_6

    #@42
    .line 704
    new-array v5, v6, [I

    #@44
    .line 705
    .restart local v5    # "resDigits":[I
    move v1, v3

    #@45
    .line 707
    .restart local v1    # "i":I
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@47
    aget v7, v7, v1

    #@49
    neg-int v7, v7

    #@4a
    aput v7, v5, v1

    #@4c
    .line 708
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@4e
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    #@51
    move-result v4

    #@52
    .line 709
    .restart local v4    # "limit":I
    add-int/lit8 v1, v1, 0x1

    #@54
    :goto_2
    if-ge v1, v4, :cond_2

    #@56
    .line 711
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@58
    aget v7, v7, v1

    #@5a
    not-int v7, v7

    #@5b
    aput v7, v5, v1

    #@5d
    .line 709
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_2

    #@60
    .line 715
    :cond_2
    if-ne v1, v2, :cond_4

    #@62
    .line 716
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@64
    aget v7, v7, v1

    #@66
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    #@68
    aget v8, v8, v1

    #@6a
    neg-int v8, v8

    #@6b
    xor-int/2addr v7, v8

    #@6c
    not-int v7, v7

    #@6d
    aput v7, v5, v1

    #@6f
    .line 717
    add-int/lit8 v1, v1, 0x1

    #@71
    .line 758
    .end local v4    # "limit":I
    :cond_3
    :goto_3
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@73
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    #@75
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@78
    move-result v4

    #@79
    .line 759
    .restart local v4    # "limit":I
    :goto_4
    if-ge v1, v4, :cond_b

    #@7b
    .line 760
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@7d
    aget v7, v7, v1

    #@7f
    not-int v7, v7

    #@80
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    #@82
    aget v8, v8, v1

    #@84
    xor-int/2addr v7, v8

    #@85
    not-int v7, v7

    #@86
    aput v7, v5, v1

    #@88
    .line 759
    add-int/lit8 v1, v1, 0x1

    #@8a
    goto :goto_4

    #@8b
    .line 721
    :cond_4
    :goto_5
    if-ge v1, v2, :cond_5

    #@8d
    .line 723
    aput v9, v5, v1

    #@8f
    .line 721
    add-int/lit8 v1, v1, 0x1

    #@91
    goto :goto_5

    #@92
    .line 725
    :cond_5
    :goto_6
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@94
    if-ge v1, v7, :cond_3

    #@96
    .line 727
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@98
    aget v7, v7, v1

    #@9a
    aput v7, v5, v1

    #@9c
    .line 725
    add-int/lit8 v1, v1, 0x1

    #@9e
    goto :goto_6

    #@9f
    .line 732
    .end local v1    # "i":I
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_6
    move v1, v2

    #@a0
    .line 733
    .restart local v1    # "i":I
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@a2
    aget v7, v7, v1

    #@a4
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    #@a6
    aget v8, v8, v1

    #@a8
    neg-int v8, v8

    #@a9
    xor-int v0, v7, v8

    #@ab
    .line 734
    .local v0, "digit":I
    if-nez v0, :cond_a

    #@ad
    .line 735
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@af
    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    #@b1
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@b4
    move-result v4

    #@b5
    .line 736
    .restart local v4    # "limit":I
    add-int/lit8 v1, v1, 0x1

    #@b7
    :goto_7
    if-ge v1, v4, :cond_7

    #@b9
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@bb
    aget v7, v7, v1

    #@bd
    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    #@bf
    aget v8, v8, v1

    #@c1
    not-int v8, v8

    #@c2
    xor-int v0, v7, v8

    #@c4
    if-nez v0, :cond_7

    #@c6
    add-int/lit8 v1, v1, 0x1

    #@c8
    goto :goto_7

    #@c9
    .line 738
    :cond_7
    if-nez v0, :cond_a

    #@cb
    .line 740
    :goto_8
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@cd
    if-ge v1, v7, :cond_8

    #@cf
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@d1
    aget v7, v7, v1

    #@d3
    not-int v0, v7

    #@d4
    if-nez v0, :cond_8

    #@d6
    add-int/lit8 v1, v1, 0x1

    #@d8
    goto :goto_8

    #@d9
    .line 742
    :cond_8
    :goto_9
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@db
    if-ge v1, v7, :cond_9

    #@dd
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@df
    aget v7, v7, v1

    #@e1
    not-int v0, v7

    #@e2
    if-nez v0, :cond_9

    #@e4
    add-int/lit8 v1, v1, 0x1

    #@e6
    goto :goto_9

    #@e7
    .line 744
    :cond_9
    if-nez v0, :cond_a

    #@e9
    .line 745
    add-int/lit8 v6, v6, 0x1

    #@eb
    .line 746
    new-array v5, v6, [I

    #@ed
    .line 747
    .restart local v5    # "resDigits":[I
    add-int/lit8 v7, v6, -0x1

    #@ef
    const/4 v8, 0x1

    #@f0
    aput v8, v5, v7

    #@f2
    .line 749
    new-instance v7, Ljava/math/BigInteger;

    #@f4
    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    #@f7
    return-object v7

    #@f8
    .line 753
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_a
    new-array v5, v6, [I

    #@fa
    .line 754
    .restart local v5    # "resDigits":[I
    neg-int v7, v0

    #@fb
    aput v7, v5, v1

    #@fd
    .line 755
    add-int/lit8 v1, v1, 0x1

    #@ff
    goto/16 :goto_3

    #@101
    .line 762
    .end local v0    # "digit":I
    .restart local v4    # "limit":I
    :cond_b
    :goto_a
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    #@103
    if-ge v1, v7, :cond_c

    #@105
    .line 764
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    #@107
    aget v7, v7, v1

    #@109
    aput v7, v5, v1

    #@10b
    .line 762
    add-int/lit8 v1, v1, 0x1

    #@10d
    goto :goto_a

    #@10e
    .line 766
    :cond_c
    :goto_b
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@110
    if-ge v1, v7, :cond_d

    #@112
    .line 768
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@114
    aget v7, v7, v1

    #@116
    aput v7, v5, v1

    #@118
    .line 766
    add-int/lit8 v1, v1, 0x1

    #@11a
    goto :goto_b

    #@11b
    .line 771
    :cond_d
    new-instance v7, Ljava/math/BigInteger;

    #@11d
    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    #@120
    return-object v7
.end method

.method static xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 625
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@2
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@4
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@7
    move-result v5

    #@8
    .line 626
    .local v5, "resLength":I
    new-array v4, v5, [I

    #@a
    .line 627
    .local v4, "resDigits":[I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@d
    move-result v2

    #@e
    .line 628
    .local v2, "iVal":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@11
    move-result v1

    #@12
    .line 629
    .local v1, "iThat":I
    move v0, v1

    #@13
    .line 633
    .local v0, "i":I
    if-ne v2, v1, :cond_0

    #@15
    .line 634
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@17
    aget v6, v6, v0

    #@19
    neg-int v6, v6

    #@1a
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@1c
    aget v7, v7, v0

    #@1e
    neg-int v7, v7

    #@1f
    xor-int/2addr v6, v7

    #@20
    aput v6, v4, v0

    #@22
    .line 655
    :goto_0
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@24
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    #@26
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v3

    #@2a
    .line 657
    .local v3, "limit":I
    add-int/lit8 v0, v0, 0x1

    #@2c
    :goto_1
    if-ge v0, v3, :cond_4

    #@2e
    .line 659
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@30
    aget v6, v6, v0

    #@32
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@34
    aget v7, v7, v0

    #@36
    xor-int/2addr v6, v7

    #@37
    aput v6, v4, v0

    #@39
    .line 657
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 636
    .end local v3    # "limit":I
    :cond_0
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@3e
    aget v6, v6, v0

    #@40
    neg-int v6, v6

    #@41
    aput v6, v4, v0

    #@43
    .line 637
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@45
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    #@48
    move-result v3

    #@49
    .line 638
    .restart local v3    # "limit":I
    add-int/lit8 v0, v0, 0x1

    #@4b
    :goto_2
    if-ge v0, v3, :cond_1

    #@4d
    .line 639
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@4f
    aget v6, v6, v0

    #@51
    not-int v6, v6

    #@52
    aput v6, v4, v0

    #@54
    .line 638
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_2

    #@57
    .line 642
    :cond_1
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@59
    if-ne v0, v6, :cond_3

    #@5b
    .line 644
    :goto_3
    if-ge v0, v2, :cond_2

    #@5d
    .line 646
    const/4 v6, -0x1

    #@5e
    aput v6, v4, v0

    #@60
    .line 644
    add-int/lit8 v0, v0, 0x1

    #@62
    goto :goto_3

    #@63
    .line 649
    :cond_2
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@65
    aget v6, v6, v0

    #@67
    add-int/lit8 v6, v6, -0x1

    #@69
    aput v6, v4, v0

    #@6b
    goto :goto_0

    #@6c
    .line 651
    :cond_3
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@6e
    aget v6, v6, v0

    #@70
    neg-int v6, v6

    #@71
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    #@73
    aget v7, v7, v0

    #@75
    not-int v7, v7

    #@76
    xor-int/2addr v6, v7

    #@77
    aput v6, v4, v0

    #@79
    goto :goto_0

    #@7a
    .line 662
    :cond_4
    :goto_4
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@7c
    if-ge v0, v6, :cond_5

    #@7e
    .line 664
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@80
    aget v6, v6, v0

    #@82
    aput v6, v4, v0

    #@84
    .line 662
    add-int/lit8 v0, v0, 0x1

    #@86
    goto :goto_4

    #@87
    .line 666
    :cond_5
    :goto_5
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    #@89
    if-ge v0, v6, :cond_6

    #@8b
    .line 668
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    #@8d
    aget v6, v6, v0

    #@8f
    aput v6, v4, v0

    #@91
    .line 666
    add-int/lit8 v0, v0, 0x1

    #@93
    goto :goto_5

    #@94
    .line 671
    :cond_6
    new-instance v6, Ljava/math/BigInteger;

    #@96
    const/4 v7, 0x1

    #@97
    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    #@9a
    return-object v6
.end method

.method static xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "longer"    # Ljava/math/BigInteger;
    .param p1, "shorter"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 608
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@2
    .line 609
    .local v2, "resLength":I
    new-array v1, v2, [I

    #@4
    .line 610
    .local v1, "resDigits":[I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@7
    move-result v3

    #@8
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@b
    move-result v4

    #@c
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v0

    #@10
    .line 611
    .local v0, "i":I
    :goto_0
    iget v3, p1, Ljava/math/BigInteger;->numberLength:I

    #@12
    if-ge v0, v3, :cond_0

    #@14
    .line 612
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    #@16
    aget v3, v3, v0

    #@18
    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    #@1a
    aget v4, v4, v0

    #@1c
    xor-int/2addr v3, v4

    #@1d
    aput v3, v1, v0

    #@1f
    .line 611
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 614
    :cond_0
    :goto_1
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    #@24
    if-ge v0, v3, :cond_1

    #@26
    .line 615
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    #@28
    aget v3, v3, v0

    #@2a
    aput v3, v1, v0

    #@2c
    .line 614
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 618
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    #@31
    const/4 v4, 0x1

    #@32
    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    #@35
    return-object v3
.end method
