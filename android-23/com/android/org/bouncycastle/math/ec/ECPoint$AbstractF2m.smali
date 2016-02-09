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
    .line 1346
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 1344
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
    .line 1351
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 1349
    return-void
.end method


# virtual methods
.method protected satisfiesCurveEquation()Z
    .locals 18

    #@0
    .prologue
    .line 1356
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v13

    #@4
    .line 1357
    .local v13, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    .line 1359
    .local v2, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@13
    move-result v12

    #@14
    .line 1360
    .local v12, "coord":I
    const/16 v16, 0x6

    #@16
    move/from16 v0, v16

    #@18
    if-ne v12, v0, :cond_3

    #@1a
    .line 1362
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-object/from16 v16, v0

    #@20
    const/16 v17, 0x0

    #@22
    aget-object v7, v16, v17

    #@24
    .line 1363
    .local v7, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@27
    move-result v11

    #@28
    .line 1365
    .local v11, "ZIsOne":Z
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@2b
    move-result v16

    #@2c
    if-eqz v16, :cond_1

    #@2e
    .line 1368
    move-object/from16 v0, p0

    #@30
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    .line 1369
    .local v6, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@35
    move-result-object v14

    #@36
    .local v14, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v15, v2

    #@37
    .line 1370
    .local v15, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v11, :cond_0

    #@39
    .line 1372
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3c
    move-result-object v16

    #@3d
    invoke-virtual/range {v15 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@40
    move-result-object v15

    #@41
    .line 1374
    :cond_0
    invoke-virtual {v14, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v16

    #@45
    return v16

    #@46
    .line 1377
    .end local v6    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    move-object/from16 v0, p0

    #@48
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4a
    .local v3, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4d
    move-result-object v5

    #@4e
    .line 1379
    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v11, :cond_2

    #@50
    .line 1381
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@53
    move-result-object v16

    #@54
    move-object/from16 v0, v16

    #@56
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@59
    move-result-object v16

    #@5a
    move-object/from16 v0, v16

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5f
    move-result-object v14

    #@60
    .line 1382
    .restart local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@63
    move-result-object v16

    #@64
    move-object/from16 v0, v16

    #@66
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@69
    move-result-object v15

    #@6a
    .line 1391
    .restart local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v14, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6d
    move-result-object v14

    #@6e
    .line 1392
    invoke-virtual {v14, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v16

    #@72
    return v16

    #@73
    .line 1386
    .end local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@76
    move-result-object v8

    #@77
    .local v8, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7a
    move-result-object v10

    #@7b
    .line 1387
    .local v10, "Z4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7e
    move-result-object v16

    #@7f
    move-object/from16 v0, v16

    #@81
    invoke-virtual {v0, v3, v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@84
    move-result-object v14

    #@85
    .line 1389
    .restart local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v2, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@88
    move-result-object v15

    #@89
    .restart local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@8a
    .line 1395
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

    #@8c
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8e
    .line 1396
    .restart local v6    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@91
    move-result-object v16

    #@92
    move-object/from16 v0, v16

    #@94
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@97
    move-result-object v14

    #@98
    .line 1398
    .restart local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v12, :pswitch_data_0

    #@9b
    .line 1415
    new-instance v16, Ljava/lang/IllegalStateException;

    #@9d
    const-string/jumbo v17, "unsupported coordinate system"

    #@a0
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v16

    #@a4
    .line 1404
    :pswitch_0
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a8
    move-object/from16 v16, v0

    #@aa
    const/16 v17, 0x0

    #@ac
    aget-object v7, v16, v17

    #@ae
    .line 1405
    .restart local v7    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@b1
    move-result v16

    #@b2
    if-nez v16, :cond_4

    #@b4
    .line 1407
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b7
    move-result-object v8

    #@b8
    .restart local v8    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@bb
    move-result-object v9

    #@bc
    .line 1408
    .local v9, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@bf
    move-result-object v14

    #@c0
    .line 1409
    invoke-virtual {v1, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c3
    move-result-object v1

    #@c4
    .line 1410
    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c7
    move-result-object v2

    #@c8
    .line 1418
    .end local v7    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    :pswitch_1
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@cb
    move-result-object v16

    #@cc
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@cf
    move-result-object v17

    #@d0
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d3
    move-result-object v16

    #@d4
    move-object/from16 v0, v16

    #@d6
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d9
    move-result-object v15

    #@da
    .line 1419
    .restart local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result v16

    #@de
    return v16

    #@df
    .line 1398
    nop

    #@e0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
