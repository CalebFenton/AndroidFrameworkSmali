.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP256K1Point.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 18
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 34
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 35
    return-object v1

    .line 37
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 39
    return-object v0

    .line 41
    :cond_12
    if-ne v0, v1, :cond_19

    .line 43
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 46
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 48
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 49
    .local v4, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 51
    .local v6, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 52
    .local v7, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 55
    .local v9, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v10

    .line 56
    .local v10, "tt0":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v11

    .line 57
    .local v11, "tt1":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 58
    .local v12, "t2":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v13

    .line 59
    .local v13, "t3":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v14

    .line 61
    .local v14, "t4":[I
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v15

    .line 63
    .local v15, "Z1IsOne":Z
    if-eqz v15, :cond_5f

    .line 65
    move/from16 v16, v8

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 66
    .local v8, "U2":[I
    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .local v0, "S2":[I
    goto :goto_77

    .line 70
    .end local v0    # "S2":[I
    .end local v8    # "U2":[I
    :cond_5f
    move/from16 v16, v8

    move-object v0, v13

    .line 71
    .restart local v0    # "S2":[I
    iget-object v8, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v8, v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 73
    move-object v8, v12

    .line 74
    .restart local v8    # "U2":[I
    iget-object v1, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 76
    iget-object v1, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 77
    iget-object v1, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 80
    :goto_77
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v1

    .line 82
    .local v1, "Z2IsOne":Z
    if-eqz v1, :cond_8f

    .line 84
    move/from16 v17, v1

    .end local v1    # "Z2IsOne":Z
    .local v17, "Z2IsOne":Z
    iget-object v1, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 85
    .local v1, "U1":[I
    move-object/from16 v18, v1

    .end local v1    # "U1":[I
    .local v18, "U1":[I
    iget-object v1, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v19, v5

    move-object v5, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v6

    .local v1, "S1":[I
    goto :goto_b0

    .line 89
    .end local v17    # "Z2IsOne":Z
    .end local v18    # "U1":[I
    .local v1, "Z2IsOne":Z
    :cond_8f
    move/from16 v17, v1

    .end local v1    # "Z2IsOne":Z
    .restart local v17    # "Z2IsOne":Z
    move-object v1, v14

    .line 90
    .local v1, "S1":[I
    move-object/from16 v18, v5

    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .local v18, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 92
    move-object v5, v11

    .line 93
    .local v5, "U1":[I
    move-object/from16 v19, v6

    .end local v6    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .local v19, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v6, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v6, v5, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 95
    iget-object v6, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v6, v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 96
    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v6, v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    move-object/from16 v31, v5

    move-object v5, v1

    move-object/from16 v1, v31

    .line 99
    .local v1, "U1":[I
    .local v5, "S1":[I
    :goto_b0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 100
    .local v6, "H":[I
    invoke-static {v1, v8, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 102
    move-object/from16 v20, v12

    .line 103
    .local v20, "R":[I
    move-object/from16 v21, v3

    move-object/from16 v3, v20

    .end local v20    # "R":[I
    .local v3, "R":[I
    .local v21, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {v5, v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 106
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v20

    if-eqz v20, :cond_d6

    .line 108
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v16

    if-eqz v16, :cond_d1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 115
    :cond_d1
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 118
    :cond_d6
    move-object/from16 v20, v13

    .line 119
    .local v20, "HSquared":[I
    move-object/from16 v22, v0

    move-object/from16 v0, v20

    .end local v20    # "HSquared":[I
    .local v0, "HSquared":[I
    .local v22, "S2":[I
    invoke-static {v6, v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 121
    move-object/from16 v20, v4

    .end local v4    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .local v20, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 122
    .local v4, "G":[I
    invoke-static {v0, v6, v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 124
    move-object/from16 v23, v13

    .line 125
    .local v23, "V":[I
    move-object/from16 v24, v8

    move-object/from16 v8, v23

    .end local v23    # "V":[I
    .local v8, "V":[I
    .local v24, "U2":[I
    invoke-static {v0, v1, v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 127
    invoke-static {v4, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    .line 128
    invoke-static {v5, v4, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 130
    move-object/from16 v23, v0

    .end local v0    # "HSquared":[I
    .local v23, "HSquared":[I
    invoke-static {v8, v8, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v0

    .line 131
    .local v0, "c":I
    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 133
    move/from16 v25, v0

    .end local v0    # "c":I
    .local v25, "c":I
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v0, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 134
    .local v0, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    move-object/from16 v26, v1

    .end local v1    # "U1":[I
    .local v26, "U1":[I
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v3, v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 135
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v27, v5

    .end local v5    # "S1":[I
    .local v27, "S1":[I
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 137
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 138
    .local v1, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v28, v4

    .end local v4    # "G":[I
    .local v28, "G":[I
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v8, v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 139
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v4, v3, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiplyAddToExt([I[I[I)V

    .line 140
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v11, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 142
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 143
    .local v4, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    if-nez v15, :cond_144

    .line 145
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v29, v3

    .end local v3    # "R":[I
    .local v29, "R":[I
    iget-object v3, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v30, v6

    .end local v6    # "H":[I
    .local v30, "H":[I
    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v3, v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    goto :goto_148

    .line 143
    .end local v29    # "R":[I
    .end local v30    # "H":[I
    .restart local v3    # "R":[I
    .restart local v6    # "H":[I
    :cond_144
    move-object/from16 v29, v3

    move-object/from16 v30, v6

    .line 147
    .end local v3    # "R":[I
    .end local v6    # "H":[I
    .restart local v29    # "R":[I
    .restart local v30    # "H":[I
    :goto_148
    if-nez v17, :cond_153

    .line 149
    iget-object v3, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v3, v5, v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 152
    :cond_153
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v3, v16

    .line 154
    .local v3, "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    invoke-direct {v5, v2, v0, v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    return-object p0

    .line 260
    :cond_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 250
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 246
    :cond_18
    :goto_18
    return-object p0
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 19

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 162
    return-object v0

    .line 165
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 167
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 168
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 170
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 173
    :cond_1c
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 176
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v6

    .line 178
    .local v6, "tt0":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    .line 179
    .local v7, "Y1Squared":[I
    iget-object v8, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v8, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 181
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 182
    .local v8, "T":[I
    invoke-static {v7, v8, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 184
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 185
    .local v9, "M":[I
    iget-object v10, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v10, v9, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 186
    invoke-static {v9, v9, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v10

    .line 187
    .local v10, "c":I
    invoke-static {v10, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 189
    move-object v11, v7

    .line 190
    .local v11, "S":[I
    iget-object v12, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v7, v12, v11, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 191
    const/4 v12, 0x2

    const/16 v13, 0x8

    invoke-static {v13, v11, v12, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v10

    .line 192
    invoke-static {v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 194
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 195
    .local v12, "t1":[I
    const/4 v14, 0x3

    invoke-static {v13, v8, v14, v5, v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v10

    .line 196
    invoke-static {v10, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 198
    new-instance v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v13, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 199
    .local v13, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v14, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v9, v14, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 200
    iget-object v14, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v14, v11, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 201
    iget-object v14, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v14, v11, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 203
    new-instance v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v14, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 204
    .local v14, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v15, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move/from16 v16, v5

    iget-object v5, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v11, v15, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 205
    iget-object v5, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v9, v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 206
    iget-object v5, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 208
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v5, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 209
    .local v5, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v15, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v15, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->twice([I[I)V

    .line 210
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 212
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v17, v2

    .end local v2    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .local v17, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v2, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v15, v2, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    goto :goto_bb

    .line 210
    .end local v17    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .restart local v2    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    :cond_b9
    move-object/from16 v17, v2

    .line 215
    .end local v2    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .restart local v17    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    :goto_bb
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v2, v16

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 220
    if-ne p0, p1, :cond_7

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 224
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 226
    return-object p1

    .line 228
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 233
    :cond_19
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 234
    .local v0, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 236
    return-object p1

    .line 239
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
