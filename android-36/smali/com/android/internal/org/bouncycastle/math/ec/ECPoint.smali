.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
    }
.end annotation


# static fields
.field protected static final blacklist EMPTY_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# instance fields
.field protected blacklist curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field protected blacklist preCompTable:Ljava/util/Hashtable;

.field protected blacklist x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 59
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getInitialZCoords(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 60
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 6
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 64
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 65
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 66
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 67
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 68
    return-void
.end method

.method protected static blacklist getInitialZCoords(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 21
    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 23
    .local v1, "coord":I
    :goto_9
    sparse-switch v1, :sswitch_data_3e

    .line 32
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 34
    .local v2, "one":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_48

    .line 45
    :pswitch_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown coordinate system"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    .end local v2    # "one":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_20
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0

    .line 43
    .restart local v2    # "one":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_23
    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v3, v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v3, v4

    return-object v3

    .line 41
    :pswitch_2e
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v5, v0

    aput-object v2, v5, v4

    aput-object v2, v5, v3

    return-object v5

    .line 39
    :pswitch_38
    new-array v3, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v3, v0

    return-object v3

    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_20
        0x5 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_38
        :pswitch_38
        :pswitch_2e
        :pswitch_23
        :pswitch_17
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public abstract blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected blacklist checkNormalized()V
    .registers 3

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    return-void

    .line 194
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "point not in normal form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist createScaledPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p1, "sx"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "sy"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist equals(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Z
    .registers 14
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 378
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 380
    return v0

    .line 383
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .local v1, "c1":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 384
    .local v2, "c2":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const/4 v3, 0x1

    if-nez v1, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v0

    .local v4, "n1":Z
    :goto_12
    if-nez v2, :cond_16

    move v5, v3

    goto :goto_17

    :cond_16
    move v5, v0

    .line 385
    .local v5, "n2":Z
    :goto_17
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v6

    .local v6, "i1":Z
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v7

    .line 387
    .local v7, "i2":Z
    if-nez v6, :cond_6d

    if-eqz v7, :cond_24

    goto :goto_6d

    .line 392
    :cond_24
    move-object v8, p0

    .local v8, "p1":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    move-object v9, p1

    .line 393
    .local v9, "p2":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    if-eqz v4, :cond_2b

    if-eqz v5, :cond_2b

    goto :goto_4f

    .line 397
    :cond_2b
    if-eqz v4, :cond_32

    .line 399
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_4f

    .line 401
    :cond_32
    if-eqz v5, :cond_39

    .line 403
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    goto :goto_4f

    .line 405
    :cond_39
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v10

    if-nez v10, :cond_40

    .line 407
    return v0

    .line 413
    :cond_40
    invoke-virtual {v1, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    filled-new-array {p0, v10}, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 416
    .local v10, "points":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 418
    aget-object v8, v10, v0

    .line 419
    aget-object v9, v10, v3

    .line 422
    .end local v10    # "points":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_4f
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6c

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6c

    move v0, v3

    :cond_6c
    return v0

    .line 389
    .end local v8    # "p1":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v9    # "p2":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_6d
    :goto_6d
    if-eqz v6, :cond_7c

    if-eqz v7, :cond_7c

    if-nez v4, :cond_7b

    if-nez v5, :cond_7b

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v8

    if-eqz v8, :cond_7c

    :cond_7b
    move v0, v3

    :cond_7c
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 427
    if-ne p1, p0, :cond_4

    .line 429
    const/4 v0, 0x1

    return v0

    .line 432
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_a

    .line 434
    const/4 v0, 0x0

    return v0

    .line 437
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v0

    return v0
.end method

.method public blacklist getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist getCompressionYTilde()Z
.end method

.method public blacklist getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method protected blacklist getCurveCoordinateSystem()I
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    :goto_c
    return v0
.end method

.method public final blacklist getDetachedPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncoded(Z)[B
    .registers 9
    .param p1, "compressed"    # Z

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 489
    new-array v0, v1, [B

    return-object v0

    .line 492
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 494
    .local v0, "normed":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v2

    .line 496
    .local v2, "X":[B
    const/4 v3, 0x0

    if-eqz p1, :cond_2e

    .line 498
    array-length v4, v2

    add-int/2addr v4, v1

    new-array v4, v4, [B

    .line 499
    .local v4, "PO":[B
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCompressionYTilde()Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x3

    goto :goto_26

    :cond_25
    const/4 v5, 0x2

    :goto_26
    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 500
    array-length v5, v2

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    return-object v4

    .line 504
    .end local v4    # "PO":[B
    :cond_2e
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v4

    .line 506
    .local v4, "Y":[B
    array-length v5, v2

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    new-array v5, v5, [B

    .line 507
    .local v5, "PO":[B
    const/4 v6, 0x4

    aput-byte v6, v5, v3

    .line 508
    array-length v6, v2

    invoke-static {v2, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    array-length v6, v2

    add-int/2addr v6, v1

    array-length v1, v4

    invoke-static {v4, v3, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    return-object v5
.end method

.method public final blacklist getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public final blacklist getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method protected final blacklist getRawZCoords()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "index"    # I

    .line 160
    if-ltz p1, :cond_d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_d

    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v0, p1

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public blacklist getZCoords()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    array-length v0, v0

    .line 166
    .local v0, "zsLen":I
    if-nez v0, :cond_8

    .line 168
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v1

    .line 170
    :cond_8
    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 171
    .local v1, "copy":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 443
    .local v0, "c":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v1

    not-int v1, v1

    .line 445
    .local v1, "hc":I
    :goto_d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 451
    .local v2, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x11

    xor-int/2addr v1, v3

    .line 452
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/lit16 v3, v3, 0x101

    xor-int/2addr v1, v3

    .line 455
    .end local v2    # "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_2d
    return v1
.end method

.method blacklist implIsValid(ZZ)Z
    .registers 7
    .param p1, "decompressed"    # Z
    .param p2, "checkOrder"    # Z

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 306
    return v1

    .line 309
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;ZZ)V

    const-string v3, "bc_validity"

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;

    .line 345
    .local v0, "validity":Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method public blacklist isInfinity()Z
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public blacklist isNormalized()Z
    .registers 4

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    .line 202
    .local v0, "coord":I
    if-eqz v0, :cond_1a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 205
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    const/4 v2, 0x1

    .line 202
    :cond_1b
    return v2
.end method

.method public blacklist isValid()Z
    .registers 3

    .line 294
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result v0

    return v0
.end method

.method blacklist isValidPartial()Z
    .registers 2

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 555
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    return-object p0

    .line 221
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 231
    .local v0, "z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 233
    return-object p0

    .line 226
    .end local v0    # "z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1a
    return-object p0

    .line 236
    .restart local v0    # "z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    if-eqz v1, :cond_3a

    .line 251
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 252
    .local v1, "r":Ljava/security/SecureRandom;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 253
    .local v2, "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 254
    .local v3, "zInv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 238
    .end local v1    # "r":Ljava/security/SecureRandom;
    .end local v2    # "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "zInv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Detached points must be in affine coordinates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_1a
        0x5 -> :sswitch_1a
    .end sparse-switch
.end method

.method blacklist normalize(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "zInv"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 277
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not a projective coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_f
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "zInv2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 273
    .local v1, "zInv3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 266
    .end local v0    # "zInv2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "zInv3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_1c
    invoke-virtual {p0, p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_7
        :pswitch_1c
    .end packed-switch
.end method

.method protected abstract blacklist satisfiesCurveEquation()Z
.end method

.method protected blacklist satisfiesOrder()Z
    .registers 4

    .line 74
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 76
    return v1

    .line 79
    :cond_10
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 83
    .local v0, "n":Ljava/math/BigInteger;
    if-eqz v0, :cond_24

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->referenceMultiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :cond_24
    :goto_24
    return v1
.end method

.method public blacklist scaleX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p1, "scale"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 351
    move-object v0, p0

    goto :goto_20

    .line 352
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 350
    :goto_20
    return-object v0
.end method

.method public blacklist scaleXNegateY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p1, "scale"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 358
    move-object v0, p0

    goto :goto_24

    .line 359
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 357
    :goto_24
    return-object v0
.end method

.method public blacklist scaleY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p1, "scale"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 365
    move-object v0, p0

    goto :goto_20

    .line 366
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 364
    :goto_20
    return-object v0
.end method

.method public blacklist scaleYNegateX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p1, "scale"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 372
    move-object v0, p0

    goto :goto_24

    .line 373
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 371
    :goto_24
    return-object v0
.end method

.method public abstract blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 545
    invoke-virtual {p0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "e"    # I

    .line 523
    if-ltz p1, :cond_d

    .line 528
    move-object v0, p0

    .line 529
    .local v0, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_3
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_c

    .line 531
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_3

    .line 533
    :cond_c
    return-object v0

    .line 525
    .end local v0    # "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'e\' cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 462
    const-string v0, "INF"

    return-object v0

    .line 465
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 466
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 468
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 470
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    array-length v3, v3

    if-ge v2, v3, :cond_39

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 473
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 475
    .end local v2    # "i":I
    :cond_39
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
