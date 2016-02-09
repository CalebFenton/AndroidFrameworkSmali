.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    }
.end annotation


# static fields
.field public static final COORD_AFFINE:I = 0x0

.field public static final COORD_HOMOGENEOUS:I = 0x1

.field public static final COORD_JACOBIAN:I = 0x2

.field public static final COORD_JACOBIAN_CHUDNOVSKY:I = 0x3

.field public static final COORD_JACOBIAN_MODIFIED:I = 0x4

.field public static final COORD_LAMBDA_AFFINE:I = 0x5

.field public static final COORD_LAMBDA_PROJECTIVE:I = 0x6

.field public static final COORD_SKEWED:I = 0x7


# instance fields
.field protected a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected cofactor:Ljava/math/BigInteger;

.field protected coord:I

.field protected endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected field:Lcom/android/org/bouncycastle/math/field/FiniteField;

.field protected multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

.field protected order:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V
    .locals 2
    .param p1, "field"    # Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 90
    const/4 v0, 0x0

    #@5
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    #@7
    .line 91
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@9
    .line 92
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@b
    .line 96
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@d
    .line 94
    return-void
.end method

.method public static getAllCoordinateSystems()[I
    .locals 1

    #@0
    .prologue
    .line 30
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    return-object v0

    #@8
    :array_0
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


# virtual methods
.method protected checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 2
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 440
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_1

    #@8
    .line 442
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "\'point\' must be non-null and on this curve"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 438
    :cond_1
    return-void
.end method

.method protected checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 2
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 448
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V

    #@5
    .line 446
    return-void
.end method

.method protected checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V
    .locals 4
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 453
    if-nez p1, :cond_0

    #@2
    .line 455
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "\'points\' cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 457
    :cond_0
    if-ltz p2, :cond_1

    #@d
    if-gez p3, :cond_2

    #@f
    .line 459
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v3, "invalid range specified for \'points\'"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 457
    :cond_2
    array-length v2, p1

    #@19
    sub-int/2addr v2, p3

    #@1a
    if-gt p2, v2, :cond_1

    #@1c
    .line 462
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    #@1f
    .line 464
    add-int v2, p2, v0

    #@21
    aget-object v1, p1, v2

    #@23
    .line 465
    .local v1, "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_3

    #@25
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@28
    move-result-object v2

    #@29
    if-eq p0, v2, :cond_3

    #@2b
    .line 467
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v3, "\'points\' entries must be null or on this curve"

    #@30
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 462
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 451
    .end local v1    # "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_4
    return-void
.end method

.method protected abstract cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end method

.method public configure()Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .locals 4

    #@0
    .prologue
    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@8
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;ILcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)V

    #@b
    return-object v0
.end method

