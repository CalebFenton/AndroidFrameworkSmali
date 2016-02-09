.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    }
.end annotation


# static fields
.field protected static EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# instance fields
.field protected curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected preCompTable:Ljava/util/Hashtable;

.field protected withCompression:Z

.field protected x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 11
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    .line 9
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 56
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@7
    .line 54
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    #@6
    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@8
    .line 62
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a
    .line 63
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c
    .line 64
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    .line 59
    return-void
.end method

.method protected static getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 16
    if-nez p0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    .line 18
    .local v0, "coord":I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 27
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@b
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    move-result-object v1

    #@f
    .line 29
    .local v1, "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v0, :pswitch_data_0

    #@12
    .line 40
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v3, "unknown coordinate system"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 16
    .end local v0    # "coord":I
    .end local v1    # "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@1e
    move-result v0

    #@1f
    .restart local v0    # "coord":I
    goto :goto_0

    #@20
    .line 22
    :sswitch_0
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    return-object v2

    #@23
    .line 34
    .restart local v1    # "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_1
    new-array v2, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@25
    aput-object v1, v2, v3

    #@27
    return-object v2

    #@28
    .line 36
    :pswitch_2
    const/4 v2, 0x3

    #@29
    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    aput-object v1, v2, v3

    #@2d
    aput-object v1, v2, v4

    #@2f
    aput-object v1, v2, v5

    #@31
    return-object v2

    #@32
    .line 38
    :pswitch_3
    new-array v2, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    aput-object v1, v2, v3

    #@36
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@39
    move-result-object v3

    #@3a
    aput-object v3, v2, v4

    #@3c
    return-object v2

    #@3d
    .line 18
    nop

    #@3e
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch

    #@48
    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected checkNormalized()V
    .locals 2

    #@0
    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "point not in normal form"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 206
    :cond_0
    return-void
.end method

.method protected createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "sx"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "sy"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13
    move-result-object v2

    #@14
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@16
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method protected abstract detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z
    .locals 12
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 340
    if-nez p1, :cond_0

    #@4
    .line 342
    return v10

    #@5
    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@8
    move-result-object v0

    #@9
    .local v0, "c1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@c
    move-result-object v1

    #@d
    .line 346
    .local v1, "c2":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_3

    #@f
    const/4 v4, 0x1

    #@10
    .local v4, "n1":Z
    :goto_0
    if-nez v1, :cond_4

    #@12
    const/4 v5, 0x1

    #@13
    .line 347
    .local v5, "n2":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@16
    move-result v2

    #@17
    .local v2, "i1":Z
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@1a
    move-result v3

    #@1b
    .line 349
    .local v3, "i2":Z
    if-nez v2, :cond_1

    #@1d
    if-eqz v3, :cond_6

    #@1f
    .line 351
    :cond_1
    if-eqz v2, :cond_5

    #@21
    if-eqz v3, :cond_5

    #@23
    if-nez v4, :cond_2

    #@25
    if-nez v5, :cond_2

    #@27
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@2a
    move-result v9

    #@2b
    :cond_2
    :goto_2
    return v9

    #@2c
    .line 346
    .end local v2    # "i1":Z
    .end local v3    # "i2":Z
    .end local v4    # "n1":Z
    .end local v5    # "n2":Z
    :cond_3
    const/4 v4, 0x0

    #@2d
    .restart local v4    # "n1":Z
    goto :goto_0

    #@2e
    :cond_4
    const/4 v5, 0x0

    #@2f
    .restart local v5    # "n2":Z
    goto :goto_1

    #@30
    .restart local v2    # "i1":Z
    .restart local v3    # "i2":Z
    :cond_5
    move v9, v10

    #@31
    .line 351
    goto :goto_2

    #@32
    .line 354
    :cond_6
    move-object v6, p0

    #@33
    .local v6, "p1":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v7, p1

    #@34
    .line 355
    .local v7, "p2":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v4, :cond_8

    #@36
    if-eqz v5, :cond_8

    #@38
    .line 384
    :goto_3
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3f
    move-result-object v11

    #@40
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v9

    #@44
    if-eqz v9, :cond_7

    #@46
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4d
    move-result-object v10

    #@4e
    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v10

    #@52
    :cond_7
    return v10

    #@53
    .line 359
    :cond_8
    if-eqz v4, :cond_9

    #@55
    .line 361
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@58
    move-result-object v7

    #@59
    goto :goto_3

    #@5a
    .line 363
    :cond_9
    if-eqz v5, :cond_a

    #@5c
    .line 365
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5f
    move-result-object v6

    #@60
    goto :goto_3

    #@61
    .line 367
    :cond_a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@64
    move-result v11

    #@65
    if-nez v11, :cond_b

    #@67
    .line 369
    return v10

    #@68
    .line 375
    :cond_b
    const/4 v11, 0x2

    #@69
    new-array v8, v11, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6b
    aput-object p0, v8, v10

    #@6d
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@70
    move-result-object v11

    #@71
    aput-object v11, v8, v9

    #@73
    .line 378
    .local v8, "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@76
    .line 380
    aget-object v6, v8, v10

    #@78
    .line 381
    aget-object v7, v8, v9

    #@7a
    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 389
    if-ne p1, p0, :cond_0

    #@2
    .line 391
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 394
    :cond_0
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 396
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 399
    :cond_1
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    #@3
    .line 129
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    #@3
    .line 141
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method protected abstract getCompressionYTilde()Z
.end method

