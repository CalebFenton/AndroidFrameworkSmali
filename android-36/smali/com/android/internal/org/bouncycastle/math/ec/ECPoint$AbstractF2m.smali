.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1354
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1355
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1359
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1360
    return-void
.end method


# virtual methods
.method protected blacklist satisfiesCurveEquation()Z
    .registers 14

    .line 1364
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1365
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1367
    .local v3, "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 1368
    .local v4, "coord":I
    const/4 v5, 0x6

    const/4 v6, 0x0

    if-ne v4, v5, :cond_76

    .line 1370
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v5, v5, v6

    .line 1371
    .local v5, "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    .line 1373
    .local v6, "ZIsOne":Z
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1376
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1377
    .local v7, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v9, v3

    .line 1378
    .local v9, "rhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v6, :cond_35

    .line 1380
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1382
    :cond_35
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    return v10

    .line 1385
    .end local v7    # "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "rhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3a
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v7, "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1387
    .local v8, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v6, :cond_57

    .line 1389
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1390
    .local v9, "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .local v10, "rhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_6d

    .line 1394
    .end local v9    # "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "rhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_57
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .local v9, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1395
    .local v10, "Z4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v7, v2, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1397
    .local v11, "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v3, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    move-object v9, v11

    move-object v10, v12

    .line 1399
    .end local v11    # "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "rhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_6d
    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1400
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    return v11

    .line 1403
    .end local v5    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "ZIsOne":Z
    .end local v7    # "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "rhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_76
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1404
    .local v5, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1406
    .local v7, "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v4, :pswitch_data_c2

    .line 1423
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "unsupported coordinate system"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1412
    :pswitch_8c
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v6, v8, v6

    .line 1413
    .local v6, "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    if-nez v8, :cond_ac

    .line 1415
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1416
    .local v9, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1417
    invoke-virtual {v2, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1418
    invoke-virtual {v3, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1419
    .end local v8    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_ac

    .line 1409
    .end local v6    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_ab
    nop

    .line 1426
    :cond_ac
    :goto_ac
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1427
    .local v6, "rhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    return v8

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_8c
    .end packed-switch
.end method

.method protected blacklist satisfiesOrder()Z
    .registers 10

    .line 1432
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    .line 1433
    .local v0, "cofactor":Ljava/math/BigInteger;
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    .line 1441
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 1442
    .local v1, "N":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1443
    .local v4, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v5, v4

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    :goto_23
    return v2

    .line 1445
    .end local v1    # "N":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v4    # "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_24
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1452
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 1453
    .restart local v1    # "N":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1454
    .restart local v4    # "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->solveQuadraticEquation(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1455
    .local v5, "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v5, :cond_49

    .line 1457
    return v3

    .line 1463
    :cond_49
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1464
    .local v6, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1475
    .local v7, "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v8, v7

    check-cast v8, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result v8

    if-nez v8, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v3

    :goto_60
    return v2

    .line 1478
    .end local v1    # "N":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v4    # "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_61
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result v1

    return v1
.end method

.method public blacklist scaleX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p1, "scale"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1483
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1485
    return-object p0

    .line 1488
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1490
    .local v0, "coord":I
    packed-switch v0, :pswitch_data_6a

    .line 1516
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1505
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 1508
    .local v3, "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1509
    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1510
    .local v6, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1512
    .local v7, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v7, v9, v4

    invoke-virtual {v8, v5, v6, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1495
    .end local v1    # "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_44
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .restart local v1    # "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1497
    .restart local v2    # "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1498
    .local v3, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1500
    .local v4, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v1, v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_6a
    .packed-switch 0x5
        :pswitch_44
        :pswitch_13
    .end packed-switch
.end method

.method public blacklist scaleXNegateY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "scale"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1523
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->scaleX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist scaleY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 8
    .param p1, "scale"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1528
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1530
    return-object p0

    .line 1533
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1535
    .local v0, "coord":I
    packed-switch v0, :pswitch_data_34

    .line 1549
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1540
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1543
    .local v2, "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1545
    .local v3, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v1, v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    :pswitch_data_34
    .packed-switch 0x5
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public blacklist scaleYNegateX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "scale"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1556
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->scaleY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 1561
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1563
    return-object p0

    .line 1567
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist tau()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 11

    .line 1572
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1574
    return-object p0

    .line 1577
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1578
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1580
    .local v1, "coord":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1582
    .local v2, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v1, :pswitch_data_4e

    .line 1599
    :pswitch_14
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1593
    :pswitch_1d
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v3, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1594
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1595
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    aput-object v9, v8, v5

    .line 1594
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v5

    .line 1587
    .end local v3    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3c
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1588
    .restart local v3    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v4

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_1d
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_3c
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 12
    .param p1, "pow"    # I

    .line 1606
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1608
    return-object p0

    .line 1611
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1612
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1614
    .local v1, "coord":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1616
    .local v2, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v1, :pswitch_data_4e

    .line 1633
    :pswitch_14
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1627
    :pswitch_1d
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v3, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1628
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1629
    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    aput-object v9, v8, v5

    .line 1628
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v5

    .line 1621
    .end local v3    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3c
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1622
    .restart local v3    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v4

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_1d
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_3c
        :pswitch_1d
    .end packed-switch
.end method
