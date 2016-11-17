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
    .line 1588
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@4
    .line 1586
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
    .line 1601
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@5
    .line 1603
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
    .line 1605
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
    .line 1603
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    goto :goto_1

    #@19
    .line 1608
    :cond_2
    if-eqz p2, :cond_3

    #@1b
    .line 1611
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@22
    .line 1614
    if-eqz p1, :cond_3

    #@24
    .line 1616
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@28
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@2f
    .line 1620
    :cond_3
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@31
    .line 1599
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
    .line 1627
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 1629
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@5
    .line 1625
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 48
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 1701
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1703
    return-object p1

    #@7
    .line 1705
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 1707
    return-object p0

    #@e
    .line 1710
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@11
    move-result-object v5

    #@12
    .line 1711
    .local v5, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@15
    move-result v43

    #@16
    .line 1713
    .local v43, "coord":I
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-object/from16 v34, v0

    #@1c
    .line 1714
    .local v34, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@1e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    move-object/from16 v35, v0

    #@22
    .line 1716
    .local v35, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    sparse-switch v43, :sswitch_data_0

    #@25
    .line 1875
    new-instance v4, Ljava/lang/IllegalStateException;

    #@27
    const-string/jumbo v8, "unsupported coordinate system"

    #@2a
    invoke-direct {v4, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4

    #@2e
    .line 1720
    :sswitch_0
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    move-object/from16 v36, v0

    #@34
    .line 1721
    .local v36, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@36
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@38
    move-object/from16 v37, v0

    #@3a
    .line 1723
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
    .line 1724
    .local v45, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_3

    #@48
    .line 1726
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_2

    #@4e
    .line 1728
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@51
    move-result-object v4

    #@52
    return-object v4

    #@53
    .line 1731
    :cond_2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@56
    move-result-object v4

    #@57
    return-object v4

    #@58
    .line 1734
    :cond_3
    move-object/from16 v0, v45

    #@5a
    move-object/from16 v1, v44

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5f
    move-result-object v19

    #@60
    .line 1736
    .local v19, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@63
    move-result-object v4

    #@64
    move-object/from16 v0, v19

    #@66
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@69
    move-result-object v4

    #@6a
    move-object/from16 v0, v44

    #@6c
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@73
    move-result-object v8

    #@74
    invoke-virtual {v4, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@77
    move-result-object v6

    #@78
    .line 1737
    .local v6, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v34

    #@7a
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7d
    move-result-object v4

    #@7e
    move-object/from16 v0, v19

    #@80
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@87
    move-result-object v4

    #@88
    move-object/from16 v0, v36

    #@8a
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8d
    move-result-object v7

    #@8e
    .line 1739
    .local v7, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@90
    move-object/from16 v0, p0

    #@92
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@94
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@97
    return-object v4

    #@98
    .line 1743
    .end local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v44    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v45    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9c
    move-object/from16 v36, v0

    #@9e
    .restart local v36    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@a0
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a2
    const/4 v8, 0x0

    #@a3
    aget-object v38, v4, v8

    #@a5
    .line 1744
    .local v38, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@a7
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a9
    move-object/from16 v37, v0

    #@ab
    .restart local v37    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@ad
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@af
    const/4 v8, 0x0

    #@b0
    aget-object v40, v4, v8

    #@b2
    .line 1746
    .local v40, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@b5
    move-result v41

    #@b6
    .line 1748
    .local v41, "Z2IsOne":Z
    move-object/from16 v0, v38

    #@b8
    move-object/from16 v1, v37

    #@ba
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@bd
    move-result-object v25

    #@be
    .line 1749
    .local v25, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_4

    #@c0
    move-object/from16 v26, v36

    #@c2
    .line 1750
    .local v26, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual/range {v25 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c5
    move-result-object v24

    #@c6
    .line 1751
    .local v24, "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v38

    #@c8
    move-object/from16 v1, v35

    #@ca
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@cd
    move-result-object v28

    #@ce
    .line 1752
    .local v28, "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_5

    #@d0
    move-object/from16 v29, v34

    #@d2
    .line 1753
    .local v29, "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual/range {v28 .. v29}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d5
    move-result-object v27

    #@d6
    .line 1755
    .local v27, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@d9
    move-result v4

    #@da
    if-eqz v4, :cond_7

    #@dc
    .line 1757
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@df
    move-result v4

    #@e0
    if-eqz v4, :cond_6

    #@e2
    .line 1759
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e5
    move-result-object v4

    #@e6
    return-object v4

    #@e7
    .line 1749
    .end local v24    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v36

    #@e9
    move-object/from16 v1, v40

    #@eb
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ee
    move-result-object v26

    #@ef
    goto :goto_0

    #@f0
    .line 1752
    .restart local v24    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v26    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v28    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    move-object/from16 v0, v34

    #@f2
    move-object/from16 v1, v40

    #@f4
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f7
    move-result-object v29

    #@f8
    goto :goto_1

    #@f9
    .line 1762
    .restart local v27    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v29    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@fc
    move-result-object v4

    #@fd
    return-object v4

    #@fe
    .line 1765
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@101
    move-result-object v31

    #@102
    .line 1766
    .local v31, "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    #@104
    move-object/from16 v1, v27

    #@106
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@109
    move-result-object v30

    #@10a
    .line 1767
    .local v30, "VCu":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_8

    #@10c
    move-object/from16 v33, v38

    #@10e
    .line 1768
    .local v33, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    move-object/from16 v0, v24

    #@110
    move-object/from16 v1, v27

    #@112
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@115
    move-result-object v47

    #@116
    .line 1769
    .local v47, "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@119
    move-result-object v4

    #@11a
    move-object/from16 v0, v47

    #@11c
    move-object/from16 v1, v24

    #@11e
    move-object/from16 v2, v31

    #@120
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@123
    move-result-object v4

    #@124
    move-object/from16 v0, v33

    #@126
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@129
    move-result-object v4

    #@12a
    move-object/from16 v0, v30

    #@12c
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12f
    move-result-object v14

    #@130
    .line 1771
    .local v14, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v27

    #@132
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@135
    move-result-object v6

    #@136
    .line 1772
    .restart local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_9

    #@138
    move-object/from16 v32, v31

    #@13a
    .line 1773
    .local v32, "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    move-object/from16 v0, v24

    #@13c
    move-object/from16 v1, v34

    #@13e
    move-object/from16 v2, v27

    #@140
    move-object/from16 v3, v36

    #@142
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@145
    move-result-object v4

    #@146
    move-object/from16 v0, v32

    #@148
    move-object/from16 v1, v47

    #@14a
    invoke-virtual {v4, v0, v1, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@14d
    move-result-object v7

    #@14e
    .line 1774
    .restart local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v30

    #@150
    move-object/from16 v1, v33

    #@152
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@155
    move-result-object v42

    #@156
    .line 1776
    .local v42, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@158
    const/4 v8, 0x1

    #@159
    new-array v8, v8, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15b
    const/4 v9, 0x0

    #@15c
    aput-object v42, v8, v9

    #@15e
    move-object/from16 v0, p0

    #@160
    iget-boolean v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@162
    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@165
    return-object v4

    #@166
    .line 1767
    .end local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v32    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v42    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v47    # "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8
    move-object/from16 v0, v38

    #@168
    move-object/from16 v1, v40

    #@16a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16d
    move-result-object v33

    #@16e
    .restart local v33    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_2

    #@16f
    .line 1772
    .restart local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v14    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v47    # "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v31

    #@171
    move-object/from16 v1, v40

    #@173
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@176
    move-result-object v32

    #@177
    .restart local v32    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_3

    #@178
    .line 1780
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

    #@17b
    move-result v4

    #@17c
    if-eqz v4, :cond_b

    #@17e
    .line 1782
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@181
    move-result v4

    #@182
    if-eqz v4, :cond_a

    #@184
    .line 1784
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@187
    move-result-object v4

    #@188
    return-object v4

    #@189
    .line 1787
    :cond_a
    move-object/from16 v0, p1

    #@18b
    move-object/from16 v1, p0

    #@18d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@190
    move-result-object v4

    #@191
    return-object v4

    #@192
    .line 1790
    :cond_b
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@196
    move-object/from16 v20, v0

    #@198
    .local v20, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@19a
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@19c
    const/4 v8, 0x0

    #@19d
    aget-object v38, v4, v8

    #@19f
    .line 1791
    .restart local v38    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@1a1
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a3
    move-object/from16 v21, v0

    #@1a5
    .local v21, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@1a7
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a9
    const/4 v8, 0x0

    #@1aa
    aget-object v40, v4, v8

    #@1ac
    .line 1793
    .restart local v40    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v38 .. v38}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@1af
    move-result v39

    #@1b0
    .line 1794
    .local v39, "Z1IsOne":Z
    move-object/from16 v26, v35

    #@1b2
    .restart local v26    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v21

    #@1b4
    .line 1795
    .local v23, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v39, :cond_c

    #@1b6
    .line 1797
    move-object/from16 v0, v35

    #@1b8
    move-object/from16 v1, v38

    #@1ba
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1bd
    move-result-object v26

    #@1be
    .line 1798
    move-object/from16 v0, v21

    #@1c0
    move-object/from16 v1, v38

    #@1c2
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c5
    move-result-object v23

    #@1c6
    .line 1801
    :cond_c
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@1c9
    move-result v41

    #@1ca
    .line 1802
    .restart local v41    # "Z2IsOne":Z
    move-object/from16 v25, v34

    #@1cc
    .restart local v25    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v20

    #@1ce
    .line 1803
    .local v22, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v41, :cond_d

    #@1d0
    .line 1805
    move-object/from16 v0, v34

    #@1d2
    move-object/from16 v1, v40

    #@1d4
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d7
    move-result-object v25

    #@1d8
    .line 1806
    move-object/from16 v0, v20

    #@1da
    move-object/from16 v1, v40

    #@1dc
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1df
    move-result-object v22

    #@1e0
    .line 1809
    :cond_d
    invoke-virtual/range {v22 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e3
    move-result-object v14

    #@1e4
    .line 1810
    .restart local v14    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v25 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e7
    move-result-object v18

    #@1e8
    .line 1812
    .local v18, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1eb
    move-result v4

    #@1ec
    if-eqz v4, :cond_f

    #@1ee
    .line 1814
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1f1
    move-result v4

    #@1f2
    if-eqz v4, :cond_e

    #@1f4
    .line 1816
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1f7
    move-result-object v4

    #@1f8
    return-object v4

    #@1f9
    .line 1819
    :cond_e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1fc
    move-result-object v4

    #@1fd
    return-object v4

    #@1fe
    .line 1823
    :cond_f
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@201
    move-result v4

    #@202
    if-eqz v4, :cond_12

    #@204
    .line 1826
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@207
    move-result-object v46

    #@208
    .line 1827
    .local v46, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20b
    move-result-object v34

    #@20c
    .line 1828
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20f
    move-result-object v36

    #@210
    .line 1830
    .restart local v36    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v37, v21

    #@212
    .line 1831
    .restart local v37    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v36

    #@214
    move-object/from16 v1, v21

    #@216
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@219
    move-result-object v4

    #@21a
    move-object/from16 v0, v34

    #@21c
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21f
    move-result-object v19

    #@220
    .line 1833
    .restart local v19    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@223
    move-result-object v4

    #@224
    move-object/from16 v0, v19

    #@226
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@229
    move-result-object v4

    #@22a
    move-object/from16 v0, v34

    #@22c
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22f
    move-result-object v4

    #@230
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@233
    move-result-object v8

    #@234
    invoke-virtual {v4, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@237
    move-result-object v6

    #@238
    .line 1834
    .restart local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@23b
    move-result v4

    #@23c
    if-eqz v4, :cond_10

    #@23e
    .line 1836
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@240
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@243
    move-result-object v8

    #@244
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@247
    move-result-object v8

    #@248
    move-object/from16 v0, p0

    #@24a
    iget-boolean v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@24c
    invoke-direct {v4, v5, v6, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@24f
    return-object v4

    #@250
    .line 1839
    :cond_10
    move-object/from16 v0, v34

    #@252
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@255
    move-result-object v4

    #@256
    move-object/from16 v0, v19

    #@258
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@25b
    move-result-object v4

    #@25c
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@25f
    move-result-object v4

    #@260
    move-object/from16 v0, v36

    #@262
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@265
    move-result-object v7

    #@266
    .line 1840
    .restart local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@269
    move-result-object v4

    #@26a
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26d
    move-result-object v11

    #@26e
    .line 1841
    .local v11, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@270
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@273
    move-result-object v42

    #@274
    .line 1871
    .end local v7    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v46    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v42    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_11
    :goto_4
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@276
    const/4 v4, 0x1

    #@277
    new-array v12, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@279
    const/4 v4, 0x0

    #@27a
    aput-object v42, v12, v4

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget-boolean v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@280
    move-object v9, v5

    #@281
    move-object v10, v6

    #@282
    invoke-direct/range {v8 .. v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@285
    return-object v8

    #@286
    .line 1845
    .end local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v42    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@289
    move-result-object v18

    #@28a
    .line 1847
    move-object/from16 v0, v25

    #@28c
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@28f
    move-result-object v16

    #@290
    .line 1848
    .local v16, "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v26

    #@292
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@295
    move-result-object v17

    #@296
    .line 1850
    .local v17, "AU2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@299
    move-result-object v6

    #@29a
    .line 1851
    .restart local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@29d
    move-result v4

    #@29e
    if-eqz v4, :cond_13

    #@2a0
    .line 1853
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2a2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2a5
    move-result-object v8

    #@2a6
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2a9
    move-result-object v8

    #@2aa
    move-object/from16 v0, p0

    #@2ac
    iget-boolean v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@2ae
    invoke-direct {v4, v5, v6, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@2b1
    return-object v4

    #@2b2
    .line 1856
    :cond_13
    move-object/from16 v0, v18

    #@2b4
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b7
    move-result-object v15

    #@2b8
    .line 1857
    .local v15, "ABZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v41, :cond_14

    #@2ba
    .line 1859
    move-object/from16 v0, v40

    #@2bc
    invoke-virtual {v15, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2bf
    move-result-object v15

    #@2c0
    .line 1862
    :cond_14
    invoke-virtual/range {v17 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2c3
    move-result-object v4

    #@2c4
    move-object/from16 v0, v20

    #@2c6
    move-object/from16 v1, v38

    #@2c8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2cb
    move-result-object v8

    #@2cc
    invoke-virtual {v4, v15, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2cf
    move-result-object v11

    #@2d0
    .line 1864
    .restart local v11    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v42, v15

    #@2d2
    .line 1865
    .restart local v42    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v39, :cond_11

    #@2d4
    .line 1867
    move-object/from16 v0, v42

    #@2d6
    move-object/from16 v1, v38

    #@2d8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2db
    move-result-object v42

    #@2dc
    goto :goto_4

    #@2dd
    .line 1716
    nop

    #@2de
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
    .line 1636
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    .line 1676
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4
    move-result-object v0

    #@5
    .line 1677
    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1679
    return v2

    #@c
    .line 1682
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    move-result-object v1

    #@10
    .line 1684
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    #@13
    move-result v3

    #@14
    packed-switch v3, :pswitch_data_0

    #@17
    .line 1694
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
    .line 1690
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
    .line 1684
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
    .line 1641
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    #@3
    move-result v4

    #@4
    .line 1643
    .local v4, "coord":I
    packed-switch v4, :pswitch_data_0

    #@7
    .line 1669
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9
    return-object v5

    #@a
    .line 1648
    :pswitch_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c
    .local v1, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    .line 1650
    .local v0, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

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
    .line 1652
    :cond_0
    return-object v0

    #@1b
    .line 1656
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    move-result-object v2

    #@23
    .line 1657
    .local v2, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x6

    #@24
    if-ne v5, v4, :cond_2

    #@26
    .line 1659
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@28
    const/4 v6, 0x0

    #@29
    aget-object v3, v5, v6

    #@2b
    .line 1660
    .local v3, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_2

    #@31
    .line 1662
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    move-result-object v2

    #@35
    .line 1665
    .end local v3    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    return-object v2

    #@36
    .line 1643
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
    .line 2067
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2069
    return-object p0

    #@9
    .line 2072
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    .line 2073
    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 2075
    return-object p0

    #@12
    .line 2078
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    #@15
    move-result v0

    #@16
    packed-switch v0, :pswitch_data_0

    #@19
    .line 2103
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1b
    const-string/jumbo v1, "unsupported coordinate system"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 2082
    :pswitch_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@24
    .line 2083
    .local v7, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@26
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@28
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    move-result-object v3

    #@2c
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@2e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@31
    return-object v0

    #@32
    .line 2087
    .end local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    .restart local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    aget-object v8, v0, v5

    #@38
    .line 2088
    .local v8, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@3a
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3c
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3f
    move-result-object v3

    #@40
    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    aput-object v8, v4, v5

    #@44
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@46
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@49
    return-object v0

    #@4a
    .line 2092
    .end local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4c
    .line 2093
    .local v6, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@4e
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@50
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@53
    move-result-object v3

    #@54
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@56
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@59
    return-object v0

    #@5a
    .line 2098
    .end local v6    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_4
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5c
    .restart local v6    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5e
    aget-object v8, v0, v5

    #@60
    .line 2099
    .restart local v8    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@62
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@64
    invoke-virtual {v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@67
    move-result-object v3

    #@68
    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6a
    aput-object v8, v4, v5

    #@6c
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@6e
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@71
    return-object v0

    #@72
    .line 2078
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

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 36

    #@0
    .prologue
    .line 1882
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1884
    return-object p0

    #@7
    .line 1887
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v4

    #@b
    .line 1889
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    move-object/from16 v18, v0

    #@11
    .line 1890
    .local v18, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 1893
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 1896
    :cond_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@1f
    move-result v30

    #@20
    .line 1898
    .local v30, "coord":I
    sparse-switch v30, :sswitch_data_0

    #@23
    .line 1985
    new-instance v3, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v7, "unsupported coordinate system"

    #@28
    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 1902
    :sswitch_0
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@30
    move-object/from16 v21, v0

    #@32
    .line 1904
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
    .line 1906
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
    .line 1907
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
    .line 1909
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@60
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@63
    return-object v3

    #@64
    .line 1913
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@68
    move-object/from16 v21, v0

    #@6a
    .restart local v21    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@6c
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6e
    const/4 v7, 0x0

    #@6f
    aget-object v23, v3, v7

    #@71
    .line 1915
    .local v23, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@74
    move-result v24

    #@75
    .line 1916
    .local v24, "Z1IsOne":Z
    if-eqz v24, :cond_2

    #@77
    move-object/from16 v20, v18

    #@79
    .line 1917
    .local v20, "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    if-eqz v24, :cond_3

    #@7b
    move-object/from16 v22, v21

    #@7d
    .line 1919
    .local v22, "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@80
    move-result-object v19

    #@81
    .line 1920
    .local v19, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    #@83
    move-object/from16 v1, v22

    #@85
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@88
    move-result-object v15

    #@89
    .line 1921
    .local v15, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v20

    #@8b
    .line 1922
    .local v17, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8e
    move-result-object v35

    #@8f
    .line 1923
    .local v35, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    #@91
    invoke-virtual {v15, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@94
    move-result-object v32

    #@95
    .line 1924
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
    .line 1926
    .local v31, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    #@a3
    move-object/from16 v1, v31

    #@a5
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a8
    move-result-object v5

    #@a9
    .line 1927
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ac
    move-result-object v3

    #@ad
    move-object/from16 v0, v20

    #@af
    move-object/from16 v1, v31

    #@b1
    move-object/from16 v2, v32

    #@b3
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b6
    move-result-object v6

    #@b7
    .line 1928
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    #@b9
    move-object/from16 v1, v35

    #@bb
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@be
    move-result-object v26

    #@bf
    .line 1930
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
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@cb
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@ce
    return-object v3

    #@cf
    .line 1916
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
    .line 1917
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
    .line 1934
    .end local v20    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "Z1IsOne":Z
    :sswitch_2
    move-object/from16 v0, p0

    #@e3
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e5
    .restart local v13    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@e7
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e9
    const/4 v7, 0x0

    #@ea
    aget-object v23, v3, v7

    #@ec
    .line 1936
    .restart local v23    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@ef
    move-result v24

    #@f0
    .line 1937
    .restart local v24    # "Z1IsOne":Z
    if-eqz v24, :cond_4

    #@f2
    move-object v14, v13

    #@f3
    .line 1938
    .local v14, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    if-eqz v24, :cond_5

    #@f5
    move-object/from16 v25, v23

    #@f7
    .line 1939
    .local v25, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@fa
    move-result-object v27

    #@fb
    .line 1940
    .local v27, "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v24, :cond_6

    #@fd
    move-object/from16 v28, v27

    #@ff
    .line 1941
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
    .line 1942
    .local v16, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@110
    move-result v3

    #@111
    if-eqz v3, :cond_7

    #@113
    .line 1944
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
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@121
    move-object/from16 v0, v16

    #@123
    invoke-direct {v3, v4, v0, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@126
    return-object v3

    #@127
    .line 1937
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
    .line 1938
    :cond_5
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@131
    move-result-object v25

    #@132
    .restart local v25    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_3

    #@133
    .line 1940
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
    .line 1947
    .restart local v16    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13f
    move-result-object v5

    #@140
    .line 1948
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v24, :cond_9

    #@142
    move-object/from16 v26, v16

    #@144
    .line 1950
    .restart local v26    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@147
    move-result-object v29

    #@148
    .line 1952
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
    .line 1954
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
    .line 1956
    .local v33, "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@161
    move-result v3

    #@162
    if-eqz v3, :cond_a

    #@164
    .line 1958
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
    .line 1965
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
    .line 1966
    .local v10, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@191
    move-result v3

    #@192
    if-eqz v3, :cond_b

    #@194
    .line 1968
    move-object/from16 v0, v26

    #@196
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@199
    move-result-object v10

    #@19a
    .line 1981
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
    iget-boolean v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@1a6
    move-object v8, v4

    #@1a7
    move-object v9, v5

    #@1a8
    invoke-direct/range {v7 .. v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@1ab
    return-object v7

    #@1ac
    .line 1948
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
    .line 1963
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
    .line 1970
    .restart local v10    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_b
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@1c5
    move-result v3

    #@1c6
    if-nez v3, :cond_8

    #@1c8
    .line 1972
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
    .line 1977
    .end local v10    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c
    if-eqz v24, :cond_d

    #@1d9
    move-object/from16 v20, v18

    #@1db
    .line 1978
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
    .line 1977
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
    goto :goto_8

    #@1f7
    .line 1898
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
    .line 1992
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1994
    return-object p1

    #@7
    .line 1996
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 1998
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 2001
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@15
    move-result-object v3

    #@16
    .line 2003
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-object/from16 v16, v0

    #@1c
    .line 2004
    .local v16, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 2007
    return-object p1

    #@23
    .line 2010
    :cond_2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@26
    move-result v24

    #@27
    .line 2012
    .local v24, "coord":I
    packed-switch v24, :pswitch_data_0

    #@2a
    .line 2060
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
    .line 2017
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
    .line 2018
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
    .line 2023
    move-object/from16 v0, p0

    #@50
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@52
    .local v10, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@54
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@56
    const/4 v6, 0x0

    #@57
    aget-object v20, v2, v6

    #@59
    .line 2024
    .local v20, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@5b
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5d
    .line 2026
    .local v13, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@60
    move-result-object v17

    #@61
    .line 2027
    .local v17, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@64
    move-result-object v11

    #@65
    .line 2028
    .local v11, "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@68
    move-result-object v21

    #@69
    .line 2029
    .local v21, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    #@6b
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6e
    move-result-object v12

    #@6f
    .line 2031
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
    .line 2032
    .local v15, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@84
    move-result-object v14

    #@85
    .line 2033
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
    .line 2034
    .local v8, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    #@a1
    move-object/from16 v1, v21

    #@a3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a6
    move-result-object v19

    #@a7
    .line 2035
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
    .line 2037
    .local v9, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@b4
    move-result v2

    #@b5
    if-eqz v2, :cond_5

    #@b7
    .line 2039
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@ba
    move-result v2

    #@bb
    if-eqz v2, :cond_4

    #@bd
    .line 2041
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c0
    move-result-object v2

    #@c1
    return-object v2

    #@c2
    .line 2020
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
    .line 2044
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
    .line 2047
    :cond_5
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@d5
    move-result v2

    #@d6
    if-eqz v2, :cond_6

    #@d8
    .line 2049
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
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@e6
    invoke-direct {v2, v3, v8, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@e9
    return-object v2

    #@ea
    .line 2052
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
    .line 2053
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
    .line 2054
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
    .line 2056
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
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@118
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@11b
    return-object v2

    #@11c
    .line 2012
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
