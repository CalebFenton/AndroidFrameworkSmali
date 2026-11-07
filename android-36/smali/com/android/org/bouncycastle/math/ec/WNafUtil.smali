.class public abstract Lcom/android/org/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static final blacklist DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final blacklist EMPTY_BYTES:[B

.field private static final blacklist EMPTY_INTS:[I

.field private static final blacklist EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_POINTS()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smresizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    const/4 v0, 0x0

    .line 16
    new-array v1, v0, [B

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 17
    new-array v1, v0, [I

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    .line 18
    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

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

.method public static blacklist configureBasepoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 4

    .line 22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 28
    :cond_7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_14

    .line 29
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 30
    :goto_18
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 32
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;-><init>(I)V

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    return-void
.end method

.method public static blacklist generateCompactNaf(Ljava/math/BigInteger;)[I
    .registers 11

    .line 64
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5a

    .line 68
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_11

    .line 70
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object p0

    :cond_11
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    shr-int/lit8 v3, v2, 0x1

    .line 76
    new-array v4, v3, [I

    .line 78
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sub-int/2addr v2, v0

    const/4 v5, 0x0

    move v7, v0

    move v6, v5

    :goto_2a
    if-ge v7, v2, :cond_4b

    .line 83
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-nez v8, :cond_35

    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 89
    :cond_35
    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_3d

    const/4 v8, -0x1

    goto :goto_3e

    :cond_3d
    move v8, v0

    :goto_3e
    add-int/lit8 v9, v5, 0x1

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v6, v8

    .line 90
    aput v6, v4, v5

    add-int/lit8 v7, v7, 0x1

    move v6, v0

    move v5, v9

    :goto_49
    add-int/2addr v7, v0

    goto :goto_2a

    :cond_4b
    add-int/lit8 p0, v5, 0x1

    const/high16 v0, 0x10000

    or-int/2addr v0, v6

    .line 95
    aput v0, v4, v5

    if-le v3, p0, :cond_59

    .line 99
    invoke-static {v4, p0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object p0

    return-object p0

    :cond_59
    return-object v4

    .line 66
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'k\' must have bitlength < 2^16"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .registers 15

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 109
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object p0

    return-object p0

    :cond_8
    if-lt p0, v0, :cond_74

    const/16 v0, 0x10

    if-gt p0, v0, :cond_74

    .line 116
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/2addr v1, v0

    if-nez v1, :cond_6c

    .line 120
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_1e

    .line 122
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object p0

    .line 125
    :cond_1e
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/2addr v1, p0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [I

    shl-int v4, v2, p0

    add-int/lit8 v5, v4, -0x1

    ushr-int/lit8 v6, v4, 0x1

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    move v10, v9

    .line 135
    :goto_31
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    if-gt v8, v11, :cond_64

    .line 137
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-ne v11, v10, :cond_40

    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 143
    :cond_40
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    and-int/2addr v11, v5

    if-eqz v10, :cond_4d

    add-int/lit8 v11, v11, 0x1

    :cond_4d
    and-int v10, v11, v6

    if-eqz v10, :cond_53

    move v10, v2

    goto :goto_54

    :cond_53
    move v10, v7

    :goto_54
    if-eqz v10, :cond_57

    sub-int/2addr v11, v4

    :cond_57
    if-lez v9, :cond_5b

    add-int/lit8 v8, v8, -0x1

    :cond_5b
    add-int/lit8 v12, v9, 0x1

    shl-int/2addr v11, v0

    or-int/2addr v8, v11

    .line 158
    aput v8, v3, v9

    move v8, p0

    move v9, v12

    goto :goto_31

    :cond_64
    if-le v1, v9, :cond_6b

    .line 165
    invoke-static {v3, v9}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object p0

    return-object p0

    :cond_6b
    return-object v3

    .line 118
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'k\' must have bitlength < 2^16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'width\' must be in the range [2, 16]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 19

    .line 173
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 174
    new-array v1, v0, [B

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v5, v2

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_19
    or-int v9, v5, v6

    if-nez v9, :cond_32

    .line 180
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-gt v9, v7, :cond_32

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-le v9, v7, :cond_2a

    goto :goto_32

    :cond_2a
    if-le v0, v8, :cond_31

    .line 226
    invoke-static {v1, v8}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    return-object v0

    :cond_31
    return-object v1

    .line 182
    :cond_32
    :goto_32
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    ushr-int/2addr v9, v7

    add-int/2addr v9, v5

    and-int/lit8 v10, v9, 0x7

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    ushr-int/2addr v11, v7

    add-int/2addr v11, v6

    and-int/lit8 v12, v11, 0x7

    and-int/lit8 v13, v9, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-eqz v13, :cond_54

    and-int/lit8 v16, v9, 0x2

    sub-int v13, v13, v16

    add-int/2addr v10, v13

    if-ne v10, v14, :cond_54

    and-int/lit8 v10, v11, 0x3

    if-ne v10, v15, :cond_54

    neg-int v13, v13

    :cond_54
    and-int/lit8 v10, v11, 0x1

    if-eqz v10, :cond_63

    and-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int/2addr v12, v10

    if-ne v12, v14, :cond_63

    and-int/lit8 v9, v9, 0x3

    if-ne v9, v15, :cond_63

    neg-int v10, v10

    :cond_63
    shl-int/lit8 v9, v5, 0x1

    add-int/lit8 v11, v13, 0x1

    if-ne v9, v11, :cond_6b

    xor-int/lit8 v5, v5, 0x1

    :cond_6b
    shl-int/lit8 v9, v6, 0x1

    add-int/lit8 v11, v10, 0x1

    if-ne v9, v11, :cond_73

    xor-int/lit8 v6, v6, 0x1

    :cond_73
    add-int/lit8 v7, v7, 0x1

    const/16 v9, 0x1e

    if-ne v7, v9, :cond_82

    .line 216
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 217
    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    move v7, v2

    :cond_82
    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v11, v13, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v10, v11

    int-to-byte v10, v10

    .line 220
    aput-byte v10, v1, v8

    move v8, v9

    goto :goto_19
.end method

.method public static blacklist generateNaf(Ljava/math/BigInteger;)[B
    .registers 9

    .line 234
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_9

    .line 236
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object p0

    :cond_9
    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 242
    new-array v4, v3, [B

    .line 244
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move v5, v0

    :goto_1f
    if-ge v5, v3, :cond_39

    .line 248
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_37

    add-int/lit8 v6, v5, -0x1

    .line 250
    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_31

    const/4 v7, -0x1

    goto :goto_32

    :cond_31
    move v7, v0

    :goto_32
    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    :cond_37
    add-int/2addr v5, v0

    goto :goto_1f

    :cond_39
    add-int/lit8 v2, v2, -0x2

    .line 255
    aput-byte v0, v4, v2

    return-object v4
.end method

.method public static blacklist generateWindowNaf(ILjava/math/BigInteger;)[B
    .registers 13

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 276
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0

    :cond_8
    if-lt p0, v0, :cond_64

    const/16 v0, 0x8

    if-gt p0, v0, :cond_64

    .line 283
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_17

    .line 285
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object p0

    .line 288
    :cond_17
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v2, v0, [B

    shl-int v3, v1, p0

    add-int/lit8 v4, v3, -0x1

    ushr-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    .line 298
    :goto_29
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt v7, v10, :cond_5c

    .line 300
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-ne v10, v9, :cond_38

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 306
    :cond_38
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    and-int/2addr v10, v4

    if-eqz v9, :cond_45

    add-int/lit8 v10, v10, 0x1

    :cond_45
    and-int v9, v10, v5

    if-eqz v9, :cond_4b

    move v9, v1

    goto :goto_4c

    :cond_4b
    move v9, v6

    :goto_4c
    if-eqz v9, :cond_4f

    sub-int/2addr v10, v3

    :cond_4f
    if-lez v8, :cond_53

    add-int/lit8 v7, v7, -0x1

    :cond_53
    add-int/2addr v8, v7

    add-int/lit8 v7, v8, 0x1

    int-to-byte v10, v10

    .line 321
    aput-byte v10, v2, v8

    move v8, v7

    move v7, p0

    goto :goto_29

    :cond_5c
    if-le v0, v8, :cond_63

    .line 328
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object p0

    return-object p0

    :cond_63
    return-object v2

    .line 281
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'width\' must be in the range [2, 8]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getNafWeight(Ljava/math/BigInteger;)I
    .registers 2

    .line 336
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 v0, 0x1

    .line 341
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitCount()I

    move-result p0

    return p0
.end method

.method public static blacklist getWindowSize(I)I
    .registers 3

    .line 365
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist getWindowSize(II)I
    .registers 3

    .line 377
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist getWindowSize(I[II)I
    .registers 5

    const/4 v0, 0x0

    .line 403
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 405
    aget v1, p1, v0

    if-ge p0, v1, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    :goto_c
    const/4 p0, 0x2

    add-int/2addr v0, p0

    .line 411
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static blacklist precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 5

    .line 416
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 418
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;

    invoke-direct {v1, p1, p2, p0, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;-><init>(IZLcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECCurve;)V

    const-string p1, "bc_wnaf"

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    return-object p0
.end method

.method public static blacklist precomputeWithPointMap(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;Z)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 6

    .line 596
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 598
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;-><init>(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;ZLcom/android/org/bouncycastle/math/ec/ECPointMap;)V

    const-string p1, "bc_wnaf"

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    return-object p0
.end method

.method private static blacklist resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 681
    new-array p1, p1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 682
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static blacklist trim([BI)[B
    .registers 4

    .line 667
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 668
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static blacklist trim([II)[I
    .registers 4

    .line 674
    new-array v0, p1, [I

    const/4 v1, 0x0

    .line 675
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
