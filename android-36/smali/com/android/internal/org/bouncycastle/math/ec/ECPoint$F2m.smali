.class public Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1647
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1650
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1654
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1657
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 32
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 1726
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1728
    return-object v1

    .line 1730
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1732
    return-object v0

    .line 1735
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 1736
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1738
    .local v3, "coord":I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1739
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1741
    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_284

    .line 1900
    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "unsupported coordinate system"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1805
    .end local v17    # "coord":I
    .restart local v3    # "coord":I
    :sswitch_2d
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 1807
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1809
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 1812
    :cond_3e
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 1815
    :cond_43
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v8, "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v9, v9, v7

    .line 1816
    .local v9, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v10, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v10, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v11, v11, v7

    .line 1818
    .local v11, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 1819
    .local v12, "Z1IsOne":Z
    move-object v13, v5

    .local v13, "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v14, v10

    .line 1820
    .local v14, "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v12, :cond_5f

    .line 1822
    invoke-virtual {v13, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1823
    invoke-virtual {v14, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1826
    :cond_5f
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v15

    .line 1827
    .local v15, "Z2IsOne":Z
    move-object/from16 v16, v4

    .local v16, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v8

    .line 1828
    .local v17, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v15, :cond_7c

    .line 1830
    move/from16 v18, v7

    move-object/from16 v7, v16

    .end local v16    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1831
    .end local v7    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v7, v17

    .end local v17    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v7, v16

    move-object/from16 v6, v17

    .end local v7    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_84

    .line 1828
    :cond_7c
    move/from16 v18, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v17

    .end local v17    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v16

    .line 1834
    .end local v16    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_84
    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    invoke-virtual {v6, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1835
    .local v3, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1837
    .local v19, "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_a4

    .line 1839
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_9f

    .line 1841
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1844
    :cond_9f
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1848
    :cond_a4
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_11d

    .line 1851
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v20

    .line 1852
    .local v20, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1853
    move-object/from16 v21, v6

    .end local v6    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1855
    .local v6, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v10

    .line 1856
    .local v22, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v10

    move/from16 v22, v12

    .end local v12    # "Z1IsOne":Z
    .local v10, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "Z1IsOne":Z
    .local v23, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1858
    .local v12, "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v24, v10

    .end local v10    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    move-object/from16 v25, v14

    .end local v14    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1859
    .local v10, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v14

    if-eqz v14, :cond_f4

    .line 1861
    new-instance v14, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move/from16 v26, v15

    .end local v15    # "Z2IsOne":Z
    .local v26, "Z2IsOne":Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-direct {v14, v2, v10, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v14

    .line 1864
    .end local v26    # "Z2IsOne":Z
    .restart local v15    # "Z2IsOne":Z
    :cond_f4
    move/from16 v26, v15

    .end local v15    # "Z2IsOne":Z
    .restart local v26    # "Z2IsOne":Z
    invoke-virtual {v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1865
    .local v14, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1866
    .local v15, "L3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v27, v4

    .end local v4    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v27, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1867
    .end local v6    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v24    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v3

    move-object/from16 v6, v19

    move-object/from16 v19, v7

    goto :goto_177

    .line 1870
    .end local v21    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1IsOne":Z
    .end local v23    # "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Z2IsOne":Z
    .end local v27    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v12, "Z1IsOne":Z
    .local v14, "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v15, "Z2IsOne":Z
    :cond_11d
    move-object/from16 v21, v6

    move-object/from16 v23, v10

    move/from16 v22, v12

    move-object/from16 v25, v14

    move/from16 v26, v15

    .end local v6    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z1IsOne":Z
    .end local v14    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z2IsOne":Z
    .restart local v21    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "Z1IsOne":Z
    .restart local v23    # "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v25    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v26    # "Z2IsOne":Z
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1872
    .end local v19    # "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1873
    .local v10, "AU1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1875
    .local v12, "AU2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1876
    .local v14, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v15

    if-eqz v15, :cond_14d

    .line 1878
    new-instance v15, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v19, v7

    .end local v7    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-direct {v15, v2, v14, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v15

    .line 1881
    .end local v19    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v7    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_14d
    move-object/from16 v19, v7

    .end local v7    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1882
    .local v7, "ABZ2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v26, :cond_159

    .line 1884
    invoke-virtual {v7, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1887
    :cond_159
    invoke-virtual {v12, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    move-object/from16 v20, v3

    .end local v3    # "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v15, v7, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1889
    .local v15, "L3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v3, v7

    .line 1890
    .local v3, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v22, :cond_173

    .line 1892
    invoke-virtual {v3, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v27, v4

    move-object v10, v14

    move-object v4, v3

    goto :goto_177

    .line 1890
    :cond_173
    move-object/from16 v27, v4

    move-object v10, v14

    move-object v4, v3

    .line 1896
    .end local v3    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "ABZ2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "AU2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v27    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_177
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v7, v18

    invoke-direct {v3, v2, v10, v15, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 1768
    .end local v6    # "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "L3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v19    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1IsOne":Z
    .end local v23    # "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Z2IsOne":Z
    .end local v27    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_182
    move/from16 v17, v3

    move/from16 v18, v7

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v3, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v6, v6, v18

    .line 1769
    .local v6, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v7, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v18

    .line 1771
    .local v8, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v9

    .line 1773
    .local v9, "Z2IsOne":Z
    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1774
    .local v10, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v9, :cond_19e

    move-object v11, v3

    goto :goto_1a2

    :cond_19e
    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1775
    .local v11, "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1a2
    invoke-virtual {v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1776
    .local v12, "U":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1777
    .local v13, "V1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v9, :cond_1ae

    move-object v14, v4

    goto :goto_1b2

    :cond_1ae
    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1778
    .local v14, "V2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1b2
    invoke-virtual {v13, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1780
    .local v15, "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_1cc

    .line 1782
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_1c7

    .line 1784
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1787
    :cond_1c7
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1790
    :cond_1cc
    move-object/from16 v19, v7

    .end local v7    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1791
    .local v7, "VSq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v20, v9

    .end local v9    # "Z2IsOne":Z
    .local v20, "Z2IsOne":Z
    invoke-virtual {v7, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1792
    .local v9, "VCu":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v20, :cond_1dd

    move-object/from16 v21, v6

    goto :goto_1e1

    :cond_1dd
    invoke-virtual {v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    :goto_1e1
    move-object/from16 v22, v21

    .line 1793
    .local v22, "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v6

    .end local v6    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1794
    .local v6, "uv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v10

    .end local v10    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v6, v12, v7, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    move-object/from16 v24, v11

    move-object/from16 v11, v22

    .end local v22    # "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v11, "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1796
    .local v10, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v13

    .end local v13    # "V1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "V1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1797
    .local v13, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v20, :cond_20a

    move-object/from16 v25, v7

    goto :goto_20e

    :cond_20a
    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    :goto_20e
    move-object/from16 v26, v25

    .line 1798
    .local v26, "VSqZ2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v25, v7

    .end local v7    # "VSq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "VSq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v4, v15, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    move-object/from16 v27, v3

    move-object/from16 v3, v26

    .end local v26    # "VSqZ2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "VSqZ2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v27, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v3, v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1799
    .local v7, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1801
    .local v26, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v28, v3

    .end local v3    # "VSqZ2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v28, "VSqZ2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v29, v6

    const/4 v6, 0x1

    .end local v6    # "uv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v29, "uv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-array v6, v6, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v26, v6, v18

    invoke-direct {v3, v2, v13, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 1745
    .end local v7    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "VCu":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "U":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "V2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v19    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z2IsOne":Z
    .end local v21    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "V1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "VSq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "VSqZ2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "uv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :sswitch_231
    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1746
    .local v3, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1748
    .local v6, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .local v7, "dx":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1749
    .local v8, "dy":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-eqz v9, :cond_255

    .line 1751
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-eqz v9, :cond_250

    .line 1753
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    return-object v9

    .line 1756
    :cond_250
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    return-object v9

    .line 1759
    :cond_255
    invoke-virtual {v8, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1761
    .local v9, "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1762
    .local v10, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1764
    .local v11, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v12, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v12, v2, v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v12

    nop

    :sswitch_data_284
    .sparse-switch
        0x0 -> :sswitch_231
        0x1 -> :sswitch_182
        0x6 -> :sswitch_2d
    .end sparse-switch
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 1661
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist getCompressionYTilde()Z
    .registers 6

    .line 1701
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1702
    .local v0, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 1704
    return v2

    .line 1707
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1709
    .local v1, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v3

    packed-switch v3, :pswitch_data_2c

    .line 1719
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v2

    return v2

    .line 1715
    :pswitch_20
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-eq v3, v4, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    return v2

    :pswitch_data_2c
    .packed-switch 0x5
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 1666
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1668
    .local v0, "coord":I
    packed-switch v0, :pswitch_data_38

    .line 1694
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v1

    .line 1673
    :pswitch_a
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1675
    .local v2, "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v3

    if-nez v3, :cond_36

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_36

    .line 1681
    :cond_1b
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1682
    .local v3, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v4, 0x6

    if-ne v4, v0, :cond_35

    .line 1684
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1685
    .local v4, "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_35

    .line 1687
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1690
    .end local v4    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_35
    return-object v3

    .line 1677
    .end local v3    # "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_36
    :goto_36
    return-object v2

    nop

    :pswitch_data_38
    .packed-switch 0x5
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 9

    .line 2092
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2094
    return-object p0

    .line 2097
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 2098
    .local v0, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2100
    return-object p0

    .line 2103
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_6a

    .line 2128
    :pswitch_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unsupported coordinate system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2123
    :pswitch_22
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v3

    .line 2124
    .local v4, "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v2, v3

    invoke-direct {v5, v6, v0, v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 2117
    .end local v1    # "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_38
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 2118
    .restart local v1    # "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    .line 2112
    .end local v1    # "L":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_46
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v3

    .line 2113
    .restart local v4    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v2, v3

    invoke-direct {v5, v6, v0, v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 2107
    .end local v1    # "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_5c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 2108
    .restart local v1    # "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_46
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_38
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 23

    .line 1907
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1909
    return-object v0

    .line 1912
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1914
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1915
    .local v2, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1918
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 1921
    :cond_1a
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1923
    .local v3, "coord":I
    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_190

    .line 2010
    move/from16 v19, v3

    .end local v3    # "coord":I
    .local v19, "coord":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1959
    .end local v19    # "coord":I
    .restart local v3    # "coord":I
    :sswitch_2d
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v6, "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v7, v7, v5

    .line 1961
    .local v7, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    .line 1962
    .local v8, "Z1IsOne":Z
    if-eqz v8, :cond_3b

    move-object v9, v6

    goto :goto_3f

    :cond_3b
    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1963
    .local v9, "L1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3f
    if-eqz v8, :cond_43

    move-object v10, v7

    goto :goto_47

    :cond_43
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1964
    .local v10, "Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_47
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1965
    .local v11, "a":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_4f

    move-object v12, v11

    goto :goto_53

    :cond_4f
    invoke-virtual {v11, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1966
    .local v12, "aZ1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_53
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1967
    .local v13, "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v14

    if-eqz v14, :cond_73

    .line 1969
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-direct {v4, v1, v13, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4

    .line 1972
    :cond_73
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1973
    .local v14, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_7b

    move-object v15, v13

    goto :goto_7f

    :cond_7b
    invoke-virtual {v13, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1975
    .local v15, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_7f
    move/from16 v16, v5

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1977
    .local v5, "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/16 v17, 0x1

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v18

    move/from16 v19, v3

    .end local v3    # "coord":I
    .restart local v19    # "coord":I
    shr-int/lit8 v3, v18, 0x1

    if-ge v4, v3, :cond_ed

    .line 1979
    invoke-virtual {v6, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1981
    .local v3, "t1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 1983
    invoke-virtual {v12, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .local v4, "t2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_b4

    .line 1988
    .end local v4    # "t2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_ac
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v12, v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1990
    .restart local v4    # "t2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_b4
    move-object/from16 v18, v5

    .end local v5    # "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1991
    .local v5, "L3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_d5

    .line 1993
    invoke-virtual {v5, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    goto :goto_ec

    .line 1995
    :cond_d5
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v20

    if-nez v20, :cond_ea

    .line 1997
    move-object/from16 v20, v3

    .end local v3    # "t1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "t1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    goto :goto_ec

    .line 1995
    .end local v20    # "t1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v3    # "t1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_ea
    move-object/from16 v20, v3

    .line 1999
    .end local v3    # "t1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "t2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_ec
    goto :goto_103

    .line 2002
    .end local v18    # "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_ed
    move-object/from16 v18, v5

    .end local v5    # "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_f3

    move-object v3, v2

    goto :goto_f7

    :cond_f3
    invoke-virtual {v2, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 2003
    .local v3, "X1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_f7
    invoke-virtual {v3, v13, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 2006
    .end local v3    # "X1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "L3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_103
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    move/from16 v4, v17

    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v15, v4, v16

    invoke-direct {v3, v1, v14, v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 1938
    .end local v5    # "L3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1IsOne":Z
    .end local v9    # "L1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "a":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "aZ1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "coord":I
    .local v3, "coord":I
    :sswitch_10f
    move/from16 v19, v3

    move/from16 v16, v5

    .end local v3    # "coord":I
    .restart local v19    # "coord":I
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v3, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v16

    .line 1940
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    .line 1941
    .local v5, "Z1IsOne":Z
    if-eqz v5, :cond_121

    move-object v6, v2

    goto :goto_125

    :cond_121
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1942
    .local v6, "X1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_125
    if-eqz v5, :cond_129

    move-object v7, v3

    goto :goto_12d

    :cond_129
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1944
    .local v7, "Y1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_12d
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1945
    .local v8, "X1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1946
    .local v9, "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v10, v6

    .line 1947
    .local v10, "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1948
    .local v11, "vSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1949
    .local v12, "sv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v12, v9, v11, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1951
    .local v13, "h":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1952
    .restart local v14    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v10, v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1953
    .local v15, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1955
    .local v18, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v3

    .end local v3    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v18, v4, v16

    invoke-direct {v3, v1, v14, v15, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 1927
    .end local v5    # "Z1IsOne":Z
    .end local v6    # "X1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Y1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "vSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "sv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "h":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "coord":I
    .end local v20    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :sswitch_165
    move/from16 v19, v3

    .end local v3    # "coord":I
    .restart local v19    # "coord":I
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1929
    .local v3, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1931
    .local v4, "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1932
    .local v5, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1934
    .local v6, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v7, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v7, v1, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v7

    nop

    :sswitch_data_190
    .sparse-switch
        0x0 -> :sswitch_165
        0x1 -> :sswitch_10f
        0x6 -> :sswitch_2d
    .end sparse-switch
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 26
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 2017
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2019
    return-object v1

    .line 2021
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2023
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 2026
    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 2028
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 2029
    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2032
    return-object v1

    .line 2035
    :cond_23
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 2037
    .local v4, "coord":I
    packed-switch v4, :pswitch_data_112

    .line 2085
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 2042
    :pswitch_33
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 2043
    .local v6, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_101

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    if-nez v8, :cond_50

    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    goto/16 :goto_109

    .line 2048
    :cond_50
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v8, "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v9, v9, v7

    .line 2049
    .local v9, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v10, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 2051
    .local v10, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 2052
    .local v11, "X1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 2053
    .local v12, "L1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 2054
    .local v13, "Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 2056
    .local v14, "L1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 2057
    .local v15, "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v16, v7

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 2058
    .local v7, "L2plus1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15, v11, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 2059
    .local v0, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v3

    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 2060
    .local v3, "X2Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    move/from16 v19, v4

    .end local v4    # "coord":I
    .local v19, "coord":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 2062
    .local v4, "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_b8

    .line 2064
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_b3

    .line 2066
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 2069
    :cond_b3
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 2072
    :cond_b8
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_d0

    .line 2074
    move-object/from16 v18, v5

    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v20, v6

    .end local v6    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-direct {v5, v2, v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 2077
    .end local v18    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_d0
    move-object/from16 v18, v5

    move-object/from16 v20, v6

    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v20    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 2078
    .local v5, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 2079
    .local v6, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    move-object/from16 v22, v0

    .end local v0    # "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 2081
    .local v0, "L3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v3

    .end local v3    # "X2Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "X2Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v23, v4

    .end local v4    # "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v4, v16

    invoke-direct {v3, v2, v5, v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 2043
    .end local v0    # "L3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "L2plus1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "X1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "L1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "L1Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "coord":I
    .end local v20    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "X2Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "coord":I
    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_101
    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    .line 2045
    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "coord":I
    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "coord":I
    .restart local v20    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :pswitch_data_112
    .packed-switch 0x6
        :pswitch_33
    .end packed-switch
.end method
