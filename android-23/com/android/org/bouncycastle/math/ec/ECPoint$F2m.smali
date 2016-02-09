.class public Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1437
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@4
    .line 1435
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 3
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1450
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@5
    .line 1452
    if-nez p2, :cond_0

    #@7
    move v2, v0

    #@8
    :goto_0
    if-nez p3, :cond_1

    #@a
    :goto_1
    if-eq v2, v0, :cond_2

    #@c
    .line 1454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "Exactly one of the field elements is null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    :cond_0
    move v2, v1

    #@16
    .line 1452
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    goto :goto_1

    #@19
    .line 1457
    :cond_2
    if-eqz p2, :cond_3

    #@1b
    .line 1460
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@22
    .line 1463
    if-eqz p1, :cond_3

    #@24
    .line 1465
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@28
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@2f
    .line 1469
    :cond_3
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@31
    .line 1448
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 0
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p5, "withCompression"    # Z

    #@0
    .prologue
    .line 1476
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 1478
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@5
    .line 1474
    return-void
.end method

.method private static checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 2
    .param p0, "a"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Only points on the same curve can be added or subtracted"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1623
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 1640
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@3
    .line 1641
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@5
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 48
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@0
    .prologue
    .line 1655
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1657
    return-object p1

    #@7
    .line 1659
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 1661
    return-object p0

    #@e
    .line 1664
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@11
    move-result-object v5

    #@12
    .line 1665
    .local v5, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@15
    move-result v43

    #@16
    .line 1667
    .local v43, "coord":I
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-object/from16 v34, v0

    #@1c
    .line 1668
    .local v34, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@1e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    move-object/from16 v35, v0

    #@22
    .line 1670
    .local v35, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    sparse-switch v43, :sswitch_data_0

    #@25
    .line 1829
    new-instance v4, Ljava/lang/IllegalStateException;

    #@27
    const-string/jumbo v8, "unsupported coordinate system"

    #@2a
    invoke-direct {v4, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4

    #@2e
    .line 1674
    :sswitch_0
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    move-object/from16 v36, v0

    #@34
    .line 1675
    .local v36, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@36
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@38
    move-object/from16 v37, v0

    #@3a
    .line 1677
    .local v37, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v34 .. v35}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3d
    move-result-object v44

    #@3e
    .local v44, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v36 .. v37}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@41
    move-result-object v45

    #@42
    .line 1678
    .local v45, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_3

    #@48
    .line 1680
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_2

    #@4e
    .line 1682
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@51
    move-result-object v4

    #@52
    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@54
    return-object v4

    #@55
    .line 1685
    :cond_2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@58
    move-result-object v4

    #@59
    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@5b
    return-object v4

    #@5c
    .line 1688
    :cond_3
    move-object/from16 v0, v45

    #@5e
    move-object/from16 v1, v44

    #@60
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@63
    move-result-object v19

    #@64
    .line 1690
    .local v19, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@67
    move-result-object v4

    #@68
    move-object/from16 v0, v19

    #@6a
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6d
    move-result-object v4

    #@6e
    move-object/from16 v0, v44

    #@70
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v4, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7b
    move-result-object v6

    #@7c
    .line 1691
    .local v6, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v34

    #@7e
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@81
    move-result-object v4

    #@82
    move-object/from16 v0, v19

    #@84
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8b
    move-result-object v4

    #@8c
    move-object/from16 v0, v36

    #@8e
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@91
    move-result-object v7

    #@92
    .line 1693
    .local v7, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@94
    move-object/from16 v0, p0

    #@96
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@98
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@9b
    return-object v4

    #@9c
    .line 1697
    .end local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v44    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v45    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a0
    move-object/from16 v36, v0

    #@a2
    .restart local v36    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@a4
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a6
    const/4 v8, 0x0

    #@a7
    aget-object v38, v4, v8

    #@a9
    .line 1698
    .local v38, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@ab
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ad
    move-object/from16 v37, v0

    #@af
    .restart local v37    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@b1
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b3
    const/4 v8, 0x0

    #@b4
    aget-object v40, v4, v8

    #@b6
    .line 1700
    .local v40, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@b9
    move-result v41

    #@ba
    .line 1702
    .local v41, "Z2IsOne":Z
    move-object/from16 v0, v38

    #@bc
    move-object/from16 v1, v37

    #@be
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c1
    move-result-object v25

    #@c2
    .line 1703
    .local v25, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_4

    #@c4
    move-object/from16 v26, v36

    #@c6
    .line 1704
    .local v26, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual/range {v25 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c9
    move-result-object v24

    #@ca
    .line 1705
    .local v24, "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v38

    #@cc
    move-object/from16 v1, v35

    #@ce
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d1
    move-result-object v28

    #@d2
    .line 1706
    .local v28, "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_5

    #@d4
    move-object/from16 v29, v34

    #@d6
    .line 1707
    .local v29, "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual/range {v28 .. v29}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d9
    move-result-object v27

    #@da
    .line 1709
    .local v27, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@dd
    move-result v4

    #@de
    if-eqz v4, :cond_7

    #@e0
    .line 1711
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@e3
    move-result v4

    #@e4
    if-eqz v4, :cond_6

    #@e6
    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e9
    move-result-object v4

    #@ea
    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@ec
    return-object v4

    #@ed
    .line 1703
    .end local v24    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v36

    #@ef
    move-object/from16 v1, v40

    #@f1
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f4
    move-result-object v26

    #@f5
    .restart local v26    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@f6
    .line 1706
    .restart local v24    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v28    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    move-object/from16 v0, v34

    #@f8
    move-object/from16 v1, v40

    #@fa
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@fd
    move-result-object v29

    #@fe
    .restart local v29    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    #@ff
    .line 1716
    .restart local v27    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@102
    move-result-object v4

    #@103
    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@105
    return-object v4

    #@106
    .line 1719
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@109
    move-result-object v31

    #@10a
    .line 1720
    .local v31, "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    #@10c
    move-object/from16 v1, v27

    #@10e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@111
    move-result-object v30

    #@112
    .line 1721
    .local v30, "VCu":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_8

    #@114
    move-object/from16 v33, v38

    #@116
    .line 1722
    .local v33, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    move-object/from16 v0, v24

    #@118
    move-object/from16 v1, v27

    #@11a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@11d
    move-result-object v47

    #@11e
    .line 1723
    .local v47, "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@121
    move-result-object v4

    #@122
    move-object/from16 v0, v47

    #@124
    move-object/from16 v1, v24

    #@126
    move-object/from16 v2, v31

    #@128
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12b
    move-result-object v4

    #@12c
    move-object/from16 v0, v33

    #@12e
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@131
    move-result-object v4

    #@132
    move-object/from16 v0, v30

    #@134
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@137
    move-result-object v14

    #@138
    .line 1725
    .local v14, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v27

    #@13a
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13d
    move-result-object v6

    #@13e
    .line 1726
    .restart local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_9

    #@140
    move-object/from16 v32, v31

    #@142
    .line 1727
    .local v32, "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    move-object/from16 v0, v24

    #@144
    move-object/from16 v1, v34

    #@146
    move-object/from16 v2, v27

    #@148
    move-object/from16 v3, v36

    #@14a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@14d
    move-result-object v4

    #@14e
    move-object/from16 v0, v32

    #@150
    move-object/from16 v1, v47

    #@152
    invoke-virtual {v4, v0, v1, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@155
    move-result-object v7

    #@156
    .line 1728
    .restart local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v30

    #@158
    move-object/from16 v1, v33

    #@15a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15d
    move-result-object v42

    #@15e
    .line 1730
    .local v42, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@160
    const/4 v8, 0x1

    #@161
    new-array v8, v8, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@163
    const/4 v9, 0x0

    #@164
    aput-object v42, v8, v9

    #@166
    move-object/from16 v0, p0

    #@168
    iget-boolean v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@16a
    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@16d
    return-object v4

    #@16e
    .line 1721
    .end local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v32    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v42    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v47    # "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8
    move-object/from16 v0, v38

    #@170
    move-object/from16 v1, v40

    #@172
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@175
    move-result-object v33

    #@176
    .restart local v33    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_2

    #@177
    .line 1726
    .restart local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v14    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v47    # "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v31

    #@179
    move-object/from16 v1, v40

    #@17b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17e
    move-result-object v32

    #@17f
    .restart local v32    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_3

    #@180
    .line 1734
    .end local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "VCu":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v32    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v38    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v40    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v41    # "Z2IsOne":Z
    .end local v47    # "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_2
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@183
    move-result v4

    #@184
    if-eqz v4, :cond_b

    #@186
    .line 1736
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@189
    move-result v4

    #@18a
    if-eqz v4, :cond_a

    #@18c
    .line 1738
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@18f
    move-result-object v4

    #@190
    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@192
    return-object v4

    #@193
    .line 1741
    :cond_a
    move-object/from16 v0, p1

    #@195
    move-object/from16 v1, p0

    #@197
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@19a
    move-result-object v4

    #@19b
    return-object v4

    #@19c
    .line 1744
    :cond_b
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a0
    move-object/from16 v20, v0

    #@1a2
    .local v20, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@1a4
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a6
    const/4 v8, 0x0

    #@1a7
    aget-object v38, v4, v8

    #@1a9
    .line 1745
    .restart local v38    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@1ab
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ad
    move-object/from16 v21, v0

    #@1af
    .local v21, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@1b1
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b3
    const/4 v8, 0x0

    #@1b4
    aget-object v40, v4, v8

    #@1b6
    .line 1747
    .restart local v40    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v38 .. v38}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@1b9
    move-result v39

    #@1ba
    .line 1748
    .local v39, "Z1IsOne":Z
    move-object/from16 v26, v35

    #@1bc
    .restart local v26    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v21

    #@1be
    .line 1749
    .local v23, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v39, :cond_c

    #@1c0
    .line 1751
    move-object/from16 v0, v26

    #@1c2
    move-object/from16 v1, v38

    #@1c4
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c7
    move-result-object v26

    #@1c8
    .line 1752
    move-object/from16 v0, v23

    #@1ca
    move-object/from16 v1, v38

    #@1cc
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1cf
    move-result-object v23

    #@1d0
    .line 1755
    :cond_c
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@1d3
    move-result v41

    #@1d4
    .line 1756
    .restart local v41    # "Z2IsOne":Z
    move-object/from16 v25, v34

    #@1d6
    .restart local v25    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v20

    #@1d8
    .line 1757
    .local v22, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v41, :cond_d

    #@1da
    .line 1759
    move-object/from16 v0, v25

    #@1dc
    move-object/from16 v1, v40

    #@1de
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e1
    move-result-object v25

    #@1e2
    .line 1760
    move-object/from16 v0, v22

    #@1e4
    move-object/from16 v1, v40

    #@1e6
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e9
    move-result-object v22

    #@1ea
    .line 1763
    :cond_d
    invoke-virtual/range {v22 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ed
    move-result-object v14

    #@1ee
    .line 1764
    .restart local v14    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v25 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f1
    move-result-object v18

    #@1f2
    .line 1766
    .local v18, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1f5
    move-result v4

    #@1f6
    if-eqz v4, :cond_f

    #@1f8
    .line 1768
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1fb
    move-result v4

    #@1fc
    if-eqz v4, :cond_e

    #@1fe
    .line 1770
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@201
    move-result-object v4

    #@202
    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@204
    return-object v4

    #@205
    .line 1773
    :cond_e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@208
    move-result-object v4

    #@209
    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@20b
    return-object v4

    #@20c
    .line 1777
    :cond_f
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@20f
    move-result v4

    #@210
    if-eqz v4, :cond_12

    #@212
    .line 1780
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@215
    move-result-object v46

    #@216
    .line 1781
    .local v46, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@219
    move-result-object v34

    #@21a
    .line 1782
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21d
    move-result-object v36

    #@21e
    .line 1784
    .restart local v36    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v37, v21

    #@220
    .line 1785
    .restart local v37    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v36 .. v37}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@223
    move-result-object v4

    #@224
    move-object/from16 v0, v34

    #@226
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@229
    move-result-object v19

    #@22a
    .line 1787
    .restart local v19    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22d
    move-result-object v4

    #@22e
    move-object/from16 v0, v19

    #@230
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@233
    move-result-object v4

    #@234
    move-object/from16 v0, v34

    #@236
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@239
    move-result-object v4

    #@23a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@23d
    move-result-object v8

    #@23e
    invoke-virtual {v4, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@241
    move-result-object v6

    #@242
    .line 1788
    .restart local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@245
    move-result v4

    #@246
    if-eqz v4, :cond_10

    #@248
    .line 1790
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@24a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@24d
    move-result-object v8

    #@24e
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@251
    move-result-object v8

    #@252
    move-object/from16 v0, p0

    #@254
    iget-boolean v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@256
    invoke-direct {v4, v5, v6, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@259
    return-object v4

    #@25a
    .line 1793
    :cond_10
    move-object/from16 v0, v34

    #@25c
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@25f
    move-result-object v4

    #@260
    move-object/from16 v0, v19

    #@262
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@265
    move-result-object v4

    #@266
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@269
    move-result-object v4

    #@26a
    move-object/from16 v0, v36

    #@26c
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26f
    move-result-object v7

    #@270
    .line 1794
    .restart local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@273
    move-result-object v4

    #@274
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@277
    move-result-object v11

    #@278
    .line 1795
    .local v11, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@27a
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27d
    move-result-object v42

    #@27e
    .line 1825
    .end local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v46    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v42    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_11
    :goto_4
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@280
    const/4 v4, 0x1

    #@281
    new-array v12, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@283
    const/4 v4, 0x0

    #@284
    aput-object v42, v12, v4

    #@286
    move-object/from16 v0, p0

    #@288
    iget-boolean v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@28a
    move-object v9, v5

    #@28b
    move-object v10, v6

    #@28c
    invoke-direct/range {v8 .. v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@28f
    return-object v8

    #@290
    .line 1799
    .end local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v42    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@293
    move-result-object v18

    #@294
    .line 1801
    move-object/from16 v0, v25

    #@296
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@299
    move-result-object v16

    #@29a
    .line 1802
    .local v16, "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v26

    #@29c
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@29f
    move-result-object v17

    #@2a0
    .line 1804
    .local v17, "AU2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2a3
    move-result-object v6

    #@2a4
    .line 1805
    .restart local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@2a7
    move-result v4

    #@2a8
    if-eqz v4, :cond_13

    #@2aa
    .line 1807
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2ac
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2af
    move-result-object v8

    #@2b0
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b3
    move-result-object v8

    #@2b4
    move-object/from16 v0, p0

    #@2b6
    iget-boolean v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@2b8
    invoke-direct {v4, v5, v6, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@2bb
    return-object v4

    #@2bc
    .line 1810
    :cond_13
    move-object/from16 v0, v18

    #@2be
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2c1
    move-result-object v15

    #@2c2
    .line 1811
    .local v15, "ABZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v41, :cond_14

    #@2c4
    .line 1813
    move-object/from16 v0, v40

    #@2c6
    invoke-virtual {v15, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2c9
    move-result-object v15

    #@2ca
    .line 1816
    :cond_14
    invoke-virtual/range {v17 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2cd
    move-result-object v4

    #@2ce
    move-object/from16 v0, v20

    #@2d0
    move-object/from16 v1, v38

    #@2d2
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2d5
    move-result-object v8

    #@2d6
    invoke-virtual {v4, v15, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2d9
    move-result-object v11

    #@2da
    .line 1818
    .restart local v11    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v42, v15

    #@2dc
    .line 1819
    .restart local v42    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v39, :cond_11

    #@2de
    .line 1821
    move-object/from16 v0, v42

    #@2e0
    move-object/from16 v1, v38

    #@2e2
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2e5
    move-result-object v42

    #@2e6
    goto :goto_4

    #@2e7
    .line 1670
    nop

    #@2e8
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    #@0
    .prologue
    .line 1485
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@e
    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1593
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4
    move-result-object v0

    #@5
    .line 1594
    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1596
    return v2

    #@c
    .line 1599
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    move-result-object v1

    #@10
    .line 1601
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    #@13
    move-result v3

    #@14
    packed-switch v3, :pswitch_data_0

    #@17
    .line 1611
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 1607
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    #@23
    move-result v3

    #@24
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    #@27
    move-result v4

    #@28
    if-eq v3, v4, :cond_1

    #@2a
    const/4 v2, 0x1

    #@2b
    :cond_1
    return v2

    #@2c
    .line 1601
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 7

    #@0
    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    #@3
    move-result v4

    #@4
    .line 1492
    .local v4, "coord":I
    packed-switch v4, :pswitch_data_0

    #@7
    .line 1518
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9
    return-object v5

    #@a
    .line 1497
    :pswitch_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c
    .local v1, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    .line 1499
    .local v0, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@11
    move-result v5

    #@12
    if-nez v5, :cond_0

    #@14
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    .line 1501
    :cond_0
    return-object v0

    #@1b
    .line 1505
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    move-result-object v2

    #@23
    .line 1506
    .local v2, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x6

    #@24
    if-ne v5, v4, :cond_2

    #@26
    .line 1508
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@28
    const/4 v6, 0x0

    #@29
    aget-object v3, v5, v6

    #@2b
    .line 1509
    .local v3, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_2

    #@31
    .line 1511
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    move-result-object v2

    #@35
    .line 1514
    .end local v3    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    return-object v2

    #@36
    .line 1492
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2083
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2085
    return-object p0

    #@9
    .line 2088
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    .line 2089
    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 2091
    return-object p0

    #@12
    .line 2094
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    #@15
    move-result v0

    #@16
    packed-switch v0, :pswitch_data_0

    #@19
    .line 2119
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1b
    const-string/jumbo v1, "unsupported coordinate system"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 2098
    :pswitch_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@24
    .line 2099
    .local v7, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@26
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@28
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    move-result-object v3

    #@2c
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@2e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@31
    return-object v0

    #@32
    .line 2103
    .end local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    .restart local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    aget-object v8, v0, v5

    #@38
    .line 2104
    .local v8, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@3a
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3c
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3f
    move-result-object v3

    #@40
    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    aput-object v8, v4, v5

    #@44
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@46
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@49
    return-object v0

    #@4a
    .line 2108
    .end local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4c
    .line 2109
    .local v6, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@4e
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@50
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@53
    move-result-object v3

    #@54
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@56
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@59
    return-object v0

    #@5a
    .line 2114
    .end local v6    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_4
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5c
    .restart local v6    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5e
    aget-object v8, v0, v5

    #@60
    .line 2115
    .restart local v8    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@62
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@64
    invoke-virtual {v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@67
    move-result-object v3

    #@68
    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6a
    aput-object v8, v4, v5

    #@6c
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@6e
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@71
    return-object v0

    #@72
    .line 2094
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1525
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@4
    move-result v7

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 1527
    return-object p0

    #@8
    .line 1530
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    #@b
    move-result v6

    #@c
    .line 1532
    .local v6, "coord":I
    packed-switch v6, :pswitch_data_0

    #@f
    .line 1558
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@12
    move-result-object v7

    #@13
    return-object v7

    #@14
    .line 1537
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17
    move-result-object v2

    #@18
    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b
    move-result-object v0

    #@1c
    .line 1539
    .local v0, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f
    move-result-object v3

    #@20
    .line 1540
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
    .line 1542
    .local v1, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    move-result-object v8

    #@34
    iget-boolean v9, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@36
    invoke-virtual {v7, v2, v1, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@39
    move-result-object v7

    #@3a
    return-object v7

    #@3b
    .line 1547
    .end local v0    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3e
    move-result-object v2

    #@3f
    .restart local v2    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    move-result-object v0

    #@43
    .restart local v0    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@46
    move-result-object v7

    #@47
    aget-object v4, v7, v9

    #@49
    .line 1550
    .local v4, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@50
    move-result-object v3

    #@51
    .line 1551
    .restart local v3    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@58
    move-result-object v1

    #@59
    .line 1552
    .restart local v1    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5c
    move-result-object v5

    #@5d
    .line 1554
    .local v5, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@60
    move-result-object v7

    #@61
    const/4 v8, 0x1

    #@62
    new-array v8, v8, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@64
    aput-object v5, v8, v9

    #@66
    iget-boolean v9, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@68
    invoke-virtual {v7, v3, v1, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6b
    move-result-object v7

    #@6c
    return-object v7

    #@6d
    .line 1532
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
    .line 1565
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1567
    return-object p0

    #@7
    .line 1570
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    #@a
    move-result v3

    #@b
    .line 1572
    .local v3, "coord":I
    packed-switch v3, :pswitch_data_0

    #@e
    .line 1586
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@11
    move-result-object v4

    #@12
    return-object v4

    #@13
    .line 1577
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16
    move-result-object v2

    #@17
    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-result-object v0

    #@1b
    .line 1580
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
    .line 1582
    .local v1, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2e
    move-result-object v5

    #@2f
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@31
    invoke-virtual {v4, v2, v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@34
    move-result-object v4

    #@35
    return-object v4

    #@36
    .line 1572
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
    .line 1839
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@3
    .line 1840
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@5
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@0
    .prologue
    .line 1854
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1856
    return-object p0

    #@7
    .line 1860
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@d
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public tau()Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1865
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1867
    return-object p0

    #@8
    .line 1870
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@b
    move-result-object v1

    #@c
    .line 1871
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@f
    move-result v9

    #@10
    .line 1873
    .local v9, "coord":I
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    .line 1875
    .local v6, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v9, :pswitch_data_0

    #@15
    .line 1891
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v2, "unsupported coordinate system"

    #@1a
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1880
    :pswitch_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    .line 1881
    .local v7, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@22
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@29
    move-result-object v3

    #@2a
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@2c
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@2f
    return-object v0

    #@30
    .line 1886
    .end local v7    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    .restart local v7    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    aget-object v8, v0, v10

    #@36
    .line 1887
    .local v8, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@38
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3f
    move-result-object v3

    #@40
    const/4 v4, 0x1

    #@41
    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@43
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@46
    move-result-object v5

    #@47
    aput-object v5, v4, v10

    #@49
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@4b
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@4e
    return-object v0

    #@4f
    .line 1875
    nop

    #@50
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

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 36

    #@0
    .prologue
    .line 1898
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1900
    return-object p0

    #@7
    .line 1903
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v4

    #@b
    .line 1905
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    move-object/from16 v18, v0

    #@11
    .line 1906
    .local v18, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 1909
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 1912
    :cond_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@1f
    move-result v30

    #@20
    .line 1914
    .local v30, "coord":I
    sparse-switch v30, :sswitch_data_0

    #@23
    .line 2001
    new-instance v3, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v7, "unsupported coordinate system"

    #@28
    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 1918
    :sswitch_0
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@30
    move-object/from16 v21, v0

    #@32
    .line 1920
    .local v21, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    #@34
    move-object/from16 v1, v18

    #@36
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@39
    move-result-object v3

    #@3a
    move-object/from16 v0, v18

    #@3c
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3f
    move-result-object v13

    #@40
    .line 1922
    .local v13, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4f
    move-result-object v5

    #@50
    .line 1923
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@53
    move-result-object v3

    #@54
    move-object/from16 v0, v18

    #@56
    invoke-virtual {v0, v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@59
    move-result-object v6

    #@5a
    .line 1925
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@60
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@63
    return-object v3

    #@64
    .line 1929
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@68
    move-object/from16 v21, v0

    #@6a
    .restart local v21    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@6c
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6e
    const/4 v7, 0x0

    #@6f
    aget-object v23, v3, v7

    #@71
    .line 1931
    .local v23, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@74
    move-result v24

    #@75
    .line 1932
    .local v24, "Z1IsOne":Z
    if-eqz v24, :cond_2

    #@77
    move-object/from16 v20, v18

    #@79
    .line 1933
    .local v20, "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    if-eqz v24, :cond_3

    #@7b
    move-object/from16 v22, v21

    #@7d
    .line 1935
    .local v22, "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@80
    move-result-object v19

    #@81
    .line 1936
    .local v19, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    #@83
    move-object/from16 v1, v22

    #@85
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@88
    move-result-object v15

    #@89
    .line 1937
    .local v15, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v20

    #@8b
    .line 1938
    .local v17, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8e
    move-result-object v35

    #@8f
    .line 1939
    .local v35, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    #@91
    invoke-virtual {v15, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@94
    move-result-object v32

    #@95
    .line 1940
    .local v32, "sv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@98
    move-result-object v3

    #@99
    move-object/from16 v0, v32

    #@9b
    move-object/from16 v1, v35

    #@9d
    invoke-virtual {v0, v15, v1, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a0
    move-result-object v31

    #@a1
    .line 1942
    .local v31, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    #@a3
    move-object/from16 v1, v31

    #@a5
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a8
    move-result-object v5

    #@a9
    .line 1943
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ac
    move-result-object v3

    #@ad
    move-object/from16 v0, v17

    #@af
    move-object/from16 v1, v31

    #@b1
    move-object/from16 v2, v32

    #@b3
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b6
    move-result-object v6

    #@b7
    .line 1944
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    #@b9
    move-object/from16 v1, v35

    #@bb
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@be
    move-result-object v26

    #@bf
    .line 1946
    .local v26, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@c1
    const/4 v7, 0x1

    #@c2
    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c4
    const/4 v8, 0x0

    #@c5
    aput-object v26, v7, v8

    #@c7
    move-object/from16 v0, p0

    #@c9
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@cb
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@ce
    return-object v3

    #@cf
    .line 1932
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v32    # "sv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v35    # "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    move-object/from16 v0, v18

    #@d1
    move-object/from16 v1, v23

    #@d3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d6
    move-result-object v20

    #@d7
    .restart local v20    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@d8
    .line 1933
    :cond_3
    move-object/from16 v0, v21

    #@da
    move-object/from16 v1, v23

    #@dc
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@df
    move-result-object v22

    #@e0
    .restart local v22    # "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    #@e1
    .line 1950
    .end local v20    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "Z1IsOne":Z
    :sswitch_2
    move-object/from16 v0, p0

    #@e3
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e5
    .restart local v13    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@e7
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e9
    const/4 v7, 0x0

    #@ea
    aget-object v23, v3, v7

    #@ec
    .line 1952
    .restart local v23    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@ef
    move-result v24

    #@f0
    .line 1953
    .restart local v24    # "Z1IsOne":Z
    if-eqz v24, :cond_4

    #@f2
    move-object v14, v13

    #@f3
    .line 1954
    .local v14, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    if-eqz v24, :cond_5

    #@f5
    move-object/from16 v25, v23

    #@f7
    .line 1955
    .local v25, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@fa
    move-result-object v27

    #@fb
    .line 1956
    .local v27, "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v24, :cond_6

    #@fd
    move-object/from16 v28, v27

    #@ff
    .line 1957
    .local v28, "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@102
    move-result-object v3

    #@103
    invoke-virtual {v3, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@106
    move-result-object v3

    #@107
    move-object/from16 v0, v28

    #@109
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@10c
    move-result-object v16

    #@10d
    .line 1958
    .local v16, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@110
    move-result v3

    #@111
    if-eqz v3, :cond_7

    #@113
    .line 1960
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@115
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@118
    move-result-object v7

    #@119
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@11c
    move-result-object v7

    #@11d
    move-object/from16 v0, p0

    #@11f
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@121
    move-object/from16 v0, v16

    #@123
    invoke-direct {v3, v4, v0, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@126
    return-object v3

    #@127
    .line 1953
    .end local v14    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v23

    #@129
    invoke-virtual {v13, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12c
    move-result-object v14

    #@12d
    .restart local v14    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_2

    #@12e
    .line 1954
    :cond_5
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@131
    move-result-object v25

    #@132
    .restart local v25    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_3

    #@133
    .line 1956
    .restart local v27    # "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v0, v27

    #@135
    move-object/from16 v1, v25

    #@137
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13a
    move-result-object v28

    #@13b
    .restart local v28    # "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_4

    #@13c
    .line 1963
    .restart local v16    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13f
    move-result-object v5

    #@140
    .line 1964
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v24, :cond_9

    #@142
    move-object/from16 v26, v16

    #@144
    .line 1966
    .restart local v26    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@147
    move-result-object v29

    #@148
    .line 1968
    .local v29, "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    #@14b
    move-result v3

    #@14c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    #@14f
    move-result v7

    #@150
    shr-int/lit8 v7, v7, 0x1

    #@152
    if-ge v3, v7, :cond_c

    #@154
    .line 1970
    move-object/from16 v0, v18

    #@156
    invoke-virtual {v13, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@159
    move-result-object v3

    #@15a
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15d
    move-result-object v33

    #@15e
    .line 1972
    .local v33, "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@161
    move-result v3

    #@162
    if-eqz v3, :cond_a

    #@164
    .line 1974
    move-object/from16 v0, v28

    #@166
    move-object/from16 v1, v25

    #@168
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16b
    move-result-object v3

    #@16c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16f
    move-result-object v34

    #@170
    .line 1981
    .local v34, "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_6
    move-object/from16 v0, v33

    #@172
    move-object/from16 v1, v16

    #@174
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@177
    move-result-object v3

    #@178
    move-object/from16 v0, v25

    #@17a
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17d
    move-result-object v3

    #@17e
    move-object/from16 v0, v33

    #@180
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@183
    move-result-object v3

    #@184
    move-object/from16 v0, v34

    #@186
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@189
    move-result-object v3

    #@18a
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@18d
    move-result-object v10

    #@18e
    .line 1982
    .local v10, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@191
    move-result v3

    #@192
    if-eqz v3, :cond_b

    #@194
    .line 1984
    move-object/from16 v0, v26

    #@196
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@199
    move-result-object v10

    #@19a
    .line 1997
    .end local v33    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8
    :goto_7
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@19c
    const/4 v3, 0x1

    #@19d
    new-array v11, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@19f
    const/4 v3, 0x0

    #@1a0
    aput-object v26, v11, v3

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget-boolean v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@1a6
    move-object v8, v4

    #@1a7
    move-object v9, v5

    #@1a8
    invoke-direct/range {v7 .. v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@1ab
    return-object v7

    #@1ac
    .line 1964
    .end local v10    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v16

    #@1ae
    move-object/from16 v1, v25

    #@1b0
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b3
    move-result-object v26

    #@1b4
    .restart local v26    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_5

    #@1b5
    .line 1979
    .restart local v29    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v33    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b8
    move-result-object v3

    #@1b9
    move-object/from16 v0, v28

    #@1bb
    move-object/from16 v1, v29

    #@1bd
    invoke-virtual {v0, v1, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c0
    move-result-object v34

    #@1c1
    .restart local v34    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_6

    #@1c2
    .line 1986
    .restart local v10    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_b
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@1c5
    move-result v3

    #@1c6
    if-nez v3, :cond_8

    #@1c8
    .line 1988
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1cb
    move-result-object v3

    #@1cc
    move-object/from16 v0, v26

    #@1ce
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d1
    move-result-object v3

    #@1d2
    invoke-virtual {v10, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d5
    move-result-object v10

    #@1d6
    goto :goto_7

    #@1d7
    .line 1993
    .end local v10    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c
    if-eqz v24, :cond_d

    #@1d9
    move-object/from16 v20, v18

    #@1db
    .line 1994
    .restart local v20    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_8
    move-object/from16 v0, v20

    #@1dd
    move-object/from16 v1, v16

    #@1df
    invoke-virtual {v0, v1, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e2
    move-result-object v3

    #@1e3
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e6
    move-result-object v3

    #@1e7
    move-object/from16 v0, v26

    #@1e9
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ec
    move-result-object v10

    #@1ed
    .restart local v10    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_7

    #@1ee
    .line 1993
    .end local v10    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_d
    move-object/from16 v0, v18

    #@1f0
    move-object/from16 v1, v23

    #@1f2
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f5
    move-result-object v20

    #@1f6
    .restart local v20    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_8

    #@1f7
    .line 1914
    nop

    #@1f8
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 25
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 2008
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 2010
    return-object p1

    #@7
    .line 2012
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 2014
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 2017
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@15
    move-result-object v3

    #@16
    .line 2019
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-object/from16 v16, v0

    #@1c
    .line 2020
    .local v16, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 2023
    return-object p1

    #@23
    .line 2026
    :cond_2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@26
    move-result v24

    #@27
    .line 2028
    .local v24, "coord":I
    packed-switch v24, :pswitch_data_0

    #@2a
    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2d
    move-result-object v2

    #@2e
    move-object/from16 v0, p1

    #@30
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@33
    move-result-object v2

    #@34
    return-object v2

    #@35
    .line 2033
    :pswitch_0
    move-object/from16 v0, p1

    #@37
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@39
    move-object/from16 v18, v0

    #@3b
    .local v18, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@3d
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3f
    const/4 v6, 0x0

    #@40
    aget-object v22, v2, v6

    #@42
    .line 2034
    .local v22, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@45
    move-result v2

    #@46
    if-nez v2, :cond_3

    #@48
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 2039
    move-object/from16 v0, p0

    #@50
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@52
    .local v10, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@54
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@56
    const/4 v6, 0x0

    #@57
    aget-object v20, v2, v6

    #@59
    .line 2040
    .local v20, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@5b
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5d
    .line 2042
    .local v13, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@60
    move-result-object v17

    #@61
    .line 2043
    .local v17, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@64
    move-result-object v11

    #@65
    .line 2044
    .local v11, "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@68
    move-result-object v21

    #@69
    .line 2045
    .local v21, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    #@6b
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6e
    move-result-object v12

    #@6f
    .line 2047
    .local v12, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@72
    move-result-object v2

    #@73
    move-object/from16 v0, v21

    #@75
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v2, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@80
    move-result-object v15

    #@81
    .line 2048
    .local v15, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@84
    move-result-object v14

    #@85
    .line 2049
    .local v14, "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8c
    move-result-object v2

    #@8d
    move-object/from16 v0, v21

    #@8f
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@96
    move-result-object v2

    #@97
    move-object/from16 v0, v17

    #@99
    move-object/from16 v1, v21

    #@9b
    invoke-virtual {v2, v15, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9e
    move-result-object v8

    #@9f
    .line 2050
    .local v8, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    #@a1
    move-object/from16 v1, v21

    #@a3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a6
    move-result-object v19

    #@a7
    .line 2051
    .local v19, "X2Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    #@a9
    invoke-virtual {v0, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b0
    move-result-object v9

    #@b1
    .line 2053
    .local v9, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@b4
    move-result v2

    #@b5
    if-eqz v2, :cond_5

    #@b7
    .line 2055
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@ba
    move-result v2

    #@bb
    if-eqz v2, :cond_4

    #@bd
    .line 2057
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c0
    move-result-object v2

    #@c1
    return-object v2

    #@c2
    .line 2036
    .end local v8    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "X2Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c5
    move-result-object v2

    #@c6
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@cb
    move-result-object v2

    #@cc
    return-object v2

    #@cd
    .line 2060
    .restart local v8    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v9    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v10    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v11    # "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v12    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v13    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v14    # "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "X2Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v20    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v21    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d0
    move-result-object v2

    #@d1
    return-object v2

    #@d2
    .line 2063
    :cond_5
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@d5
    move-result v2

    #@d6
    if-eqz v2, :cond_6

    #@d8
    .line 2065
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@da
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@dd
    move-result-object v6

    #@de
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e1
    move-result-object v6

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@e6
    invoke-direct {v2, v3, v8, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@e9
    return-object v2

    #@ea
    .line 2068
    :cond_6
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ed
    move-result-object v2

    #@ee
    move-object/from16 v0, v19

    #@f0
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f3
    move-result-object v4

    #@f4
    .line 2069
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f7
    move-result-object v2

    #@f8
    move-object/from16 v0, v21

    #@fa
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@fd
    move-result-object v23

    #@fe
    .line 2070
    .local v23, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@101
    move-result-object v2

    #@102
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@105
    move-result-object v2

    #@106
    move-object/from16 v0, v23

    #@108
    invoke-virtual {v2, v15, v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@10b
    move-result-object v5

    #@10c
    .line 2072
    .local v5, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@10e
    const/4 v6, 0x1

    #@10f
    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@111
    const/4 v7, 0x0

    #@112
    aput-object v23, v6, v7

    #@114
    move-object/from16 v0, p0

    #@116
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    #@118
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@11b
    return-object v2

    #@11c
    .line 2028
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
