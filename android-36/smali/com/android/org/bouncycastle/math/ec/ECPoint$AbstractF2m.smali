.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4

    .line 1354
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5

    .line 1359
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method


# virtual methods
.method protected blacklist satisfiesCurveEquation()Z
    .registers 8

    .line 1364
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1365
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1367
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v0, v4, :cond_73

    .line 1370
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v0, v5

    .line 1371
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    .line 1373
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1376
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1377
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    if-nez v4, :cond_34

    .line 1380
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1382
    :cond_34
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1385
    :cond_39
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    if-eqz v4, :cond_56

    .line 1389
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 1390
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_6a

    .line 1394
    :cond_56
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1395
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 1397
    invoke-virtual {v1, v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1399
    :goto_6a
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 1400
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1403
    :cond_73
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1404
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    if-eqz v0, :cond_a9

    const/4 v6, 0x1

    if-ne v0, v6, :cond_a1

    .line 1412
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object p0, p0, v5

    .line 1413
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 1415
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1416
    invoke-virtual {v4, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1417
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1418
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_a9

    .line 1423
    :cond_a1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1426
    :cond_a9
    :goto_a9
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 1427
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist satisfiesOrder()Z
    .registers 6

    .line 1432
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    .line 1433
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    .line 1441
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 1442
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 1443
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result p0

    if-eqz p0, :cond_21

    return v2

    :cond_21
    return v3

    .line 1445
    :cond_22
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1452
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 1453
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1454
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-object v4, p0

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    if-nez p0, :cond_46

    return v3

    .line 1463
    :cond_46
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1464
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 1475
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result p0

    if-nez p0, :cond_5b

    return v2

    :cond_5b
    return v3

    .line 1478
    :cond_5c
    invoke-super {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result p0

    return p0
.end method

.method public blacklist scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 1483
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1488
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_46

    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    .line 1516
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 1505
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1508
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1509
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1510
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 1512
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    filled-new-array {p1}, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 1495
    :cond_46
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1497
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1498
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 1500
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleXNegateY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 1523
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 1528
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1533
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    .line 1549
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 1540
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1543
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 1545
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleYNegateX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 1556
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 1561
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1567
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 6

    .line 1606
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1611
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1612
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1614
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-eqz v1, :cond_43

    const/4 v3, 0x1

    if-eq v1, v3, :cond_25

    const/4 v3, 0x5

    if-eq v1, v3, :cond_43

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1d

    goto :goto_25

    .line 1633
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unsupported coordinate system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1627
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object p0, p0, v3

    .line 1628
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1629
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    filled-new-array {p0}, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 1628
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object p0

    .line 1621
    :cond_43
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1622
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object p0
.end method