.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    return-object v0
.end method

.method protected getCurveCoordinateSystem()I
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public final getDetachedPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncoded(Z)[B
    .locals 8
    .param p1, "compressed"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 457
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 459
    new-array v4, v7, [B

    #@a
    return-object v4

    #@b
    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e
    move-result-object v3

    #@f
    .line 464
    .local v3, "normed":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    #@16
    move-result-object v1

    #@17
    .line 466
    .local v1, "X":[B
    if-eqz p1, :cond_2

    #@19
    .line 468
    array-length v4, v1

    #@1a
    add-int/lit8 v4, v4, 0x1

    #@1c
    new-array v0, v4, [B

    #@1e
    .line 469
    .local v0, "PO":[B
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCompressionYTilde()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_1

    #@24
    const/4 v4, 0x3

    #@25
    :goto_0
    int-to-byte v4, v4

    #@26
    aput-byte v4, v0, v6

    #@28
    .line 470
    array-length v4, v1

    #@29
    invoke-static {v1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2c
    .line 471
    return-object v0

    #@2d
    .line 469
    :cond_1
    const/4 v4, 0x2

    #@2e
    goto :goto_0

    #@2f
    .line 474
    .end local v0    # "PO":[B
    :cond_2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    #@36
    move-result-object v2

    #@37
    .line 476
    .local v2, "Y":[B
    array-length v4, v1

    #@38
    array-length v5, v2

    #@39
    add-int/2addr v4, v5

    #@3a
    add-int/lit8 v4, v4, 0x1

    #@3c
    new-array v0, v4, [B

    #@3e
    .line 477
    .restart local v0    # "PO":[B
    const/4 v4, 0x4

    #@3f
    aput-byte v4, v0, v6

    #@41
    .line 478
    array-length v4, v1

    #@42
    invoke-static {v1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@45
    .line 479
    array-length v4, v1

    #@46
    add-int/lit8 v4, v4, 0x1

    #@48
    array-length v5, v2

    #@49
    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4c
    .line 480
    return-object v0
.end method

.method protected final getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2
    return-object v0
.end method

.method protected final getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2
    return-object v0
.end method

.method protected final getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2
    return-object v0
.end method

.method public getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2
    return-object v0
.end method

.method public getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2
    return-object v0
.end method

.method public getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 176
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    aget-object v0, v0, p1

    #@d
    goto :goto_0
.end method

.method public getZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 181
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    array-length v1, v2

    #@4
    .line 182
    .local v1, "zsLen":I
    if-nez v1, :cond_0

    #@6
    .line 184
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8
    return-object v2

    #@9
    .line 186
    :cond_0
    new-array v0, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    .line 187
    .local v0, "copy":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d
    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 188
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    .line 405
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_1

    #@6
    const/4 v1, 0x0

    #@7
    .line 407
    .local v1, "hc":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 411
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    move-result-object v2

    #@11
    .line 413
    .local v2, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->hashCode()I

    #@18
    move-result v3

    #@19
    mul-int/lit8 v3, v3, 0x11

    #@1b
    xor-int/2addr v1, v3

    #@1c
    .line 414
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->hashCode()I

    #@23
    move-result v3

    #@24
    mul-int/lit16 v3, v3, 0x101

    #@26
    xor-int/2addr v1, v3

    #@27
    .line 417
    .end local v2    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_0
    return v1

    #@28
    .line 405
    .end local v1    # "hc":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    #@2b
    move-result v3

    #@2c
    not-int v1, v3

    #@2d
    .restart local v1    # "hc":I
    goto :goto_0
.end method

.method public isCompressed()Z
    .locals 1

    #@0
    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@2
    return v0
.end method

.method public isInfinity()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 287
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    if-nez v1, :cond_2

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    :cond_1
    :goto_0
    return v0

    #@b
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d
    array-length v1, v1

    #@e
    if-lez v1, :cond_1

    #@10
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    aget-object v0, v1, v0

    #@14
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@17
    move-result v0

    #@18
    goto :goto_0
.end method

.method public isNormalized()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 216
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    #@4
    move-result v0

    #@5
    .line 218
    .local v0, "coord":I
    if-eqz v0, :cond_0

    #@7
    .line 219
    const/4 v1, 0x5

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 218
    :cond_0
    const/4 v1, 0x1

    #@b
    :goto_0
    return v1

    #@c
    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@f
    move-result v1

    #@10
    .line 218
    if-nez v1, :cond_0

    #@12
    .line 221
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@14
    aget-object v1, v1, v2

    #@16
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@19
    move-result v1

    #@1a
    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 300
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 302
    return v3

    #@9
    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@c
    move-result-object v0

    #@d
    .line 308
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-eqz v0, :cond_2

    #@f
    .line 310
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 312
    return v2

    #@16
    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesCofactor()Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_2

    #@1c
    .line 317
    return v2

    #@1d
    .line 321
    :cond_2
    return v3
.end method

.method public multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public abstract negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    #@0
    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 234
    return-object p0

    #@7
    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    #@a
    move-result v1

    #@b
    sparse-switch v1, :sswitch_data_0

    #@e
    .line 246
    const/4 v1, 0x0

    #@f
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v0

    #@13
    .line 247
    .local v0, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 249
    return-object p0

    #@1a
    .line 242
    .end local v0    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_0
    return-object p0

    #@1b
    .line 252
    .restart local v0    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 237
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "zInv"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    #@3
    move-result v2

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 275
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v3, "not a projective coordinate system"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 264
    :pswitch_1
    invoke-virtual {p0, p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 270
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@18
    move-result-object v0

    #@19
    .local v0, "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c
    move-result-object v1

    #@1d
    .line 271
    .local v1, "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected satisfiesCofactor()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 69
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    .line 70
    .local v0, "h":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    #@9
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@b
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->referenceMultiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    const/4 v1, 0x0

    #@1c
    :cond_0
    return v1
.end method

.method protected abstract satisfiesCurveEquation()Z
.end method

.method public scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_0
    return-object p0

    #@7
    .line 328
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-result-object v3

    #@1b
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@1d
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@20
    move-result-object p0

    #@21
    goto :goto_0
.end method

.method public scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_0
    return-object p0

    #@7
    .line 335
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-result-object v3

    #@1b
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@1d
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@20
    move-result-object p0

    #@21
    goto :goto_0
.end method

.method public abstract subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 515
    invoke-virtual {p0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "e"    # I

    #@0
    .prologue
    .line 493
    if-gez p1, :cond_0

    #@2
    .line 495
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "\'e\' cannot be negative"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 498
    :cond_0
    move-object v0, p0

    #@c
    .line 499
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@e
    if-ltz p1, :cond_1

    #@10
    .line 501
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@13
    move-result-object v0

    #@14
    goto :goto_0

    #@15
    .line 503
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x2c

    #@2
    .line 422
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 424
    const-string/jumbo v2, "INF"

    #@b
    return-object v2

    #@c
    .line 427
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@11
    .line 428
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x28

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@16
    .line 429
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1d
    .line 430
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@20
    .line 431
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@27
    .line 432
    const/4 v0, 0x0

    #@28
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2a
    array-length v2, v2

    #@2b
    if-ge v0, v2, :cond_1

    #@2d
    .line 434
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 435
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    aget-object v2, v2, v0

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@37
    .line 432
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 437
    :cond_1
    const/16 v2, 0x29

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3f
    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    return-object v2
.end method

.method public abstract twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