.method protected createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .locals 2

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@2
    instance-of v0, v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 156
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;

    #@8
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@a
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@c
    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V

    #@f
    return-object v1

    #@10
    .line 159
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;

    #@12
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;-><init>()V

    #@15
    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    #@0
    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method protected abstract createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected abstract createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "encoded"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 359
    const/4 v3, 0x0

    #@3
    .line 360
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    #@6
    move-result v8

    #@7
    add-int/lit8 v8, v8, 0x7

    #@9
    div-int/lit8 v2, v8, 0x8

    #@b
    .line 362
    .local v2, "expectedLength":I
    aget-byte v4, p1, v7

    #@d
    .line 363
    .local v4, "type":B
    packed-switch v4, :pswitch_data_0

    #@10
    .line 427
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v8, "Invalid point encoding 0x"

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    const/16 v8, 0x10

    #@20
    invoke-static {v4, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@23
    move-result-object v8

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v7

    #@2c
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v6

    #@30
    .line 367
    :pswitch_1
    array-length v7, p1

    #@31
    if-eq v7, v6, :cond_0

    #@33
    .line 369
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@35
    const-string/jumbo v7, "Incorrect length for infinity encoding"

    #@38
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v6

    #@3c
    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3f
    move-result-object v3

    #@40
    .line 430
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_1
    :goto_0
    if-eqz v4, :cond_7

    #@42
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_7

    #@48
    .line 432
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@4a
    const-string/jumbo v7, "Invalid infinity encoding"

    #@4d
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v6

    #@51
    .line 378
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :pswitch_2
    array-length v7, p1

    #@52
    add-int/lit8 v8, v2, 0x1

    #@54
    if-eq v7, v8, :cond_2

    #@56
    .line 380
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@58
    const-string/jumbo v7, "Incorrect length for compressed encoding"

    #@5b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v6

    #@5f
    .line 383
    :cond_2
    and-int/lit8 v5, v4, 0x1

    #@61
    .line 384
    .local v5, "yTilde":I
    invoke-static {p1, v6, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    #@64
    move-result-object v0

    #@65
    .line 386
    .local v0, "X":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@68
    move-result-object v3

    #@69
    .line 387
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesCofactor()Z

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_1

    #@6f
    .line 389
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@71
    const-string/jumbo v7, "Invalid point"

    #@74
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@77
    throw v6

    #@78
    .line 396
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v5    # "yTilde":I
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :pswitch_3
    array-length v7, p1

    #@79
    mul-int/lit8 v8, v2, 0x2

    #@7b
    add-int/lit8 v8, v8, 0x1

    #@7d
    if-eq v7, v8, :cond_3

    #@7f
    .line 398
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@81
    const-string/jumbo v7, "Incorrect length for uncompressed encoding"

    #@84
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@87
    throw v6

    #@88
    .line 401
    :cond_3
    invoke-static {p1, v6, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    #@8b
    move-result-object v0

    #@8c
    .line 402
    .restart local v0    # "X":Ljava/math/BigInteger;
    add-int/lit8 v6, v2, 0x1

    #@8e
    invoke-static {p1, v6, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    #@91
    move-result-object v1

    #@92
    .line 404
    .local v1, "Y":Ljava/math/BigInteger;
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@95
    move-result-object v3

    #@96
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_0

    #@97
    .line 410
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v1    # "Y":Ljava/math/BigInteger;
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :pswitch_4
    array-length v8, p1

    #@98
    mul-int/lit8 v9, v2, 0x2

    #@9a
    add-int/lit8 v9, v9, 0x1

    #@9c
    if-eq v8, v9, :cond_4

    #@9e
    .line 412
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@a0
    const-string/jumbo v7, "Incorrect length for hybrid encoding"

    #@a3
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v6

    #@a7
    .line 415
    :cond_4
    invoke-static {p1, v6, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    #@aa
    move-result-object v0

    #@ab
    .line 416
    .restart local v0    # "X":Ljava/math/BigInteger;
    add-int/lit8 v8, v2, 0x1

    #@ad
    invoke-static {p1, v8, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    #@b0
    move-result-object v1

    #@b1
    .line 418
    .restart local v1    # "Y":Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    #@b4
    move-result v8

    #@b5
    const/4 v9, 0x7

    #@b6
    if-ne v4, v9, :cond_5

    #@b8
    :goto_1
    if-eq v8, v6, :cond_6

    #@ba
    .line 420
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@bc
    const-string/jumbo v7, "Inconsistent Y coordinate in hybrid encoding"

    #@bf
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v6

    #@c3
    :cond_5
    move v6, v7

    #@c4
    .line 418
    goto :goto_1

    #@c5
    .line 423
    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c8
    move-result-object v3

    #@c9
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto/16 :goto_0

    #@cb
    .line 435
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v1    # "Y":Ljava/math/BigInteger;
    :cond_7
    return-object v3

    #@cc
    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected abstract decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    .line 474
    if-eq p0, p1, :cond_0

    #@2
    .line 475
    if-eqz p1, :cond_1

    #@4
    .line 476
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 475
    if-eqz v0, :cond_1

    #@12
    .line 477
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 475
    if-eqz v0, :cond_1

    #@28
    .line 478
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    .line 474
    :goto_0
    return v0

    #@3d
    :cond_0
    const/4 v0, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 475
    :cond_1
    const/4 v0, 0x0

    #@40
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 483
    if-eq p0, p1, :cond_0

    #@2
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@4
    if-eqz v0, :cond_1

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@8
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0

    #@f
    :cond_1
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public abstract fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2
    return-object v0
.end method

.method public getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2
    return-object v0
.end method

.method public getCofactor()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getCoordinateSystem()I
    .locals 1

    #@0
    .prologue
    .line 329
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    #@2
    return v0
.end method

.method public getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .locals 1

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@2
    return-object v0
.end method

.method public getField()Lcom/android/org/bouncycastle/math/field/FiniteField;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@2
    return-object v0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public declared-synchronized getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 346
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@b
    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .locals 2
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@4
    .line 170
    monitor-enter p1

    #@5
    .line 172
    :try_start_0
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 173
    .local v0, "table":Ljava/util/Hashtable;
    if-nez v0, :cond_0

    #@9
    :goto_0
    monitor-exit p1

    #@a
    return-object v1

    #@b
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    goto :goto_0

    #@12
    .line 170
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p1

    #@14
    throw v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    .line 489
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@13
    move-result v1

    #@14
    const/16 v2, 0x8

    #@16
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    #@19
    move-result v1

    #@1a
    .line 488
    xor-int/2addr v0, v1

    #@1b
    .line 490
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@26
    move-result v1

    #@27
    const/16 v2, 0x10

    #@29
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    #@2c
    move-result v1

    #@2d
    .line 488
    xor-int/2addr v0, v1

    #@2e
    return v0
.end method

.method public importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    if-ne p0, v0, :cond_0

    #@6
    .line 207
    return-object p1

    #@7
    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 211
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@15
    move-result-object p1

    #@16
    .line 217
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@25
    move-result-object v1

    #@26
    iget-boolean v2, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@28
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 3
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 232
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@6
    .line 230
    return-void
.end method

.method public normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 10
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "iso"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 255
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V

    #@4
    .line 257
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@7
    move-result v8

    #@8
    sparse-switch v8, :sswitch_data_0

    #@b
    .line 273
    new-array v7, p3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d
    .line 274
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-array v4, p3, [I

    #@f
    .line 275
    .local v4, "indices":[I
    const/4 v0, 0x0

    #@10
    .line 276
    .local v0, "count":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    move v1, v0

    #@12
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v2, p3, :cond_3

    #@14
    .line 278
    add-int v8, p2, v2

    #@16
    aget-object v6, p1, v8

    #@18
    .line 279
    .local v6, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v6, :cond_0

    #@1a
    if-nez p4, :cond_2

    #@1c
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_2

    #@22
    :cond_0
    move v0, v1

    #@23
    .line 276
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@25
    move v1, v0

    #@26
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    #@27
    .line 262
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "indices":[I
    .end local v6    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_0
    if-eqz p4, :cond_1

    #@29
    .line 264
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v9, "\'iso\' not valid for affine coordinates"

    #@2e
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v8

    #@32
    .line 266
    :cond_1
    return-void

    #@33
    .line 281
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "indices":[I
    .restart local v6    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    move-result-object v8

    #@37
    aput-object v8, v7, v1

    #@39
    .line 282
    add-int/lit8 v0, v1, 0x1

    #@3b
    .end local v1    # "count":I
    .restart local v0    # "count":I
    add-int v8, p2, v2

    #@3d
    aput v8, v4, v1

    #@3f
    goto :goto_1

    #@40
    .line 286
    .end local v0    # "count":I
    .end local v6    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v1    # "count":I
    :cond_3
    if-nez v1, :cond_4

    #@42
    .line 288
    return-void

    #@43
    .line 291
    :cond_4
    invoke-static {v7, v9, v1, p4}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@46
    .line 293
    const/4 v5, 0x0

    #@47
    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_5

    #@49
    .line 295
    aget v3, v4, v5

    #@4b
    .line 296
    .local v3, "index":I
    aget-object v8, p1, v3

    #@4d
    aget-object v9, v7, v5

    #@4f
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@52
    move-result-object v8

    #@53
    aput-object v8, p1, v3

    #@55
    .line 293
    add-int/lit8 v5, v5, 0x1

    #@57
    goto :goto_2

    #@58
    .line 253
    .end local v3    # "index":I
    :cond_5
    return-void

    #@59
    .line 257
    nop

    #@5a
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V
    .locals 2
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@0
    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@3
    .line 192
    monitor-enter p1

    #@4
    .line 194
    :try_start_0
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    #@6
    .line 195
    .local v0, "table":Ljava/util/Hashtable;
    if-nez v0, :cond_0

    #@8
    .line 197
    new-instance v0, Ljava/util/Hashtable;

    #@a
    .end local v0    # "table":Ljava/util/Hashtable;
    const/4 v1, 0x4

    #@b
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    #@e
    .restart local v0    # "table":Ljava/util/Hashtable;
    iput-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    #@10
    .line 199
    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p1

    #@14
    .line 189
    return-void

    #@15
    .line 192
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p1

    #@17
    throw v1
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 164
    if-nez p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    return v0
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object v0

    #@4
    .line 111
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "Invalid point coordinates"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 115
    :cond_0
    return-object v0
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    #@0
    .prologue
    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object v0

    #@4
    .line 125
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "Invalid point coordinates"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 129
    :cond_0
    return-object v0
.end method
