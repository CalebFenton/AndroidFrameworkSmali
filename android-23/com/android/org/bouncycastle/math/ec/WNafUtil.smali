.class public abstract Lcom/android/org/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static final DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_INTS:[I

.field private static final EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 9
    const/4 v0, 0x6

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    #@9
    .line 11
    new-array v0, v1, [B

    #@b
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    #@d
    .line 12
    new-array v0, v1, [I

    #@f
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    #@11
    .line 13
    new-array v0, v1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@15
    .line 5
    return-void

    #@16
    .line 9
    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .locals 12
    .param p0, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v10

    #@4
    ushr-int/lit8 v10, v10, 0x10

    #@6
    if-eqz v10, :cond_0

    #@8
    .line 19
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v11, "\'k\' must have bitlength < 2^16"

    #@d
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v10

    #@11
    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@14
    move-result v10

    #@15
    if-nez v10, :cond_1

    #@17
    .line 23
    sget-object v10, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    #@19
    return-object v10

    #@1a
    .line 26
    :cond_1
    const/4 v10, 0x1

    #@1b
    invoke-virtual {p0, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@1e
    move-result-object v10

    #@1f
    invoke-virtual {v10, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@22
    move-result-object v0

    #@23
    .line 28
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@26
    move-result v1

    #@27
    .line 29
    .local v1, "bits":I
    shr-int/lit8 v10, v1, 0x1

    #@29
    new-array v8, v10, [I

    #@2b
    .line 31
    .local v8, "naf":[I
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2e
    move-result-object v2

    #@2f
    .line 33
    .local v2, "diff":Ljava/math/BigInteger;
    add-int/lit8 v4, v1, -0x1

    #@31
    .local v4, "highBit":I
    const/4 v6, 0x0

    #@32
    .local v6, "length":I
    const/4 v9, 0x0

    #@33
    .line 34
    .local v9, "zeroes":I
    const/4 v5, 0x1

    #@34
    .local v5, "i":I
    move v7, v6

    #@35
    .end local v6    # "length":I
    .local v7, "length":I
    :goto_0
    if-ge v5, v4, :cond_4

    #@37
    .line 36
    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->testBit(I)Z

    #@3a
    move-result v10

    #@3b
    if-nez v10, :cond_2

    #@3d
    .line 38
    add-int/lit8 v9, v9, 0x1

    #@3f
    move v6, v7

    #@40
    .line 34
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@42
    move v7, v6

    #@43
    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_0

    #@44
    .line 42
    :cond_2
    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    #@47
    move-result v10

    #@48
    if-eqz v10, :cond_3

    #@4a
    const/4 v3, -0x1

    #@4b
    .line 43
    .local v3, "digit":I
    :goto_2
    add-int/lit8 v6, v7, 0x1

    #@4d
    .end local v7    # "length":I
    .restart local v6    # "length":I
    shl-int/lit8 v10, v3, 0x10

    #@4f
    or-int/2addr v10, v9

    #@50
    aput v10, v8, v7

    #@52
    .line 44
    const/4 v9, 0x1

    #@53
    .line 45
    add-int/lit8 v5, v5, 0x1

    #@55
    goto :goto_1

    #@56
    .line 42
    .end local v3    # "digit":I
    .end local v6    # "length":I
    .restart local v7    # "length":I
    :cond_3
    const/4 v3, 0x1

    #@57
    .restart local v3    # "digit":I
    goto :goto_2

    #@58
    .line 48
    .end local v3    # "digit":I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    #@5a
    .end local v7    # "length":I
    .restart local v6    # "length":I
    const/high16 v10, 0x10000

    #@5c
    or-int/2addr v10, v9

    #@5d
    aput v10, v8, v7

    #@5f
    .line 50
    array-length v10, v8

    #@60
    if-le v10, v6, :cond_5

    #@62
    .line 52
    invoke-static {v8, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    #@65
    move-result-object v8

    #@66
    .line 55
    :cond_5
    return-object v8
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .locals 12
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    .line 60
    if-ne p0, v10, :cond_0

    #@3
    .line 62
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    #@6
    move-result-object v10

    #@7
    return-object v10

    #@8
    .line 65
    :cond_0
    if-lt p0, v10, :cond_1

    #@a
    const/16 v10, 0x10

    #@c
    if-le p0, v10, :cond_2

    #@e
    .line 67
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v11, "\'width\' must be in the range [2, 16]"

    #@13
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v10

    #@17
    .line 69
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@1a
    move-result v10

    #@1b
    ushr-int/lit8 v10, v10, 0x10

    #@1d
    if-eqz v10, :cond_3

    #@1f
    .line 71
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v11, "\'k\' must have bitlength < 2^16"

    #@24
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v10

    #@28
    .line 73
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@2b
    move-result v10

    #@2c
    if-nez v10, :cond_4

    #@2e
    .line 75
    sget-object v10, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    #@30
    return-object v10

    #@31
    .line 78
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@34
    move-result v10

    #@35
    div-int/2addr v10, p0

    #@36
    add-int/lit8 v10, v10, 0x1

    #@38
    new-array v8, v10, [I

    #@3a
    .line 81
    .local v8, "wnaf":[I
    const/4 v10, 0x1

    #@3b
    shl-int v6, v10, p0

    #@3d
    .line 82
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    #@3f
    .line 83
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    #@41
    .line 85
    .local v7, "sign":I
    const/4 v0, 0x0

    #@42
    .line 86
    .local v0, "carry":Z
    const/4 v2, 0x0

    #@43
    .local v2, "length":I
    const/4 v5, 0x0

    #@44
    .line 88
    .local v5, "pos":I
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@47
    move-result v10

    #@48
    if-gt v5, v10, :cond_a

    #@4a
    .line 90
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    #@4d
    move-result v10

    #@4e
    if-ne v10, v0, :cond_5

    #@50
    .line 92
    add-int/lit8 v5, v5, 0x1

    #@52
    .line 93
    goto :goto_0

    #@53
    .line 96
    :cond_5
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@56
    move-result-object p1

    #@57
    .line 98
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    #@5a
    move-result v10

    #@5b
    and-int v1, v10, v4

    #@5d
    .line 99
    .local v1, "digit":I
    if-eqz v0, :cond_6

    #@5f
    .line 101
    add-int/lit8 v1, v1, 0x1

    #@61
    .line 104
    :cond_6
    and-int v10, v1, v7

    #@63
    if-eqz v10, :cond_8

    #@65
    const/4 v0, 0x1

    #@66
    .line 105
    :goto_1
    if-eqz v0, :cond_7

    #@68
    .line 107
    sub-int/2addr v1, v6

    #@69
    .line 110
    :cond_7
    if-lez v2, :cond_9

    #@6b
    add-int/lit8 v9, v5, -0x1

    #@6d
    .line 111
    .local v9, "zeroes":I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    #@6f
    .end local v2    # "length":I
    .local v3, "length":I
    shl-int/lit8 v10, v1, 0x10

    #@71
    or-int/2addr v10, v9

    #@72
    aput v10, v8, v2

    #@74
    .line 112
    move v5, p0

    #@75
    move v2, v3

    #@76
    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_0

    #@77
    .line 104
    .end local v9    # "zeroes":I
    :cond_8
    const/4 v0, 0x0

    #@78
    goto :goto_1

    #@79
    .line 110
    :cond_9
    move v9, v5

    #@7a
    .restart local v9    # "zeroes":I
    goto :goto_2

    #@7b
    .line 116
    .end local v1    # "digit":I
    .end local v9    # "zeroes":I
    :cond_a
    array-length v10, v8

    #@7c
    if-le v10, v2, :cond_b

    #@7e
    .line 118
    invoke-static {v8, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    #@81
    move-result-object v8

    #@82
    .line 121
    :cond_b
    return-object v8
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 15
    .param p0, "g"    # Ljava/math/BigInteger;
    .param p1, "h"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v13

    #@4
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    #@7
    move-result v14

    #@8
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    #@b
    move-result v13

    #@c
    add-int/lit8 v2, v13, 0x1

    #@e
    .line 127
    .local v2, "digits":I
    new-array v5, v2, [B

    #@10
    .line 129
    .local v5, "jsf":[B
    move-object v6, p0

    #@11
    .local v6, "k0":Ljava/math/BigInteger;
    move-object/from16 v7, p1

    #@13
    .line 130
    .local v7, "k1":Ljava/math/BigInteger;
    const/4 v3, 0x0

    #@14
    .local v3, "j":I
    const/4 v0, 0x0

    #@15
    .local v0, "d0":I
    const/4 v1, 0x0

    #@16
    .line 132
    .local v1, "d1":I
    const/4 v10, 0x0

    #@17
    .local v10, "offset":I
    move v4, v3

    #@18
    .line 133
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    or-int v13, v0, v1

    #@1a
    if-nez v13, :cond_0

    #@1c
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    #@1f
    move-result v13

    #@20
    if-le v13, v10, :cond_6

    #@22
    .line 135
    :cond_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    #@25
    move-result v13

    #@26
    ushr-int/2addr v13, v10

    #@27
    add-int/2addr v13, v0

    #@28
    and-int/lit8 v8, v13, 0x7

    #@2a
    .local v8, "n0":I
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@2d
    move-result v13

    #@2e
    ushr-int/2addr v13, v10

    #@2f
    add-int/2addr v13, v1

    #@30
    and-int/lit8 v9, v13, 0x7

    #@32
    .line 137
    .local v9, "n1":I
    and-int/lit8 v11, v8, 0x1

    #@34
    .line 138
    .local v11, "u0":I
    if-eqz v11, :cond_1

    #@36
    .line 140
    and-int/lit8 v13, v8, 0x2

    #@38
    sub-int/2addr v11, v13

    #@39
    .line 141
    add-int v13, v8, v11

    #@3b
    const/4 v14, 0x4

    #@3c
    if-ne v13, v14, :cond_1

    #@3e
    and-int/lit8 v13, v9, 0x3

    #@40
    const/4 v14, 0x2

    #@41
    if-ne v13, v14, :cond_1

    #@43
    .line 143
    neg-int v11, v11

    #@44
    .line 147
    :cond_1
    and-int/lit8 v12, v9, 0x1

    #@46
    .line 148
    .local v12, "u1":I
    if-eqz v12, :cond_2

    #@48
    .line 150
    and-int/lit8 v13, v9, 0x2

    #@4a
    sub-int/2addr v12, v13

    #@4b
    .line 151
    add-int v13, v9, v12

    #@4d
    const/4 v14, 0x4

    #@4e
    if-ne v13, v14, :cond_2

    #@50
    and-int/lit8 v13, v8, 0x3

    #@52
    const/4 v14, 0x2

    #@53
    if-ne v13, v14, :cond_2

    #@55
    .line 153
    neg-int v12, v12

    #@56
    .line 157
    :cond_2
    shl-int/lit8 v13, v0, 0x1

    #@58
    add-int/lit8 v14, v11, 0x1

    #@5a
    if-ne v13, v14, :cond_3

    #@5c
    .line 159
    xor-int/lit8 v0, v0, 0x1

    #@5e
    .line 161
    :cond_3
    shl-int/lit8 v13, v1, 0x1

    #@60
    add-int/lit8 v14, v12, 0x1

    #@62
    if-ne v13, v14, :cond_4

    #@64
    .line 163
    xor-int/lit8 v1, v1, 0x1

    #@66
    .line 166
    :cond_4
    add-int/lit8 v10, v10, 0x1

    #@68
    const/16 v13, 0x1e

    #@6a
    if-ne v10, v13, :cond_5

    #@6c
    .line 168
    const/4 v10, 0x0

    #@6d
    .line 169
    const/16 v13, 0x1e

    #@6f
    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@72
    move-result-object v6

    #@73
    .line 170
    const/16 v13, 0x1e

    #@75
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@78
    move-result-object v7

    #@79
    .line 173
    :cond_5
    add-int/lit8 v3, v4, 0x1

    #@7b
    .end local v4    # "j":I
    .restart local v3    # "j":I
    shl-int/lit8 v13, v11, 0x4

    #@7d
    and-int/lit8 v14, v12, 0xf

    #@7f
    or-int/2addr v13, v14

    #@80
    int-to-byte v13, v13

    #@81
    aput-byte v13, v5, v4

    #@83
    move v4, v3

    #@84
    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    #@85
    .line 133
    .end local v8    # "n0":I
    .end local v9    # "n1":I
    .end local v11    # "u0":I
    .end local v12    # "u1":I
    :cond_6
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    #@88
    move-result v13

    #@89
    if-gt v13, v10, :cond_0

    #@8b
    .line 177
    array-length v13, v5

    #@8c
    if-le v13, v4, :cond_7

    #@8e
    .line 179
    invoke-static {v5, v4}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    #@91
    move-result-object v5

    #@92
    .line 182
    :cond_7
    return-object v5
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 187
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 189
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    #@9
    return-object v5

    #@a
    .line 192
    :cond_0
    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    .line 194
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@15
    move-result v5

    #@16
    add-int/lit8 v2, v5, -0x1

    #@18
    .line 195
    .local v2, "digits":I
    new-array v4, v2, [B

    #@1a
    .line 197
    .local v4, "naf":[B
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1d
    move-result-object v1

    #@1e
    .line 199
    .local v1, "diff":Ljava/math/BigInteger;
    const/4 v3, 0x1

    #@1f
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    #@21
    .line 201
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_1

    #@27
    .line 203
    add-int/lit8 v7, v3, -0x1

    #@29
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_2

    #@2f
    const/4 v5, -0x1

    #@30
    :goto_1
    int-to-byte v5, v5

    #@31
    aput-byte v5, v4, v7

    #@33
    .line 204
    add-int/lit8 v3, v3, 0x1

    #@35
    .line 199
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_0

    #@38
    :cond_2
    move v5, v6

    #@39
    .line 203
    goto :goto_1

    #@3a
    .line 208
    :cond_3
    add-int/lit8 v5, v2, -0x1

    #@3c
    aput-byte v6, v4, v5

    #@3e
    .line 210
    return-object v4
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .locals 11
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 227
    if-ne p0, v9, :cond_0

    #@3
    .line 229
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    #@6
    move-result-object v9

    #@7
    return-object v9

    #@8
    .line 232
    :cond_0
    if-lt p0, v9, :cond_1

    #@a
    const/16 v9, 0x8

    #@c
    if-le p0, v9, :cond_2

    #@e
    .line 234
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v10, "\'width\' must be in the range [2, 8]"

    #@13
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v9

    #@17
    .line 236
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@1a
    move-result v9

    #@1b
    if-nez v9, :cond_3

    #@1d
    .line 238
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    #@1f
    return-object v9

    #@20
    .line 241
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@23
    move-result v9

    #@24
    add-int/lit8 v9, v9, 0x1

    #@26
    new-array v8, v9, [B

    #@28
    .line 244
    .local v8, "wnaf":[B
    const/4 v9, 0x1

    #@29
    shl-int v6, v9, p0

    #@2b
    .line 245
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    #@2d
    .line 246
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    #@2f
    .line 248
    .local v7, "sign":I
    const/4 v0, 0x0

    #@30
    .line 249
    .local v0, "carry":Z
    const/4 v2, 0x0

    #@31
    .local v2, "length":I
    const/4 v5, 0x0

    #@32
    .line 251
    .local v5, "pos":I
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@35
    move-result v9

    #@36
    if-gt v5, v9, :cond_9

    #@38
    .line 253
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    #@3b
    move-result v9

    #@3c
    if-ne v9, v0, :cond_4

    #@3e
    .line 255
    add-int/lit8 v5, v5, 0x1

    #@40
    .line 256
    goto :goto_0

    #@41
    .line 259
    :cond_4
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@44
    move-result-object p1

    #@45
    .line 261
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    #@48
    move-result v9

    #@49
    and-int v1, v9, v4

    #@4b
    .line 262
    .local v1, "digit":I
    if-eqz v0, :cond_5

    #@4d
    .line 264
    add-int/lit8 v1, v1, 0x1

    #@4f
    .line 267
    :cond_5
    and-int v9, v1, v7

    #@51
    if-eqz v9, :cond_8

    #@53
    const/4 v0, 0x1

    #@54
    .line 268
    :goto_1
    if-eqz v0, :cond_6

    #@56
    .line 270
    sub-int/2addr v1, v6

    #@57
    .line 273
    :cond_6
    if-lez v2, :cond_7

    #@59
    add-int/lit8 v5, v5, -0x1

    #@5b
    .end local v5    # "pos":I
    :cond_7
    add-int/2addr v2, v5

    #@5c
    .line 274
    add-int/lit8 v3, v2, 0x1

    #@5e
    .end local v2    # "length":I
    .local v3, "length":I
    int-to-byte v9, v1

    #@5f
    aput-byte v9, v8, v2

    #@61
    .line 275
    move v5, p0

    #@62
    .restart local v5    # "pos":I
    move v2, v3

    #@63
    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_0

    #@64
    .line 267
    :cond_8
    const/4 v0, 0x0

    #@65
    goto :goto_1

    #@66
    .line 279
    .end local v1    # "digit":I
    :cond_9
    array-length v9, v8

    #@67
    if-le v9, v2, :cond_a

    #@69
    .line 281
    invoke-static {v8, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    #@6c
    move-result-object v8

    #@6d
    .line 284
    :cond_a
    return-object v8
.end method

.method public static getNafWeight(Ljava/math/BigInteger;)I
    .locals 4
    .param p0, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 289
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 291
    return v3

    #@8
    .line 294
    :cond_0
    const/4 v2, 0x1

    #@9
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@10
    move-result-object v0

    #@11
    .line 295
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    .line 297
    .local v1, "diff":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitCount()I

    #@18
    move-result v2

    #@19
    return v2
.end method

.method public static getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 2
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "bc_wnaf"

    #@7
    invoke-virtual {v0, p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 1
    .param p0, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@0
    .prologue
    .line 307
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 309
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@8
    .end local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    return-object p0

    #@9
    .line 312
    .restart local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@b
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    #@e
    return-object v0
.end method

.method public static getWindowSize(I)I
    .locals 1
    .param p0, "bits"    # I

    #@0
    .prologue
    .line 323
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    #@2
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getWindowSize(I[I)I
    .locals 2
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I

    #@0
    .prologue
    .line 335
    const/4 v0, 0x0

    #@1
    .line 336
    .local v0, "w":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 338
    aget v1, p1, v0

    #@6
    if-ge p0, v1, :cond_1

    #@8
    .line 343
    :cond_0
    add-int/lit8 v1, v0, 0x2

    #@a
    return v1

    #@b
    .line 336
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0
.end method

.method public static mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 11
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z
    .param p3, "pointMap"    # Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    #@0
    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    .line 350
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@7
    move-result-object v8

    #@8
    .line 352
    .local v8, "wnafPreCompP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-interface {p3, p0}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    move-result-object v5

    #@c
    .line 353
    .local v5, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const-string/jumbo v10, "bc_wnaf"

    #@f
    invoke-virtual {v0, v5, v10}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@12
    move-result-object v10

    #@13
    invoke-static {v10}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@16
    move-result-object v9

    #@17
    .line 355
    .local v9, "wnafPreCompQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v6

    #@1b
    .line 356
    .local v6, "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v6, :cond_0

    #@1d
    .line 358
    invoke-interface {p3, v6}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@20
    move-result-object v7

    #@21
    .line 359
    .local v7, "twiceQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v9, v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@24
    .line 362
    .end local v7    # "twiceQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@27
    move-result-object v3

    #@28
    .line 363
    .local v3, "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v10, v3

    #@29
    new-array v4, v10, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2b
    .line 364
    .local v4, "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    #@2c
    .local v1, "i":I
    :goto_0
    array-length v10, v3

    #@2d
    if-ge v1, v10, :cond_1

    #@2f
    .line 366
    aget-object v10, v3, v1

    #@31
    invoke-interface {p3, v10}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@34
    move-result-object v10

    #@35
    aput-object v10, v4, v1

    #@37
    .line 364
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 368
    :cond_1
    invoke-virtual {v9, v4}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@3d
    .line 370
    if-eqz p2, :cond_3

    #@3f
    .line 372
    array-length v10, v4

    #@40
    new-array v2, v10, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@42
    .line 373
    .local v2, "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    #@43
    :goto_1
    array-length v10, v2

    #@44
    if-ge v1, v10, :cond_2

    #@46
    .line 375
    aget-object v10, v4, v1

    #@48
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4b
    move-result-object v10

    #@4c
    aput-object v10, v2, v1

    #@4e
    .line 373
    add-int/lit8 v1, v1, 0x1

    #@50
    goto :goto_1

    #@51
    .line 377
    :cond_2
    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@54
    .line 380
    .end local v2    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_3
    const-string/jumbo v10, "bc_wnaf"

    #@57
    invoke-virtual {v0, v5, v10, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    #@5a
    .line 382
    return-object v5
.end method

.method public static precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 17
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z

    #@0
    .prologue
    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v1

    #@4
    .line 388
    .local v1, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v15, "bc_wnaf"

    #@7
    move-object/from16 v0, p0

    #@9
    invoke-virtual {v1, v0, v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@c
    move-result-object v15

    #@d
    invoke-static {v15}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@10
    move-result-object v14

    #@11
    .line 390
    .local v14, "wnafPreCompInfo":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    const/4 v4, 0x0

    #@12
    .local v4, "iniPreCompLen":I
    add-int/lit8 v15, p1, -0x2

    #@14
    const/16 v16, 0x0

    #@16
    move/from16 v0, v16

    #@18
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v15

    #@1c
    const/16 v16, 0x1

    #@1e
    shl-int v12, v16, v15

    #@20
    .line 392
    .local v12, "reqPreCompLen":I
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@23
    move-result-object v10

    #@24
    .line 393
    .local v10, "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v10, :cond_2

    #@26
    .line 395
    sget-object v10, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@28
    .line 402
    :goto_0
    if-ge v4, v12, :cond_0

    #@2a
    .line 404
    invoke-static {v10, v12}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2d
    move-result-object v10

    #@2e
    .line 406
    const/4 v15, 0x1

    #@2f
    if-ne v12, v15, :cond_3

    #@31
    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@34
    move-result-object v15

    #@35
    const/16 v16, 0x0

    #@37
    aput-object v15, v10, v16

    #@39
    .line 485
    :cond_0
    :goto_1
    invoke-virtual {v14, v10}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@3c
    .line 487
    if-eqz p2, :cond_b

    #@3e
    .line 489
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@41
    move-result-object v11

    #@42
    .line 492
    .local v11, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v11, :cond_9

    #@44
    .line 494
    const/4 v9, 0x0

    #@45
    .line 495
    .local v9, "pos":I
    new-array v11, v12, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@47
    .line 506
    :cond_1
    :goto_2
    if-ge v9, v12, :cond_a

    #@49
    .line 508
    aget-object v15, v10, v9

    #@4b
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4e
    move-result-object v15

    #@4f
    aput-object v15, v11, v9

    #@51
    .line 509
    add-int/lit8 v9, v9, 0x1

    #@53
    goto :goto_2

    #@54
    .line 399
    .end local v9    # "pos":I
    .end local v11    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_2
    array-length v4, v10

    #@55
    goto :goto_0

    #@56
    .line 412
    :cond_3
    move v2, v4

    #@57
    .line 413
    .local v2, "curPreCompLen":I
    if-nez v2, :cond_4

    #@59
    .line 415
    const/4 v15, 0x0

    #@5a
    aput-object p0, v10, v15

    #@5c
    .line 416
    const/4 v2, 0x1

    #@5d
    .line 419
    :cond_4
    const/4 v5, 0x0

    #@5e
    .line 421
    .local v5, "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v15, 0x2

    #@5f
    if-ne v12, v15, :cond_5

    #@61
    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@64
    move-result-object v15

    #@65
    const/16 v16, 0x1

    #@67
    aput-object v15, v10, v16

    #@69
    .line 481
    .end local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    sub-int v15, v12, v4

    #@6b
    invoke-virtual {v1, v10, v4, v15, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@6e
    goto :goto_1

    #@6f
    .line 427
    .restart local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@72
    move-result-object v13

    #@73
    .local v13, "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v15, v2, -0x1

    #@75
    aget-object v8, v10, v15

    #@77
    .line 428
    .local v8, "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v13, :cond_6

    #@79
    .line 430
    const/4 v15, 0x0

    #@7a
    aget-object v15, v10, v15

    #@7c
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7f
    move-result-object v13

    #@80
    .line 431
    invoke-virtual {v14, v13}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@83
    .line 443
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@86
    move-result v15

    #@87
    if-eqz v15, :cond_7

    #@89
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    #@8c
    move-result v15

    #@8d
    const/16 v16, 0x40

    #@8f
    move/from16 v0, v16

    #@91
    if-lt v15, v0, :cond_7

    #@93
    .line 445
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@96
    move-result v15

    #@97
    packed-switch v15, :pswitch_data_0

    #@9a
    .end local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    :goto_4
    move v3, v2

    #@9b
    .line 468
    .end local v2    # "curPreCompLen":I
    .local v3, "curPreCompLen":I
    :goto_5
    if-ge v3, v12, :cond_c

    #@9d
    .line 474
    add-int/lit8 v2, v3, 0x1

    #@9f
    .end local v3    # "curPreCompLen":I
    .restart local v2    # "curPreCompLen":I
    invoke-virtual {v8, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a2
    move-result-object v8

    #@a3
    aput-object v8, v10, v3

    #@a5
    goto :goto_4

    #@a6
    .restart local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    move v3, v2

    #@a7
    .line 444
    .end local v2    # "curPreCompLen":I
    .restart local v3    # "curPreCompLen":I
    goto :goto_5

    #@a8
    .line 451
    .end local v3    # "curPreCompLen":I
    .restart local v2    # "curPreCompLen":I
    :pswitch_0
    const/4 v15, 0x0

    #@a9
    invoke-virtual {v13, v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ac
    move-result-object v5

    #@ad
    .line 452
    .local v5, "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b0
    move-result-object v15

    #@b1
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@b4
    move-result-object v15

    #@b5
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b8
    move-result-object v16

    #@b9
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@bc
    move-result-object v16

    #@bd
    move-object/from16 v0, v16

    #@bf
    invoke-virtual {v1, v15, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c2
    move-result-object v13

    #@c3
    .line 455
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c6
    move-result-object v6

    #@c7
    .local v6, "iso2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ca
    move-result-object v7

    #@cb
    .line 456
    .local v7, "iso3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@ce
    move-result-object v15

    #@cf
    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d2
    move-result-object v8

    #@d3
    .line 458
    if-nez v4, :cond_8

    #@d5
    .line 460
    const/4 v15, 0x0

    #@d6
    aput-object v8, v10, v15

    #@d8
    :cond_8
    move v3, v2

    #@d9
    .line 462
    .end local v2    # "curPreCompLen":I
    .restart local v3    # "curPreCompLen":I
    goto :goto_5

    #@da
    .line 499
    .end local v3    # "curPreCompLen":I
    .end local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "iso2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "iso3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v13    # "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v11    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_9
    array-length v9, v11

    #@db
    .line 500
    .restart local v9    # "pos":I
    if-ge v9, v12, :cond_1

    #@dd
    .line 502
    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e0
    move-result-object v11

    #@e1
    goto/16 :goto_2

    #@e3
    .line 512
    :cond_a
    invoke-virtual {v14, v11}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@e6
    .line 515
    .end local v9    # "pos":I
    .end local v11    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_b
    const-string/jumbo v15, "bc_wnaf"

    #@e9
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v1, v0, v15, v14}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    #@ee
    .line 517
    return-object v14

    #@ef
    .restart local v3    # "curPreCompLen":I
    .restart local v8    # "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v13    # "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_c
    move v2, v3

    #@f0
    .end local v3    # "curPreCompLen":I
    .restart local v2    # "curPreCompLen":I
    goto/16 :goto_3

    #@f2
    .line 445
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "a"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 536
    new-array v0, p1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    .line 537
    .local v0, "result":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v1, p0

    #@4
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@7
    .line 538
    return-object v0
.end method

.method private static trim([BI)[B
    .locals 3
    .param p0, "a"    # [B
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 522
    new-array v0, p1, [B

    #@3
    .line 523
    .local v0, "result":[B
    array-length v1, v0

    #@4
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7
    .line 524
    return-object v0
.end method

.method private static trim([II)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 529
    new-array v0, p1, [I

    #@3
    .line 530
    .local v0, "result":[I
    array-length v1, v0

    #@4
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@7
    .line 531
    return-object v0
.end method
