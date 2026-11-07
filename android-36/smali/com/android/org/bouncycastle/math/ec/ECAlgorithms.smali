.class public Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cleanPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 229
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 232
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 240
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValidPartial()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 242
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid result"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist implShamirsTrickFixedPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 551
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    move-result v3

    .line 553
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-gt v4, v3, :cond_a4

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-gt v4, v3, :cond_a4

    .line 564
    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v4

    .line 565
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v5

    .line 567
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lcom/android/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object v6

    .line 568
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lcom/android/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object v7

    .line 570
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v8

    .line 571
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v9

    if-eq v8, v9, :cond_48

    .line 576
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    move-object/from16 v3, p0

    .line 577
    invoke-virtual {v2, v3, v0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    move-object/from16 v3, p2

    .line 578
    invoke-virtual {v2, v3, v1}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 579
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_48
    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x1

    .line 584
    div-int/2addr v3, v8

    .line 586
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    mul-int/2addr v8, v3

    .line 589
    invoke-static {v8, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 590
    invoke-static {v8, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v1

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    move v10, v9

    :goto_5d
    if-ge v10, v3, :cond_93

    sub-int v11, v8, v10

    move v12, v9

    move v13, v12

    :goto_63
    if-ltz v11, :cond_80

    ushr-int/lit8 v14, v11, 0x5

    .line 599
    aget v15, v0, v14

    and-int/lit8 v16, v11, 0x1f

    ushr-int v15, v15, v16

    ushr-int/lit8 v17, v15, 0x1

    xor-int v12, v12, v17

    shl-int/lit8 v12, v12, 0x1

    xor-int/2addr v12, v15

    .line 604
    aget v14, v1, v14

    ushr-int v14, v14, v16

    ushr-int/lit8 v15, v14, 0x1

    xor-int/2addr v13, v15

    shl-int/lit8 v13, v13, 0x1

    xor-int/2addr v13, v14

    sub-int/2addr v11, v3

    goto :goto_63

    .line 610
    :cond_80
    invoke-interface {v6, v12}, Lcom/android/org/bouncycastle/math/ec/ECLookupTable;->lookupVar(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 611
    invoke-interface {v7, v13}, Lcom/android/org/bouncycastle/math/ec/ECLookupTable;->lookupVar(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    .line 613
    invoke-virtual {v11, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 615
    invoke-virtual {v2, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_5d

    .line 618
    :cond_93
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 561
    :cond_a4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist implShamirsTrickJsf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 15

    .line 251
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 255
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 256
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 258
    filled-new-array {p2, v2, p0, v1}, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 259
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    const/4 p2, 0x3

    .line 261
    aget-object v0, p0, p2

    .line 262
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    const/4 v0, 0x2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v7, p0, v6

    .line 263
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    aget-object v6, p0, v6

    aget-object v3, p0, v3

    aget-object v8, p0, v0

    aget-object v9, p0, p2

    move-object v10, v7

    move-object v7, v3

    move-object v3, v4

    move-object v4, v10

    filled-new-array/range {v1 .. v9}, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 266
    invoke-static {p1, p3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p1

    .line 270
    array-length p3, p1

    :goto_48
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_61

    .line 273
    aget-byte v0, p1, p3

    shl-int/lit8 v1, v0, 0x18

    shr-int/lit8 v1, v1, 0x1c

    shl-int/lit8 v0, v0, 0x1c

    shr-int/lit8 v0, v0, 0x1c

    mul-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    .line 279
    aget-object v0, p0, v1

    invoke-virtual {v5, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_48

    :cond_61
    return-object v5
.end method

.method static blacklist implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 16

    .line 288
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_12

    move v1, v2

    .line 290
    :cond_12
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    .line 292
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v5

    .line 293
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    invoke-static {v7, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v7

    .line 295
    invoke-static {p0, v5, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v5

    .line 296
    invoke-static {p2, v7, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    .line 301
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    move-result v7

    if-nez v0, :cond_5d

    if-nez v1, :cond_5d

    .line 303
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v8, v7, :cond_5d

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v8, v7, :cond_5d

    .line 304
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->isPromoted()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->isPromoted()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 306
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickFixedPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 310
    :cond_5d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result p0

    invoke-static {v6, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 311
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eqz v0, :cond_75

    .line 313
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    :goto_73
    move-object v6, p2

    goto :goto_7a

    :cond_75
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    goto :goto_73

    :goto_7a
    if-eqz v1, :cond_82

    .line 314
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    :goto_80
    move-object v9, p2

    goto :goto_87

    :cond_82
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    goto :goto_80

    :goto_87
    if-eqz v0, :cond_8f

    .line 315
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    :goto_8d
    move-object v7, p2

    goto :goto_94

    :cond_8f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    goto :goto_8d

    :goto_94
    if-eqz v1, :cond_9c

    .line 316
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    :goto_9a
    move-object v10, p2

    goto :goto_a1

    :cond_9c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    goto :goto_9a

    .line 318
    :goto_a1
    invoke-static {p0, v3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v8

    .line 319
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v11

    .line 321
    invoke-static/range {v6 .. v11}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static blacklist implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 15

    .line 326
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_12

    move v1, v2

    .line 328
    :cond_12
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    .line 329
    invoke-virtual {p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 331
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v3

    .line 333
    invoke-static {p1, v3, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v3

    .line 334
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 335
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    move-result-object p0

    invoke-static {p1, p0, v3, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;Z)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object p0

    .line 337
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 338
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz v0, :cond_54

    .line 340
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    :goto_52
    move-object v5, v4

    goto :goto_59

    :cond_54
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    goto :goto_52

    :goto_59
    if-eqz v1, :cond_61

    .line 341
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    :goto_5f
    move-object v8, v4

    goto :goto_66

    :cond_61
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    goto :goto_5f

    :goto_66
    if-eqz v0, :cond_6e

    .line 342
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_6c
    move-object v6, v0

    goto :goto_73

    :cond_6e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_6c

    :goto_73
    if-eqz v1, :cond_7b

    .line 343
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    :goto_79
    move-object v9, p0

    goto :goto_80

    :cond_7b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_79

    .line 345
    :goto_80
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v7

    .line 346
    invoke-static {v2, p3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v10

    .line 348
    invoke-static/range {v5 .. v10}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 14

    .line 354
    array-length v0, p2

    array-length v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    .line 356
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move-object v4, v2

    :goto_15
    if-ltz v0, :cond_62

    .line 364
    array-length v5, p2

    if-ge v0, v5, :cond_1d

    aget-byte v5, p2, v0

    goto :goto_1e

    :cond_1d
    move v5, v1

    .line 365
    :goto_1e
    array-length v6, p5

    if-ge v0, v6, :cond_24

    aget-byte v6, p5, v0

    goto :goto_25

    :cond_24
    move v6, v1

    :goto_25
    or-int v7, v5, v6

    if-nez v7, :cond_2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_2c
    if-eqz v5, :cond_40

    .line 376
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v5, :cond_36

    move-object v5, p1

    goto :goto_37

    :cond_36
    move-object v5, p0

    :goto_37
    ushr-int/lit8 v7, v7, 0x1

    .line 378
    aget-object v5, v5, v7

    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_41

    :cond_40
    move-object v5, v2

    :goto_41
    if-eqz v6, :cond_54

    .line 382
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v6, :cond_4b

    move-object v6, p4

    goto :goto_4c

    :cond_4b
    move-object v6, p3

    :goto_4c
    ushr-int/lit8 v7, v7, 0x1

    .line 384
    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    :cond_54
    if-lez v3, :cond_5b

    .line 389
    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    move v3, v1

    .line 393
    :cond_5b
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    :goto_5f
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_62
    if-lez v3, :cond_69

    .line 398
    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_69
    return-object v4
.end method

.method static blacklist implSumOfMultiplies(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19

    move-object/from16 v0, p1

    .line 460
    array-length v1, v0

    shl-int/lit8 v2, v1, 0x1

    .line 462
    new-array v3, v2, [Z

    .line 463
    new-array v4, v2, [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .line 464
    new-array v2, v2, [[B

    .line 466
    invoke-interface/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    move-result-object v5

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v1, :cond_80

    shl-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v8, 0x1

    .line 472
    aget-object v10, p2, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v11

    const/4 v12, 0x1

    if-gez v11, :cond_21

    move v11, v12

    goto :goto_22

    :cond_21
    const/4 v11, 0x0

    :goto_22
    aput-boolean v11, v3, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    .line 473
    aget-object v11, p2, v9

    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_32

    move v13, v12

    goto :goto_33

    :cond_32
    const/4 v13, 0x0

    :goto_33
    aput-boolean v13, v3, v9

    invoke-virtual {v11}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    .line 475
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/16 v14, 0x8

    invoke-static {v13, v14}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v13

    .line 477
    aget-object v15, v0, v7

    .line 478
    invoke-static {v15, v13, v12}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v13

    move-object/from16 v6, p0

    .line 479
    invoke-static {v6, v15}, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    .line 480
    invoke-static {v15, v5, v13, v12}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;Z)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v12

    .line 482
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 483
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 485
    aput-object v13, v4, v8

    .line 486
    aput-object v12, v4, v9

    .line 487
    invoke-static {v15, v10}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v10

    aput-object v10, v2, v8

    .line 488
    invoke-static {v0, v11}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v0

    aput-object v0, v2, v9

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_10

    .line 491
    :cond_80
    invoke-static {v3, v4, v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static blacklist implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 13

    .line 406
    array-length v0, p0

    .line 407
    new-array v1, v0, [Z

    .line 408
    new-array v2, v0, [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .line 409
    new-array v3, v0, [[B

    const/4 v4, 0x0

    move v5, v4

    :goto_9
    if-ge v5, v0, :cond_40

    .line 413
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v7

    const/4 v8, 0x1

    if-gez v7, :cond_16

    move v7, v8

    goto :goto_17

    :cond_16
    move v7, v4

    :goto_17
    aput-boolean v7, v1, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v6

    .line 415
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v9, 0x8

    invoke-static {v7, v9}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v7

    .line 416
    aget-object v10, p0, v5

    invoke-static {v10, v7, v8}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    .line 418
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 420
    aput-object v7, v2, v5

    .line 421
    invoke-static {v8, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 424
    :cond_40
    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 16

    .line 496
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_10

    .line 499
    aget-object v4, p2, v2

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 502
    :cond_10
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v5, v1

    move-object v6, v2

    :goto_24
    if-ltz v3, :cond_6a

    move v7, v1

    move-object v8, v2

    :goto_28
    if-ge v7, v0, :cond_57

    .line 514
    aget-object v9, p2, v7

    .line 515
    array-length v10, v9

    if-ge v3, v10, :cond_32

    aget-byte v9, v9, v3

    goto :goto_33

    :cond_32
    move v9, v1

    :goto_33
    if-eqz v9, :cond_54

    .line 518
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 519
    aget-object v11, p1, v7

    if-gez v9, :cond_3f

    move v9, v4

    goto :goto_40

    :cond_3f
    move v9, v1

    .line 520
    :goto_40
    aget-boolean v12, p0, v7

    if-ne v9, v12, :cond_49

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_4d

    :cond_49
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    :goto_4d
    ushr-int/2addr v10, v4

    .line 521
    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    :cond_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_57
    if-ne v8, v2, :cond_5c

    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :cond_5c
    if-lez v5, :cond_63

    .line 533
    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    move v5, v1

    .line 537
    :cond_63
    invoke-virtual {v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    :goto_67
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    :cond_6a
    if-lez v5, :cond_71

    .line 542
    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_71
    return-object v6
.end method

.method static blacklist implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 13

    const/4 v0, 0x0

    .line 429
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    .line 431
    array-length v2, p0

    shl-int/lit8 v3, v2, 0x1

    .line 433
    new-array v4, v3, [Ljava/math/BigInteger;

    move v5, v0

    move v6, v5

    :goto_12
    if-ge v5, v2, :cond_2e

    .line 436
    aget-object v7, p1, v5

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    .line 437
    aget-object v9, v7, v0

    aput-object v9, v4, v6

    add-int/lit8 v6, v6, 0x2

    const/4 v9, 0x1

    .line 438
    aget-object v7, v7, v9

    aput-object v7, v4, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 441
    :cond_2e
    invoke-interface {p2}, Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;->hasEfficientPointMap()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 443
    invoke-static {p2, p0, v4}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 446
    :cond_39
    new-array p1, v3, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move v1, v0

    :goto_3c
    if-ge v0, v2, :cond_4f

    .line 449
    aget-object v3, p0, v0

    .line 450
    invoke-static {p2, v3}, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    .line 451
    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x2

    .line 452
    aput-object v5, p1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 455
    :cond_4f
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 132
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 135
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist isF2mCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isF2mField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isF2mField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z
    .registers 4

    .line 25
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    instance-of p0, p0, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    if-eqz p0, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isFpField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z
    .registers 2

    .line 36
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;II)V
    .registers 4

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method public static blacklist montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 8

    .line 154
    new-array v0, p2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 155
    aget-object v1, p0, p1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_7
    add-int/lit8 v1, v2, 0x1

    if-ge v1, p2, :cond_19

    .line 160
    aget-object v2, v0, v2

    add-int v3, p1, v1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    move v2, v1

    goto :goto_7

    :cond_19
    if-eqz p3, :cond_23

    .line 167
    aget-object p2, v0, v2

    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    aput-object p2, v0, v2

    .line 170
    :cond_23
    aget-object p2, v0, v2

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    :goto_29
    if-lez v2, :cond_3e

    add-int/lit8 p3, v2, -0x1

    add-int/2addr v2, p1

    .line 175
    aget-object v1, p0, v2

    .line 176
    aget-object v3, v0, p3

    invoke-virtual {v3, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    aput-object v3, p0, v2

    .line 177
    invoke-virtual {p2, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    move v2, p3

    goto :goto_29

    .line 180
    :cond_3e
    aput-object p2, p0, p1

    return-void
.end method

.method public static blacklist referenceMultiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .line 196
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 198
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lez v2, :cond_2e

    const/4 v3, 0x0

    .line 201
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v1, p0

    :cond_1a
    const/4 v3, 0x1

    :goto_1b
    if-ge v3, v2, :cond_2e

    .line 207
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 208
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 210
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 214
    :cond_2e
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_39

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_39
    return-object v1
.end method

.method public static blacklist shamirsTrick(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 124
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 125
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 127
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickJsf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist sumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    if-eqz p0, :cond_5c

    if-eqz p1, :cond_5c

    .line 41
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_5c

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5c

    .line 46
    array-length v0, p0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_53

    const/4 v3, 0x2

    if-eq v0, v3, :cond_46

    .line 57
    aget-object v3, p0, v2

    .line 58
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 60
    new-array v5, v0, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 61
    aput-object v3, v5, v2

    :goto_1d
    if-ge v1, v0, :cond_2a

    .line 64
    aget-object v2, p0, v1

    invoke-static {v4, v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 67
    :cond_2a
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object p0

    .line 68
    instance-of v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_3d

    .line 70
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v5, p1, p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 73
    :cond_3d
    invoke-static {v5, p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 52
    :cond_46
    aget-object v0, p0, v2

    aget-object v2, p1, v2

    aget-object p0, p0, v1

    aget-object p1, p1, v1

    invoke-static {v0, v2, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 50
    :cond_53
    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 43
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 79
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 80
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 83
    instance-of v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    if-eqz v1, :cond_26

    .line 85
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 86
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 92
    :cond_26
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v0

    .line 93
    instance-of v1, v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v1, :cond_46

    .line 95
    filled-new-array {p0, p2}, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const/4 p1, 0x1

    aput-object p3, p2, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 96
    invoke-static {p0, p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 95
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 99
    :cond_46
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 219
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 221
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid point"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
