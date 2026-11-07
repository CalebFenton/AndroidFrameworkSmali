.class public Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 640
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 641
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 645
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 646
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 33
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 666
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 668
    return-object v1

    .line 670
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 672
    return-object v0

    .line 674
    :cond_12
    if-ne v0, v1, :cond_19

    .line 676
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 679
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 680
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 682
    .local v3, "coord":I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 683
    .local v5, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v6, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 685
    .local v7, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_286

    .line 877
    :pswitch_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :pswitch_36
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v10, v10, v9

    .line 756
    .local v10, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v11, v11, v9

    .line 758
    .local v11, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 760
    .local v12, "Z1IsOne":Z
    const/4 v13, 0x0

    .line 762
    .local v13, "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v12, :cond_b2

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 766
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .local v14, "dx":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 767
    .local v15, "dy":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_69

    .line 769
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_64

    .line 771
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    return-object v8

    .line 773
    :cond_64
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    return-object v8

    .line 776
    :cond_69
    move/from16 v16, v9

    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 777
    .local v9, "C":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/16 v17, 0x1

    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    move/from16 v18, v12

    .end local v12    # "Z1IsOne":Z
    .local v8, "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Z1IsOne":Z
    invoke-virtual {v6, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 778
    .local v12, "W2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v9

    .end local v9    # "C":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "C":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 780
    .local v9, "A1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v13

    .end local v13    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 781
    .local v13, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v12

    .end local v12    # "W2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "W2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 782
    .local v12, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v14

    .line 784
    .local v22, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v8

    move-object/from16 v8, v22

    .end local v22    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v8, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 785
    .end local v9    # "A1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "dx":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "dy":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "C":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "W2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v25, v4

    move-object v4, v13

    move-object/from16 v13, v20

    goto/16 :goto_16e

    .line 762
    .end local v8    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "Z1IsOne":Z
    .end local v20    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v12, "Z1IsOne":Z
    .local v13, "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_b2
    move/from16 v16, v9

    move/from16 v18, v12

    move-object/from16 v20, v13

    const/16 v17, 0x1

    .line 789
    .end local v12    # "Z1IsOne":Z
    .end local v13    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "Z1IsOne":Z
    .restart local v20    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v18, :cond_c0

    .line 791
    move-object v8, v10

    .local v8, "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v9, v6

    .local v9, "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v12, v7

    .local v12, "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_d1

    .line 795
    .end local v8    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c0
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 796
    .restart local v8    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 797
    .restart local v9    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 798
    .local v12, "Z1Cubed":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    move-object v12, v13

    .line 801
    .local v12, "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_d1
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v13

    .line 803
    .local v13, "Z2IsOne":Z
    if-eqz v13, :cond_e2

    .line 805
    move-object v14, v11

    .local v14, "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v15, v4

    .local v15, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v5

    move-object/from16 v30, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v30

    .local v19, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_f6

    .line 809
    .end local v14    # "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_e2
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 810
    .restart local v14    # "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 811
    .restart local v15    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v8

    .end local v8    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 812
    .local v8, "Z2Cubed":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    move-object/from16 v8, v21

    .line 815
    .local v8, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_f6
    move/from16 v21, v13

    .end local v13    # "Z2IsOne":Z
    .local v21, "Z2IsOne":Z
    invoke-virtual {v15, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 816
    .local v13, "H":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v9

    .end local v9    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 819
    .local v9, "R":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v23

    if-eqz v23, :cond_118

    .line 821
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_113

    .line 824
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 828
    :cond_113
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 831
    :cond_118
    move-object/from16 v23, v12

    .end local v12    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 832
    .local v12, "HSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v24, v14

    .end local v14    # "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 833
    .local v14, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v25, v4

    .end local v4    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 835
    .local v4, "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v26, v12

    .end local v12    # "HSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "HSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    move-object/from16 v27, v15

    .end local v15    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v27, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 836
    .local v12, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v9, v14, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 838
    .local v15, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v28, v13

    .line 839
    .local v28, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v18, :cond_155

    .line 841
    move-object/from16 v29, v4

    move-object/from16 v4, v28

    .end local v28    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v29, "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v28

    move-object/from16 v4, v28

    .end local v4    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v28    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_159

    .line 839
    .end local v29    # "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_155
    move-object/from16 v29, v4

    move-object/from16 v4, v28

    .line 843
    .end local v28    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v29    # "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_159
    if-nez v21, :cond_15f

    .line 845
    invoke-virtual {v4, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 853
    :cond_15f
    if-ne v4, v13, :cond_169

    .line 855
    move-object/from16 v20, v26

    move-object v8, v4

    move-object v4, v12

    move-object v12, v15

    move-object/from16 v13, v20

    goto :goto_16e

    .line 853
    :cond_169
    move-object v8, v4

    move-object v4, v12

    move-object v12, v15

    move-object/from16 v13, v20

    .line 860
    .end local v9    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z2IsOne":Z
    .end local v22    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "HSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v8, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v12, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v13, "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_16e
    const/4 v9, 0x4

    if-ne v3, v9, :cond_17d

    .line 863
    invoke-virtual {v0, v8, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 865
    .local v9, "W3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v14, 0x2

    new-array v14, v14, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v14, v16

    aput-object v9, v14, v17

    .line 866
    .end local v9    # "W3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v14, "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_184

    .line 869
    .end local v14    # "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_17d
    move/from16 v9, v17

    new-array v9, v9, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v9, v16

    move-object v14, v9

    .line 872
    .restart local v14    # "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_184
    new-instance v9, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v9, v2, v4, v12, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v9

    .line 712
    .end local v8    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "Z1IsOne":Z
    .end local v25    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_18a
    move-object/from16 v25, v4

    move/from16 v16, v9

    .end local v4    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v25    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v16

    .line 713
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v16

    .line 715
    .local v8, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v9

    .line 716
    .local v9, "Z1IsOne":Z
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    .line 718
    .local v10, "Z2IsOne":Z
    if-eqz v9, :cond_1a2

    move-object v11, v7

    goto :goto_1a6

    :cond_1a2
    invoke-virtual {v7, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 719
    .local v11, "u1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1a6
    if-eqz v10, :cond_1aa

    move-object v12, v5

    goto :goto_1ae

    :cond_1aa
    invoke-virtual {v5, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 720
    .local v12, "u2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1ae
    invoke-virtual {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 721
    .local v13, "u":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v9, :cond_1b6

    move-object v14, v6

    goto :goto_1ba

    :cond_1b6
    invoke-virtual {v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 722
    .local v14, "v1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1ba
    move-object/from16 v15, v25

    if-eqz v10, :cond_1c1

    move-object/from16 v18, v15

    goto :goto_1c5

    .end local v25    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v15, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1c1
    invoke-virtual {v15, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    :goto_1c5
    move-object/from16 v19, v18

    .line 723
    .local v19, "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v18, v3

    move-object/from16 v1, v19

    .end local v3    # "coord":I
    .end local v19    # "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "coord":I
    invoke-virtual {v14, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 726
    .local v3, "v":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_1e5

    .line 728
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_1e0

    .line 731
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 735
    :cond_1e0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 739
    :cond_1e5
    if-eqz v9, :cond_1ea

    move-object/from16 v19, v8

    goto :goto_1f3

    :cond_1ea
    if-eqz v10, :cond_1ef

    move-object/from16 v19, v4

    goto :goto_1f3

    :cond_1ef
    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    :goto_1f3
    move-object/from16 v20, v19

    .line 740
    .local v20, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v4

    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 741
    .local v4, "vSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v8

    .end local v8    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 742
    .local v8, "vCubed":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v22, v9

    .end local v9    # "Z1IsOne":Z
    .local v22, "Z1IsOne":Z
    invoke-virtual {v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 743
    .local v9, "vSquaredV2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v1

    .end local v1    # "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v24, v4

    move-object/from16 v4, v20

    .end local v20    # "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "vSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move/from16 v20, v10

    .end local v10    # "Z2IsOne":Z
    .local v20, "Z2IsOne":Z
    invoke-virtual {v0, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 745
    .local v1, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 746
    .local v10, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13, v12, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 747
    .local v0, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 749
    .local v25, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v26, v1

    .end local v1    # "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "v":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v27, "v":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v25, v3, v16

    invoke-direct {v1, v2, v10, v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 689
    .end local v0    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "vCubed":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "vSquaredV2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "u1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "u2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "u":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "v1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "coord":I
    .end local v19    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z2IsOne":Z
    .end local v21    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1IsOne":Z
    .end local v23    # "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "vSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "v":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_242
    move/from16 v18, v3

    move-object v15, v4

    .end local v3    # "coord":I
    .end local v4    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "coord":I
    invoke-virtual {v6, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "dx":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 691
    .local v1, "dy":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_263

    .line 693
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_25e

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 700
    :cond_25e
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 703
    :cond_263
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 704
    .local v3, "gamma":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 705
    .local v4, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 707
    .local v8, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v9, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v9, v2, v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v9

    nop

    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_242
        :pswitch_18a
        :pswitch_36
        :pswitch_2d
        :pswitch_36
    .end packed-switch
.end method

.method protected blacklist calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8
    .param p1, "Z"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "ZSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1293
    .local v0, "a4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3b

    .line 1298
    :cond_15
    if-nez p2, :cond_1b

    .line 1300
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1303
    :cond_1b
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1304
    .local v1, "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1305
    .local v2, "a4Neg":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 1307
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_3a

    .line 1311
    :cond_36
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1313
    :goto_3a
    return-object v1

    .line 1295
    .end local v1    # "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "a4Neg":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3b
    :goto_3b
    return-object v0
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 650
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist doubleProductFromSquares(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6
    .param p1, "a"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1269
    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist eight(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1259
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1254
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getJacobianModifiedW()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 1318
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 1319
    .local v0, "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v0, :cond_16

    .line 1322
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v0, v3

    aput-object v3, v2, v1

    .line 1324
    :cond_16
    return-object v0
.end method

.method public blacklist getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "index"    # I

    .line 655
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 657
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 660
    :cond_f
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .line 1274
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1276
    return-object p0

    .line 1279
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1280
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1282
    .local v1, "coord":I
    if-eqz v1, :cond_21

    .line 1284
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    .line 1287
    :cond_21
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2
.end method

.method protected blacklist three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1249
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 18

    .line 1094
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1096
    return-object v0

    .line 1099
    :cond_9
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1100
    .local v1, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1102
    return-object v0

    .line 1105
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 1106
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1108
    .local v3, "coord":I
    sparse-switch v3, :sswitch_data_b0

    .line 1141
    move-object/from16 v16, v1

    .end local v1    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1136
    .end local v16    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v1    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_28
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1112
    :sswitch_32
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1114
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1115
    .local v5, "_2Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1116
    .local v6, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1117
    .local v7, "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1119
    .local v8, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1120
    .local v9, "d":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 1122
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    return-object v10

    .line 1125
    :cond_6f
    invoke-virtual {v9, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1126
    .local v10, "D":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1127
    .local v11, "I":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1128
    .local v12, "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1130
    .local v13, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v12, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1131
    .local v14, "X4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1132
    .local v15, "Y4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v1

    .end local v1    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v1, v2, v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    nop

    :sswitch_data_b0
    .sparse-switch
        0x0 -> :sswitch_32
        0x4 -> :sswitch_28
    .end sparse-switch
.end method

.method public blacklist timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 22
    .param p1, "e"    # I

    .line 1148
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_14a

    .line 1152
    if-eqz v1, :cond_149

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_149

    .line 1156
    :cond_10
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 1158
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1161
    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1163
    .local v3, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1164
    .local v4, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1166
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1169
    :cond_29
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v5

    .line 1171
    .local v5, "coord":I
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1172
    .local v6, "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1173
    .local v7, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    array-length v8, v8

    const/4 v9, 0x0

    if-ge v8, v2, :cond_40

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    goto :goto_44

    :cond_40
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v9

    .line 1175
    .local v8, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_44
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    const-string/jumbo v11, "unsupported coordinate system"

    if-nez v10, :cond_73

    .line 1177
    packed-switch v5, :pswitch_data_152

    .line 1194
    :pswitch_50
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1191
    :pswitch_56
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1192
    goto :goto_73

    .line 1188
    :pswitch_5b
    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1189
    goto :goto_73

    .line 1182
    :pswitch_61
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1183
    .local v10, "Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1184
    invoke-virtual {v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1185
    invoke-virtual {v0, v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1186
    goto :goto_73

    .line 1180
    .end local v10    # "Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_72
    nop

    .line 1198
    :cond_73
    :goto_73
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_74
    if-ge v10, v1, :cond_ef

    .line 1200
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v12

    if-eqz v12, :cond_81

    .line 1202
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1205
    :cond_81
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1206
    .local v12, "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1207
    .local v13, "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1208
    .local v14, "_2Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1209
    .local v15, "_2Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v16, v9

    invoke-virtual {v7, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1210
    .local v9, "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v17, v2

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1211
    .local v2, "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1213
    .local v1, "_8T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-nez v18, :cond_bb

    .line 1215
    invoke-virtual {v13, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1216
    move-object/from16 v18, v2

    .end local v2    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object v6, v2

    .end local v6    # "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v2, "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_bd

    .line 1213
    .end local v18    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v2, "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_bb
    move-object/from16 v18, v2

    .line 1219
    .end local v2    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_bd
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move/from16 v19, v5

    .end local v5    # "coord":I
    .local v19, "coord":I
    invoke-virtual {v0, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1220
    invoke-virtual {v9, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1221
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_df

    move-object v2, v14

    goto :goto_e3

    :cond_df
    invoke-virtual {v14, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_e3
    move-object v8, v2

    .line 1198
    .end local v1    # "_8T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "_2Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "_2Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v9, v16

    move/from16 v2, v17

    move/from16 v5, v19

    goto :goto_74

    .end local v19    # "coord":I
    .restart local v5    # "coord":I
    :cond_ef
    move/from16 v17, v2

    move/from16 v19, v5

    move/from16 v16, v9

    .line 1224
    .end local v5    # "coord":I
    .end local v10    # "i":I
    .restart local v19    # "coord":I
    packed-switch v19, :pswitch_data_160

    .line 1238
    :pswitch_f8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    :pswitch_fe
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v2, v16

    aput-object v6, v2, v17

    invoke-direct {v1, v3, v7, v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 1234
    :pswitch_10b
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move/from16 v2, v17

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v2, v16

    invoke-direct {v1, v3, v7, v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 1230
    :pswitch_117
    move/from16 v2, v17

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1231
    .end local v7    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1232
    .end local v8    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v7, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v2, v16

    invoke-direct {v7, v3, v1, v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v7

    .line 1227
    .end local v1    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v7    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_12f
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "zInv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "zInv2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1228
    .local v5, "zInv3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v9, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-direct {v9, v3, v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v9

    .line 1154
    .end local v1    # "zInv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "zInv2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v4    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "zInv3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "coord":I
    :cond_149
    :goto_149
    return-object v0

    .line 1150
    :cond_14a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'e\' cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_72
        :pswitch_61
        :pswitch_5b
        :pswitch_50
        :pswitch_56
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_12f
        :pswitch_117
        :pswitch_10b
        :pswitch_f8
        :pswitch_fe
    .end packed-switch
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 23

    .line 885
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 887
    return-object v0

    .line 890
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 892
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 893
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 895
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 898
    :cond_1a
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 900
    .local v3, "coord":I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 902
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_1da

    .line 1010
    :pswitch_25
    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "unsupported coordinate system"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1005
    .end local v17    # "coord":I
    .restart local v3    # "coord":I
    :pswitch_30
    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v5

    return-object v5

    .line 946
    :pswitch_35
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v7, v7, v6

    .line 948
    .local v7, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    .line 950
    .local v8, "Z1IsOne":Z
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 951
    .local v9, "Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 953
    .local v10, "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 954
    .local v11, "a4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 957
    .local v12, "a4Neg":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    const-wide/16 v14, 0x3

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_82

    .line 959
    if-eqz v8, :cond_61

    move-object v13, v7

    goto :goto_65

    :cond_61
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 960
    .local v13, "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_65
    invoke-virtual {v4, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v4, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 961
    .local v14, "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 962
    .local v13, "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v17, v3

    move/from16 v16, v6

    goto :goto_d2

    .line 965
    .end local v13    # "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_82
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 966
    .local v13, "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 967
    .restart local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_95

    .line 969
    invoke-virtual {v14, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    move/from16 v17, v3

    move/from16 v16, v6

    goto :goto_c9

    .line 971
    :cond_95
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v15

    if-nez v15, :cond_c5

    .line 973
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 974
    .local v15, "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v16, v6

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 975
    .local v6, "Z1Pow4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v5

    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    if-ge v5, v3, :cond_bb

    .line 977
    invoke-virtual {v6, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    .end local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_c9

    .line 981
    .end local v3    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_bb
    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    .end local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v3    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_c9

    .line 971
    .end local v6    # "Z1Pow4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .local v3, "coord":I
    .restart local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c5
    move/from16 v17, v3

    move/from16 v16, v6

    .line 985
    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    :goto_c9
    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v13, v3

    .line 988
    .local v13, "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_d2
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 989
    .local v3, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->eight(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 991
    .local v5, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 992
    .local v6, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v8, :cond_f8

    .line 994
    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1000
    :cond_f8
    new-instance v15, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v18, v6

    const/4 v6, 0x1

    .end local v6    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-array v6, v6, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v18, v6, v16

    invoke-direct {v15, v1, v3, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v15

    .line 916
    .end local v5    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1IsOne":Z
    .end local v9    # "Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "a4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "a4Neg":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v18    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :pswitch_105
    move/from16 v17, v3

    move/from16 v16, v6

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v16

    .line 918
    .local v3, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    .line 921
    .local v5, "Z1IsOne":Z
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 922
    .local v6, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-nez v7, :cond_125

    if-nez v5, :cond_125

    .line 924
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 926
    :cond_125
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 928
    if-eqz v5, :cond_135

    move-object v7, v2

    goto :goto_139

    :cond_135
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 929
    .local v7, "s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_139
    if-eqz v5, :cond_140

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    goto :goto_144

    :cond_140
    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 930
    .local v8, "t":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_144
    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 931
    .local v9, "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 932
    .local v10, "_4B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 934
    .local v11, "h":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 935
    .local v12, "_2s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 936
    .local v13, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 937
    .local v14, "_2t":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    move-object/from16 v18, v3

    .end local v3    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 938
    .local v3, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v5, :cond_181

    invoke-virtual {v0, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    goto :goto_185

    :cond_181
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 939
    .local v15, "_4sSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_185
    move/from16 v19, v5

    .end local v5    # "Z1IsOne":Z
    .local v19, "Z1IsOne":Z
    invoke-virtual {v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 941
    .local v5, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v5

    .end local v5    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v21, v6

    const/4 v6, 0x1

    .end local v6    # "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-array v6, v6, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v20, v6, v16

    invoke-direct {v5, v1, v13, v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 906
    .end local v7    # "s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "t":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "_4B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "h":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "_2s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "_2t":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "_4sSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v18    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1IsOne":Z
    .end local v20    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :pswitch_19e
    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 907
    .local v3, "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 908
    .local v5, "gamma":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 909
    .local v6, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 911
    .local v7, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v8, v1, v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v8

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_19e
        :pswitch_105
        :pswitch_35
        :pswitch_25
        :pswitch_30
    .end packed-switch
.end method

.method protected blacklist twiceJacobianModified(Z)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;
    .registers 21
    .param p1, "calculateW"    # Z

    .line 1329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .local v3, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1331
    .local v5, "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1332
    .local v6, "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1333
    .local v7, "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1334
    .local v8, "_2Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1335
    .local v9, "_2Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1336
    .local v10, "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1337
    .local v11, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1338
    .local v12, "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1339
    .local v13, "_8T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1340
    .local v14, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz p1, :cond_56

    invoke-virtual {v13, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    goto :goto_57

    :cond_56
    const/4 v15, 0x0

    .line 1341
    .local v15, "W3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_57
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v16

    if-eqz v16, :cond_60

    move-object/from16 v16, v8

    goto :goto_64

    :cond_60
    invoke-virtual {v8, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1343
    .local v16, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_64
    move/from16 v17, v4

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    move-object/from16 v18, v1

    .end local v1    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v16, v1, v17

    const/16 v17, 0x1

    aput-object v15, v1, v17

    invoke-direct {v4, v0, v11, v14, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 21
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 1017
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_b

    .line 1019
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1021
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1023
    return-object v1

    .line 1025
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1027
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1030
    :cond_1d
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1031
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1033
    return-object v1

    .line 1036
    :cond_26
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1037
    .local v3, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 1039
    .local v4, "coord":I
    sparse-switch v4, :sswitch_data_d4

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1083
    :sswitch_3a
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 1043
    :sswitch_44
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1044
    .local v5, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v6, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1046
    .local v7, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "dx":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1048
    .local v9, "dy":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_64

    .line 1050
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_63

    .line 1053
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    return-object v10

    .line 1057
    :cond_63
    return-object v0

    .line 1065
    :cond_64
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .local v10, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1066
    .local v11, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1067
    .local v12, "d":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v13

    if-eqz v13, :cond_87

    .line 1069
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13

    .line 1072
    :cond_87
    invoke-virtual {v12, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1073
    .local v13, "D":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1074
    .local v14, "I":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1075
    .local v15, "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v16, v4

    .end local v4    # "coord":I
    .local v16, "coord":I
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1076
    .local v4, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v17, v7

    .end local v7    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1077
    .local v0, "X4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1079
    .local v7, "Y4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v2

    .end local v2    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v2, v3, v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    nop

    :sswitch_data_d4
    .sparse-switch
        0x0 -> :sswitch_44
        0x4 -> :sswitch_3a
    .end sparse-switch
.end method

.method protected blacklist two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1244
    invoke-virtual {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
