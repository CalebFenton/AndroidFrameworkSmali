.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# static fields
.field public static final blacklist COORD_AFFINE:I = 0x0

.field public static final blacklist COORD_HOMOGENEOUS:I = 0x1

.field public static final blacklist COORD_JACOBIAN:I = 0x2

.field public static final blacklist COORD_JACOBIAN_CHUDNOVSKY:I = 0x3

.field public static final blacklist COORD_JACOBIAN_MODIFIED:I = 0x4

.field public static final blacklist COORD_LAMBDA_AFFINE:I = 0x5

.field public static final blacklist COORD_LAMBDA_PROJECTIVE:I = 0x6

.field public static final blacklist COORD_SKEWED:I = 0x7


# instance fields
.field protected blacklist a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist cofactor:Ljava/math/BigInteger;

.field protected blacklist coord:I

.field protected blacklist endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist field:Lcom/android/org/bouncycastle/math/field/FiniteField;

.field protected blacklist multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

.field protected blacklist order:Ljava/math/BigInteger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetNumberOfIterations(II)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getNumberOfIterations(II)I

    move-result p0

    return p0
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 109
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 113
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/org/bouncycastle/math/field/FiniteField;

    return-void
.end method

.method public static blacklist getAllCoordinateSystems()[I
    .registers 1

    const/16 v0, 0x8

    .line 40
    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private static blacklist getNumberOfIterations(II)I
    .registers 6

    const/16 v0, 0x600

    const/4 v1, 0x4

    const/16 v2, 0x64

    if-lt p0, v0, :cond_16

    if-gt p1, v2, :cond_b

    const/4 p0, 0x3

    return p0

    :cond_b
    const/16 p0, 0x80

    if-gt p1, p0, :cond_10

    return v1

    :cond_10
    add-int/lit8 p1, p1, -0x7f

    .line 1454
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    return p1

    :cond_16
    const/16 v0, 0x400

    const/4 v3, 0x5

    if-lt p0, v0, :cond_29

    if-gt p1, v2, :cond_1e

    return v1

    :cond_1e
    const/16 p0, 0x70

    if-gt p1, p0, :cond_23

    return v3

    :cond_23
    add-int/lit8 p1, p1, -0x6f

    .line 1460
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v3

    return p1

    :cond_29
    const/16 v0, 0x200

    const/16 v1, 0x50

    if-lt p0, v0, :cond_3c

    if-gt p1, v1, :cond_32

    return v3

    :cond_32
    const/4 p0, 0x7

    if-gt p1, v2, :cond_36

    return p0

    :cond_36
    add-int/lit8 p1, p1, -0x63

    .line 1466
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    return p1

    :cond_3c
    const/16 p0, 0x28

    if-gt p1, v1, :cond_41

    return p0

    :cond_41
    add-int/lit8 p1, p1, -0x4f

    .line 1471
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method protected blacklist checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 541
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-void

    .line 543
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'point\' must be non-null and on this curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V
    .registers 6

    if-eqz p1, :cond_2e

    if-ltz p2, :cond_26

    if-ltz p3, :cond_26

    .line 558
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_26

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_25

    add-int v1, p2, v0

    .line 565
    aget-object v1, p1, v1

    if-eqz v1, :cond_22

    .line 566
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    if-ne p0, v1, :cond_1a

    goto :goto_22

    .line 568
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'points\' entries must be null or on this curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_25
    return-void

    .line 560
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid range specified for \'points\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 556
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'points\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract blacklist cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end method

.method public declared-synchronized blacklist configure()Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 5

    monitor-enter p0

    .line 128
    :try_start_1
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;ILcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public blacklist createCacheSafeLookupTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/org/bouncycastle/math/ec/ECLookupTable;
    .registers 16

    .line 471
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    mul-int v1, p3, v0

    mul-int/lit8 v1, v1, 0x2

    .line 473
    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_11
    if-ge v3, p3, :cond_4e

    add-int v5, p2, v3

    .line 478
    aget-object v5, p1, v5

    .line 479
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 480
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 482
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v0, :cond_35

    move v7, v8

    goto :goto_36

    :cond_35
    move v7, v2

    :goto_36
    array-length v9, v6

    sub-int/2addr v9, v7

    .line 483
    array-length v10, v5

    if-le v10, v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v8, v2

    :goto_3d
    array-length v10, v5

    sub-int/2addr v10, v8

    add-int/2addr v4, v0

    sub-int v11, v4, v9

    .line 485
    invoke-static {v6, v7, v1, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v0

    sub-int v6, v4, v10

    .line 486
    invoke-static {v5, v8, v1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 490
    :cond_4e
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;

    invoke-direct {p1, p0, p3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;II[B)V

    return-object p1
.end method

.method protected blacklist createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    instance-of v1, v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v1, :cond_e

    .line 156
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V

    return-object v1

    .line 159
    :cond_e
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;-><init>()V

    return-object p0
.end method

.method public blacklist createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method protected abstract blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected abstract blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9

    .line 387
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    const/4 v1, 0x7

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    .line 389
    aget-byte v3, p1, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_ab

    const/4 v5, 0x2

    if-eq v3, v5, :cond_85

    const/4 v5, 0x3

    if-eq v3, v5, :cond_85

    const/4 v5, 0x4

    if-eq v3, v5, :cond_68

    const/4 v5, 0x6

    if-eq v3, v5, :cond_3a

    if-ne v3, v1, :cond_1d

    goto :goto_3a

    .line 454
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid point encoding 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 437
    :cond_3a
    :goto_3a
    array-length v5, p1

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    if-ne v5, v6, :cond_60

    .line 442
    invoke-static {p1, v4, v0}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    .line 443
    invoke-static {p1, v6, v0}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-ne v3, v1, :cond_51

    move v2, v4

    :cond_51
    if-ne v0, v2, :cond_58

    .line 450
    invoke-virtual {p0, v5, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_b2

    .line 447
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for hybrid encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 423
    :cond_68
    array-length v1, p1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v4

    if-ne v1, v2, :cond_7d

    .line 428
    invoke-static {p1, v4, v0}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 429
    invoke-static {p1, v2, v0}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 431
    invoke-virtual {p0, v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_b2

    .line 425
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for uncompressed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 405
    :cond_85
    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_a3

    and-int/lit8 v1, v3, 0x1

    .line 411
    invoke-static {p1, v4, v0}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 413
    invoke-virtual {p0, v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 414
    invoke-virtual {p0, v4, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result p1

    if-eqz p1, :cond_9b

    goto :goto_b2

    .line 416
    :cond_9b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 407
    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for compressed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 394
    :cond_ab
    array-length p1, p1

    if-ne p1, v4, :cond_c4

    .line 399
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    :goto_b2
    if-eqz v3, :cond_c3

    .line 457
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result p1

    if-nez p1, :cond_bb

    goto :goto_c3

    .line 459
    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid infinity encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c3
    :goto_c3
    return-object p0

    .line 396
    :cond_c4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for infinity encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract blacklist decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 4

    if-eq p0, p1, :cond_41

    if-eqz p1, :cond_3f

    .line 577
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 578
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 579
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p0, 0x0

    return p0

    :cond_41
    :goto_41
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_11

    .line 584
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public abstract blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0
.end method

.method public blacklist getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0
.end method

.method public blacklist getCofactor()Ljava/math/BigInteger;
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getCoordinateSystem()I
    .registers 1

    .line 354
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    return p0
.end method

.method public blacklist getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object p0
.end method

.method public blacklist getField()Lcom/android/org/bouncycastle/math/field/FiniteField;
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/org/bouncycastle/math/field/FiniteField;

    return-object p0
.end method

.method public abstract blacklist getFieldSize()I
.end method

.method public abstract blacklist getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_a

    .line 373
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 375
    :cond_a
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    return-object p0
.end method

.method public blacklist getOrder()Ljava/math/BigInteger;
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 3

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 172
    monitor-enter p1

    .line 174
    :try_start_4
    iget-object p0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 175
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_17

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_b
    monitor-enter p0

    .line 184
    :try_start_c
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    monitor-exit p0

    return-object p1

    :catchall_14
    move-exception p1

    .line 185
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p1

    :catchall_17
    move-exception p0

    .line 175
    :try_start_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 589
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 590
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 591
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 230
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_7

    return-object p1

    .line 234
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 236
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 240
    :cond_12
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist isValidFieldElement(Ljava/math/BigInteger;)Z
.end method

.method public blacklist normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 5

    .line 257
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method public blacklist normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 12

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V

    .line 282
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result p0

    if-eqz p0, :cond_48

    const/4 v0, 0x5

    if-eq p0, v0, :cond_48

    .line 298
    new-array p0, p3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 299
    new-array v0, p3, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_13
    if-ge v2, p3, :cond_31

    add-int v4, p2, v2

    .line 303
    aget-object v5, p1, v4

    if-eqz v5, :cond_2e

    if-nez p4, :cond_23

    .line 304
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 306
    :cond_23
    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    aput-object v5, p0, v3

    add-int/lit8 v5, v3, 0x1

    .line 307
    aput v4, v0, v3

    move v3, v5

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_31
    if-nez v3, :cond_34

    goto :goto_4a

    .line 316
    :cond_34
    invoke-static {p0, v1, v3, p4}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    :goto_37
    if-ge v1, v3, :cond_4a

    .line 320
    aget p2, v0, v1

    .line 321
    aget-object p3, p1, p2

    aget-object p4, p0, v1

    invoke-virtual {p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    aput-object p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_48
    if-nez p4, :cond_4b

    :cond_4a
    :goto_4a
    return-void

    .line 289
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iso\' not valid for affine coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 5

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 205
    monitor-enter p1

    .line 207
    :try_start_4
    iget-object p0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    if-nez p0, :cond_13

    .line 210
    new-instance p0, Ljava/util/Hashtable;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_2b

    .line 212
    :cond_13
    :goto_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_11

    .line 214
    monitor-enter p0

    .line 216
    :try_start_15
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 217
    invoke-interface {p3, p1}, Lcom/android/org/bouncycastle/math/ec/PreCompCallback;->precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object p3

    if-eq p3, p1, :cond_27

    .line 221
    invoke-virtual {p0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_29

    .line 224
    :cond_27
    :goto_27
    monitor-exit p0

    return-object p3

    .line 225
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_25

    throw p1

    .line 212
    :goto_2b
    :try_start_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_11

    throw p0
.end method

.method public abstract blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .registers 2

    .line 0
    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result p1

    if-eqz p1, :cond_b

    return-object p0

    .line 136
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
