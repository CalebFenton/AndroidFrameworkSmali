.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1350
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 1348
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1355
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 1353
    return-void
.end method


# virtual methods
.method protected satisfiesCurveEquation()Z
    .locals 18

    #@0
    .prologue
    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v13

    #@4
    .line 1361
    .local v13, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8
    .local v4, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v1

    #@c
    .local v1, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    move-result-object v2

    #@10
    .line 1363
    .local v2, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@13
    move-result v12

    #@14
    .line 1364
    .local v12, "coord":I
    const/16 v16, 0x6

    #@16
    move/from16 v0, v16

    #@18
    if-ne v12, v0, :cond_3

    #@1a
    .line 1366
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-object/from16 v16, v0

    #@20
    const/16 v17, 0x0

    #@22
    aget-object v7, v16, v17

    #@24
    .line 1367
    .local v7, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@27
    move-result v11

    #@28
    .line 1369
    .local v11, "ZIsOne":Z
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@2b
    move-result v16

    #@2c
    if-eqz v16, :cond_1

    #@2e
    .line 1372
    move-object/from16 v0, p0

    #@30
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    .line 1373
    .local v6, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@35
    move-result-object v14

    #@36
    .local v14, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v15, v2

    #@37
    .line 1374
    .local v15, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v11, :cond_0

    #@39
    .line 1376
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3c
    move-result-object v16

    #@3d
    move-object/from16 v0, v16

    #@3f
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    move-result-object v15

    #@43
    .line 1378
    :cond_0
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v16

    #@47
    return v16

    #@48
    .line 1381
    .end local v6    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    move-object/from16 v0, p0

    #@4a
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4c
    .local v3, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4f
    move-result-object v5

    #@50
    .line 1383
    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v11, :cond_2

    #@52
    .line 1385
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@55
    move-result-object v16

    #@56
    move-object/from16 v0, v16

    #@58
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5b
    move-result-object v16

    #@5c
    move-object/from16 v0, v16

    #@5e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@61
    move-result-object v14

    #@62
    .line 1386
    .restart local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@65
    move-result-object v16

    #@66
    move-object/from16 v0, v16

    #@68
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6b
    move-result-object v15

    #@6c
    .line 1395
    .restart local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v14, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6f
    move-result-object v14

    #@70
    .line 1396
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v16

    #@74
    return v16

    #@75
    .line 1390
    .end local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@78
    move-result-object v8

    #@79
    .local v8, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7c
    move-result-object v10

    #@7d
    .line 1391
    .local v10, "Z4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@80
    move-result-object v16

    #@81
    move-object/from16 v0, v16

    #@83
    invoke-virtual {v0, v3, v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@86
    move-result-object v14

    #@87
    .line 1393
    .restart local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v2, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8a
    move-result-object v15

    #@8b
    .restart local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@8c
    .line 1399
    .end local v3    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "ZIsOne":Z
    .end local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    move-object/from16 v0, p0

    #@8e
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@90
    .line 1400
    .restart local v6    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@93
    move-result-object v16

    #@94
    move-object/from16 v0, v16

    #@96
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@99
    move-result-object v14

    #@9a
    .line 1402
    .restart local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v12, :pswitch_data_0

    #@9d
    .line 1419
    new-instance v16, Ljava/lang/IllegalStateException;

    #@9f
    const-string/jumbo v17, "unsupported coordinate system"

    #@a2
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v16

    #@a6
    .line 1408
    :pswitch_0
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@aa
    move-object/from16 v16, v0

    #@ac
    const/16 v17, 0x0

    #@ae
    aget-object v7, v16, v17

    #@b0
    .line 1409
    .restart local v7    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@b3
    move-result v16

    #@b4
    if-nez v16, :cond_4

    #@b6
    .line 1411
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b9
    move-result-object v8

    #@ba
    .restart local v8    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@bd
    move-result-object v9

    #@be
    .line 1412
    .local v9, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c1
    move-result-object v14

    #@c2
    .line 1413
    invoke-virtual {v1, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c5
    move-result-object v1

    #@c6
    .line 1414
    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c9
    move-result-object v2

    #@ca
    .line 1422
    .end local v7    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    :pswitch_1
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@cd
    move-result-object v16

    #@ce
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d1
    move-result-object v17

    #@d2
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d5
    move-result-object v16

    #@d6
    move-object/from16 v0, v16

    #@d8
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@db
    move-result-object v15

    #@dc
    .line 1423
    .restart local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v16

    #@e0
    return v16

    #@e1
    .line 1402
    nop

    #@e2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1428
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@4
    move-result v7

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 1430
    return-object p0

    #@8
    .line 1433
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    #@b
    move-result v6

    #@c
    .line 1435
    .local v6, "coord":I
    packed-switch v6, :pswitch_data_0

    #@f
    .line 1461
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@12
    move-result-object v7

    #@13
    return-object v7

    #@14
    .line 1440
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17
    move-result-object v2

    #@18
    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b
    move-result-object v0

    #@1c
    .line 1442
    .local v0, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f
    move-result-object v3

    #@20
    .line 1443
    .local v3, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    move-result-object v1

    #@2c
    .line 1445
    .local v1, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    move-result-object v8

    #@34
    iget-boolean v9, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@36
    invoke-virtual {v7, v2, v1, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@39
    move-result-object v7

    #@3a
    return-object v7

    #@3b
    .line 1450
    .end local v0    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3e
    move-result-object v2

    #@3f
    .restart local v2    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    move-result-object v0

    #@43
    .restart local v0    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@46
    move-result-object v7

    #@47
    aget-object v4, v7, v9

    #@49
    .line 1453
    .local v4, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@50
    move-result-object v3

    #@51
    .line 1454
    .restart local v3    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@58
    move-result-object v1

    #@59
    .line 1455
    .restart local v1    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5c
    move-result-object v5

    #@5d
    .line 1457
    .local v5, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@60
    move-result-object v7

    #@61
    const/4 v8, 0x1

    #@62
    new-array v8, v8, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@64
    aput-object v5, v8, v9

    #@66
    iget-boolean v9, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@68
    invoke-virtual {v7, v3, v1, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6b
    move-result-object v7

    #@6c
    return-object v7

    #@6d
    .line 1435
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1470
    return-object p0

    #@7
    .line 1473
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    #@a
    move-result v3

    #@b
    .line 1475
    .local v3, "coord":I
    packed-switch v3, :pswitch_data_0

    #@e
    .line 1489
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@11
    move-result-object v4

    #@12
    return-object v4

    #@13
    .line 1480
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16
    move-result-object v2

    #@17
    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-result-object v0

    #@1b
    .line 1483
    .local v0, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    move-result-object v1

    #@27
    .line 1485
    .local v1, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2e
    move-result-object v5

    #@2f
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@31
    invoke-virtual {v4, v2, v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@34
    move-result-object v4

    #@35
    return-object v4

    #@36
    .line 1475
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 1496
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1498
    return-object p0

    #@7
    .line 1502
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public tau()Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1507
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 1509
    return-object p0

    #@8
    .line 1512
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@b
    move-result-object v4

    #@c
    .line 1513
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@f
    move-result v3

    #@10
    .line 1515
    .local v3, "coord":I
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    .line 1517
    .local v0, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v3, :pswitch_data_0

    #@15
    .line 1534
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v6, "unsupported coordinate system"

    #@1a
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v5

    #@1e
    .line 1522
    :pswitch_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    .line 1523
    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27
    move-result-object v6

    #@28
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@2a
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@30
    return-object v5

    #@31
    .line 1528
    .end local v1    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    .restart local v1    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@35
    aget-object v2, v5, v9

    #@37
    .line 1529
    .local v2, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3e
    move-result-object v6

    #@3f
    .line 1530
    const/4 v7, 0x1

    #@40
    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@45
    move-result-object v8

    #@46
    aput-object v8, v7, v9

    #@48
    iget-boolean v8, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@4a
    .line 1529
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@50
    return-object v5

    #@51
    .line 1517
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 10
    .param p1, "pow"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1541
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 1543
    return-object p0

    #@8
    .line 1546
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@b
    move-result-object v4

    #@c
    .line 1547
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@f
    move-result v3

    #@10
    .line 1549
    .local v3, "coord":I
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    .line 1551
    .local v0, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v3, :pswitch_data_0

    #@15
    .line 1568
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v6, "unsupported coordinate system"

    #@1a
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v5

    #@1e
    .line 1556
    :pswitch_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    .line 1557
    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27
    move-result-object v6

    #@28
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@2a
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@30
    return-object v5

    #@31
    .line 1562
    .end local v1    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    .restart local v1    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@35
    aget-object v2, v5, v9

    #@37
    .line 1563
    .local v2, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3e
    move-result-object v6

    #@3f
    .line 1564
    const/4 v7, 0x1

    #@40
    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@45
    move-result-object v8

    #@46
    aput-object v8, v7, v9

    #@48
    iget-boolean v8, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@4a
    .line 1563
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@50
    return-object v5

    #@51
    .line 1551
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
