.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static final blacklist DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final blacklist EMPTY_BYTES:[B

.field private static final blacklist EMPTY_INTS:[I

.field private static final blacklist EMPTY_POINTS:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field private static final blacklist MAX_WIDTH:I = 0x10

.field public static final blacklist PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_POINTS()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smresizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    .line 16
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 17
    new-array v1, v0, [I

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    .line 18
    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void

    :array_16
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 7
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 22
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 23
    .local v0, "c":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_7

    .line 25
    return-void

    .line 28
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    .line 29
    .local v1, "n":Ljava/math/BigInteger;
    if-nez v1, :cond_14

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 30
    .local v2, "bits":I
    :goto_18
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 32
    .local v3, "confWidth":I
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$1;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$1;-><init>(I)V

    const-string v5, "bc_wnaf"

    invoke-virtual {v0, p0, v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    .line 60
    return-void
.end method

.method public static blacklist generateCompactNaf(Ljava/math/BigInteger;)[I
    .registers 13
    .param p0, "k"    # Ljava/math/BigInteger;

    .line 64
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5c

    .line 68
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_11

    .line 70
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v0

    .line 73
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 75
    .local v1, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 76
    .local v2, "bits":I
    shr-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    .line 78
    .local v3, "naf":[I
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 80
    .local v4, "diff":Ljava/math/BigInteger;
    add-int/lit8 v5, v2, -0x1

    .local v5, "highBit":I
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v7, 0x0

    .line 81
    .local v7, "zeroes":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2b
    if-ge v8, v5, :cond_4d

    .line 83
    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-nez v9, :cond_36

    .line 85
    add-int/lit8 v7, v7, 0x1

    .line 86
    goto :goto_4b

    .line 89
    :cond_36
    invoke-virtual {p0, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_3e

    const/4 v9, -0x1

    goto :goto_3f

    :cond_3e
    move v9, v0

    .line 90
    .local v9, "digit":I
    :goto_3f
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "length":I
    .local v10, "length":I
    shl-int/lit8 v11, v9, 0x10

    or-int/2addr v11, v7

    aput v11, v3, v6

    .line 91
    const/4 v6, 0x1

    .line 92
    .end local v7    # "zeroes":I
    .local v6, "zeroes":I
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    move v6, v10

    .line 81
    .end local v9    # "digit":I
    .end local v10    # "length":I
    .local v6, "length":I
    .restart local v7    # "zeroes":I
    :goto_4b
    add-int/2addr v8, v0

    goto :goto_2b

    .line 95
    .end local v8    # "i":I
    :cond_4d
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "length":I
    .local v0, "length":I
    const/high16 v8, 0x10000

    or-int/2addr v8, v7

    aput v8, v3, v6

    .line 97
    array-length v6, v3

    if-le v6, v0, :cond_5b

    .line 99
    invoke-static {v3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v3

    .line 102
    :cond_5b
    return-object v3

    .line 66
    .end local v0    # "length":I
    .end local v1    # "_3k":Ljava/math/BigInteger;
    .end local v2    # "bits":I
    .end local v3    # "naf":[I
    .end local v4    # "diff":Ljava/math/BigInteger;
    .end local v5    # "highBit":I
    .end local v7    # "zeroes":I
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .registers 14
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 107
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 109
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v0

    return-object v0

    .line 112
    :cond_8
    if-lt p0, v0, :cond_78

    const/16 v0, 0x10

    if-gt p0, v0, :cond_78

    .line 116
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v0, v1, 0x10

    if-nez v0, :cond_70

    .line 120
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1f

    .line 122
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v0

    .line 125
    :cond_1f
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/2addr v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 128
    .local v0, "wnaf":[I
    shl-int v2, v1, p0

    .line 129
    .local v2, "pow2":I
    add-int/lit8 v3, v2, -0x1

    .line 130
    .local v3, "mask":I
    ushr-int/lit8 v4, v2, 0x1

    .line 132
    .local v4, "sign":I
    const/4 v5, 0x0

    .line 133
    .local v5, "carry":Z
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v7, 0x0

    .line 135
    .local v7, "pos":I
    :goto_31
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v7, v8, :cond_68

    .line 137
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v8, v5, :cond_40

    .line 139
    add-int/lit8 v7, v7, 0x1

    .line 140
    goto :goto_31

    .line 143
    :cond_40
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    and-int/2addr v8, v3

    .line 146
    .local v8, "digit":I
    if-eqz v5, :cond_4d

    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 151
    :cond_4d
    and-int v9, v8, v4

    if-eqz v9, :cond_53

    move v9, v1

    goto :goto_54

    :cond_53
    const/4 v9, 0x0

    :goto_54
    move v5, v9

    .line 152
    if-eqz v5, :cond_58

    .line 154
    sub-int/2addr v8, v2

    .line 157
    :cond_58
    if-lez v6, :cond_5d

    add-int/lit8 v9, v7, -0x1

    goto :goto_5e

    :cond_5d
    move v9, v7

    .line 158
    .local v9, "zeroes":I
    :goto_5e
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "length":I
    .local v10, "length":I
    shl-int/lit8 v11, v8, 0x10

    or-int/2addr v11, v9

    aput v11, v0, v6

    .line 159
    move v7, p0

    .line 160
    .end local v8    # "digit":I
    .end local v9    # "zeroes":I
    move v6, v10

    goto :goto_31

    .line 163
    .end local v10    # "length":I
    .restart local v6    # "length":I
    :cond_68
    array-length v1, v0

    if-le v1, v6, :cond_6f

    .line 165
    invoke-static {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v0

    .line 168
    :cond_6f
    return-object v0

    .line 118
    .end local v0    # "wnaf":[I
    .end local v2    # "pow2":I
    .end local v3    # "mask":I
    .end local v4    # "sign":I
    .end local v5    # "carry":Z
    .end local v6    # "length":I
    .end local v7    # "pos":I
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 17
    .param p0, "g"    # Ljava/math/BigInteger;
    .param p1, "h"    # Ljava/math/BigInteger;

    .line 173
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 174
    .local v0, "digits":I
    new-array v1, v0, [B

    .line 176
    .local v1, "jsf":[B
    move-object v2, p0

    .local v2, "k0":Ljava/math/BigInteger;
    move-object/from16 v3, p1

    .line 177
    .local v3, "k1":Ljava/math/BigInteger;
    const/4 v4, 0x0

    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "d0":I
    const/4 v6, 0x0

    .line 179
    .local v6, "d1":I
    const/4 v7, 0x0

    .line 180
    .local v7, "offset":I
    :goto_17
    or-int v8, v5, v6

    if-nez v8, :cond_30

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v8, v7, :cond_30

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-le v8, v7, :cond_28

    goto :goto_30

    .line 224
    :cond_28
    array-length v8, v1

    if-le v8, v4, :cond_2f

    .line 226
    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v1

    .line 229
    :cond_2f
    return-object v1

    .line 182
    :cond_30
    :goto_30
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    ushr-int/2addr v8, v7

    add-int/2addr v8, v5

    and-int/lit8 v8, v8, 0x7

    .local v8, "n0":I
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    ushr-int/2addr v9, v7

    add-int/2addr v9, v6

    and-int/lit8 v9, v9, 0x7

    .line 184
    .local v9, "n1":I
    and-int/lit8 v10, v8, 0x1

    .line 185
    .local v10, "u0":I
    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eqz v10, :cond_52

    .line 187
    and-int/lit8 v13, v8, 0x2

    sub-int/2addr v10, v13

    .line 188
    add-int v13, v8, v10

    if-ne v13, v11, :cond_52

    and-int/lit8 v13, v9, 0x3

    if-ne v13, v12, :cond_52

    .line 190
    neg-int v10, v10

    .line 194
    :cond_52
    and-int/lit8 v13, v9, 0x1

    .line 195
    .local v13, "u1":I
    if-eqz v13, :cond_62

    .line 197
    and-int/lit8 v14, v9, 0x2

    sub-int/2addr v13, v14

    .line 198
    add-int v14, v9, v13

    if-ne v14, v11, :cond_62

    and-int/lit8 v11, v8, 0x3

    if-ne v11, v12, :cond_62

    .line 200
    neg-int v13, v13

    .line 204
    :cond_62
    shl-int/lit8 v11, v5, 0x1

    add-int/lit8 v12, v10, 0x1

    if-ne v11, v12, :cond_6a

    .line 206
    xor-int/lit8 v5, v5, 0x1

    .line 208
    :cond_6a
    shl-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v13, 0x1

    if-ne v11, v12, :cond_72

    .line 210
    xor-int/lit8 v6, v6, 0x1

    .line 213
    :cond_72
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0x1e

    if-ne v7, v11, :cond_81

    .line 215
    const/4 v7, 0x0

    .line 216
    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 217
    invoke-virtual {v3, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 220
    :cond_81
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "j":I
    .local v11, "j":I
    shl-int/lit8 v12, v10, 0x4

    and-int/lit8 v14, v13, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v4

    .line 221
    .end local v8    # "n0":I
    .end local v9    # "n1":I
    .end local v10    # "u0":I
    .end local v13    # "u1":I
    move v4, v11

    goto :goto_17
.end method

.method public static blacklist generateNaf(Ljava/math/BigInteger;)[B
    .registers 9
    .param p0, "k"    # Ljava/math/BigInteger;

    .line 234
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_9

    .line 236
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v0

    .line 239
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 241
    .local v1, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v2, v0

    .line 242
    .local v2, "digits":I
    new-array v3, v2, [B

    .line 244
    .local v3, "naf":[B
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 246
    .local v4, "diff":Ljava/math/BigInteger;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1e
    if-ge v5, v2, :cond_38

    .line 248
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 250
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v7, -0x1

    goto :goto_31

    :cond_30
    move v7, v0

    :goto_31
    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 251
    add-int/lit8 v5, v5, 0x1

    .line 246
    :cond_36
    add-int/2addr v5, v0

    goto :goto_1e

    .line 255
    .end local v5    # "i":I
    :cond_38
    add-int/lit8 v5, v2, -0x1

    aput-byte v0, v3, v5

    .line 257
    return-object v3
.end method

.method public static blacklist generateWindowNaf(ILjava/math/BigInteger;)[B
    .registers 13
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 274
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 276
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    .line 279
    :cond_8
    if-lt p0, v0, :cond_66

    const/16 v0, 0x8

    if-gt p0, v0, :cond_66

    .line 283
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_17

    .line 285
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v0

    .line 288
    :cond_17
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 291
    .local v0, "wnaf":[B
    shl-int v2, v1, p0

    .line 292
    .local v2, "pow2":I
    add-int/lit8 v3, v2, -0x1

    .line 293
    .local v3, "mask":I
    ushr-int/lit8 v4, v2, 0x1

    .line 295
    .local v4, "sign":I
    const/4 v5, 0x0

    .line 296
    .local v5, "carry":Z
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v7, 0x0

    .line 298
    .local v7, "pos":I
    :goto_28
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v7, v8, :cond_5e

    .line 300
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v8, v5, :cond_37

    .line 302
    add-int/lit8 v7, v7, 0x1

    .line 303
    goto :goto_28

    .line 306
    :cond_37
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    and-int/2addr v8, v3

    .line 309
    .local v8, "digit":I
    if-eqz v5, :cond_44

    .line 311
    add-int/lit8 v8, v8, 0x1

    .line 314
    :cond_44
    and-int v9, v8, v4

    if-eqz v9, :cond_4a

    move v9, v1

    goto :goto_4b

    :cond_4a
    const/4 v9, 0x0

    :goto_4b
    move v5, v9

    .line 315
    if-eqz v5, :cond_4f

    .line 317
    sub-int/2addr v8, v2

    .line 320
    :cond_4f
    if-lez v6, :cond_54

    add-int/lit8 v9, v7, -0x1

    goto :goto_55

    :cond_54
    move v9, v7

    :goto_55
    add-int/2addr v6, v9

    .line 321
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "length":I
    .local v9, "length":I
    int-to-byte v10, v8

    aput-byte v10, v0, v6

    .line 322
    move v7, p0

    .line 323
    .end local v8    # "digit":I
    move v6, v9

    goto :goto_28

    .line 326
    .end local v9    # "length":I
    .restart local v6    # "length":I
    :cond_5e
    array-length v1, v0

    if-le v1, v6, :cond_65

    .line 328
    invoke-static {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    .line 331
    :cond_65
    return-object v0

    .line 281
    .end local v0    # "wnaf":[B
    .end local v2    # "pow2":I
    .end local v3    # "mask":I
    .end local v4    # "sign":I
    .end local v5    # "carry":Z
    .end local v6    # "length":I
    .end local v7    # "pos":I
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 8]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getNafWeight(Ljava/math/BigInteger;)I
    .registers 4
    .param p0, "k"    # Ljava/math/BigInteger;

    .line 336
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_8

    .line 338
    const/4 v0, 0x0

    return v0

    .line 341
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 342
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 344
    .local v1, "diff":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitCount()I

    move-result v2

    return v2
.end method

.method public static blacklist getWNafPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 3
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getWNafPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 2
    .param p0, "preCompInfo"    # Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    .line 354
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static blacklist getWindowSize(I)I
    .registers 3
    .param p0, "bits"    # I

    .line 365
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static blacklist getWindowSize(II)I
    .registers 3
    .param p0, "bits"    # I
    .param p1, "maxWidth"    # I

    .line 377
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static blacklist getWindowSize(I[I)I
    .registers 3
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I

    .line 389
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static blacklist getWindowSize(I[II)I
    .registers 6
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I
    .param p2, "maxWidth"    # I

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "w":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 405
    aget v1, p1, v0

    if-ge p0, v1, :cond_9

    .line 407
    goto :goto_c

    .line 403
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 411
    :cond_c
    :goto_c
    add-int/lit8 v1, v0, 0x2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 6
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p1, "minWidth"    # I
    .param p2, "includeNegated"    # Z

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 418
    .local v0, "c":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;

    invoke-direct {v1, p1, p2, p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;-><init>(IZLcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)V

    const-string v2, "bc_wnaf"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    return-object v1
.end method

.method public static blacklist precomputeWithPointMap(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;Z)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 7
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p1, "pointMap"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;
    .param p2, "fromWNaf"    # Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .param p3, "includeNegated"    # Z

    .line 596
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 598
    .local v0, "c":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;ZLcom/android/internal/org/bouncycastle/math/ec/ECPointMap;)V

    const-string v2, "bc_wnaf"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    return-object v1
.end method

.method private static blacklist resizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p0, "a"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p1, "length"    # I

    .line 681
    new-array v0, p1, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 682
    .local v0, "result":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    return-object v0
.end method

.method private static blacklist trim([BI)[B
    .registers 5
    .param p0, "a"    # [B
    .param p1, "length"    # I

    .line 667
    new-array v0, p1, [B

    .line 668
    .local v0, "result":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    return-object v0
.end method

.method private static blacklist trim([II)[I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "length"    # I

    .line 674
    new-array v0, p1, [I

    .line 675
    .local v0, "result":[I
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    return-object v0
.end method
