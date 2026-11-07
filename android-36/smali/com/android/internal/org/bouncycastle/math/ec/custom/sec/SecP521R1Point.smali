.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP521R1Point.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 17
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 33
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 33
    return-object v1

    .line 35
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 37
    return-object v0

    .line 39
    :cond_12
    if-ne v0, v1, :cond_19

    .line 41
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 44
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 46
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 47
    .local v4, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 49
    .local v6, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 50
    .local v7, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 52
    .local v9, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v10, 0x21

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 53
    .local v10, "tt0":[I
    const/16 v11, 0x11

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    .line 54
    .local v12, "t1":[I
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v13

    .line 55
    .local v13, "t2":[I
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v14

    .line 56
    .local v14, "t3":[I
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v15

    .line 58
    .local v15, "t4":[I
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v16

    .line 60
    .local v16, "Z1IsOne":Z
    if-eqz v16, :cond_65

    .line 62
    move/from16 v17, v8

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 63
    .local v8, "U2":[I
    move/from16 v18, v11

    iget-object v11, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .local v11, "S2":[I
    goto :goto_7f

    .line 67
    .end local v8    # "U2":[I
    .end local v11    # "S2":[I
    :cond_65
    move/from16 v17, v8

    move/from16 v18, v11

    move-object v11, v14

    .line 68
    .restart local v11    # "S2":[I
    iget-object v8, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v11, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 70
    move-object v8, v13

    .line 71
    .restart local v8    # "U2":[I
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v11, v0, v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 73
    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v11, v0, v11, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 74
    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v11, v0, v11, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 77
    :goto_7f
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v0

    .line 79
    .local v0, "Z2IsOne":Z
    if-eqz v0, :cond_93

    .line 81
    move/from16 v19, v0

    .end local v0    # "Z2IsOne":Z
    .local v19, "Z2IsOne":Z
    iget-object v0, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 82
    .local v0, "U1":[I
    move-object/from16 v20, v0

    .end local v0    # "U1":[I
    .local v20, "U1":[I
    iget-object v0, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object v1, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v5

    .local v0, "S1":[I
    goto :goto_b2

    .line 86
    .end local v19    # "Z2IsOne":Z
    .end local v20    # "U1":[I
    .local v0, "Z2IsOne":Z
    :cond_93
    move/from16 v19, v0

    .end local v0    # "Z2IsOne":Z
    .restart local v19    # "Z2IsOne":Z
    move-object v0, v15

    .line 87
    .local v0, "S1":[I
    iget-object v1, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 89
    move-object v1, v12

    .line 90
    .local v1, "U1":[I
    move-object/from16 v20, v5

    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v20, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v5, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v5, v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 92
    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v5, v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 93
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v5, v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    move-object/from16 v30, v1

    move-object v1, v0

    move-object/from16 v0, v30

    .line 96
    .local v0, "U1":[I
    .local v1, "S1":[I
    :goto_b2
    invoke-static/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v5

    .line 97
    .local v5, "H":[I
    invoke-static {v0, v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 99
    move-object/from16 v21, v13

    .line 100
    .local v21, "R":[I
    move-object/from16 v22, v3

    move-object/from16 v3, v21

    .end local v21    # "R":[I
    .local v3, "R":[I
    .local v22, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static {v1, v11, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 103
    move-object/from16 v21, v4

    move/from16 v4, v18

    .end local v4    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v21, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v18

    if-eqz v18, :cond_dc

    .line 105
    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 112
    :cond_d7
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 115
    :cond_dc
    move-object v4, v14

    .line 116
    .local v4, "HSquared":[I
    invoke-static {v5, v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 118
    move-object/from16 v23, v6

    const/16 v18, 0x11

    .end local v6    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v23, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    .line 119
    .local v6, "G":[I
    invoke-static {v4, v5, v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 121
    move-object/from16 v18, v14

    .line 122
    .local v18, "V":[I
    move-object/from16 v24, v8

    move-object/from16 v8, v18

    .end local v18    # "V":[I
    .local v8, "V":[I
    .local v24, "U2":[I
    invoke-static {v4, v0, v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 124
    invoke-static {v1, v6, v12, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 126
    move-object/from16 v18, v0

    .end local v0    # "U1":[I
    .local v18, "U1":[I
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 127
    .local v0, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v25, v1

    .end local v1    # "S1":[I
    .local v25, "S1":[I
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 128
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v26, v4

    .end local v4    # "HSquared":[I
    .local v26, "HSquared":[I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 129
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v8, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 130
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v8, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 132
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 133
    .local v1, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v27, v6

    .end local v6    # "G":[I
    .local v27, "G":[I
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 134
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v4, v3, v13, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 135
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v12, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 137
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 138
    .local v4, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    if-nez v16, :cond_149

    .line 140
    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v28, v3

    .end local v3    # "R":[I
    .local v28, "R":[I
    iget-object v3, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v29, v5

    .end local v5    # "H":[I
    .local v29, "H":[I
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v6, v3, v5, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    goto :goto_14d

    .line 138
    .end local v28    # "R":[I
    .end local v29    # "H":[I
    .restart local v3    # "R":[I
    .restart local v5    # "H":[I
    :cond_149
    move-object/from16 v28, v3

    move-object/from16 v29, v5

    .line 142
    .end local v3    # "R":[I
    .end local v5    # "H":[I
    .restart local v28    # "R":[I
    .restart local v29    # "H":[I
    :goto_14d
    if-nez v19, :cond_158

    .line 144
    iget-object v3, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v5, v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 147
    :cond_158
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v3, v17

    .line 149
    .local v3, "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-direct {v5, v2, v0, v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist doubleProductFromSquares(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6
    .param p1, "a"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 286
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

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 293
    return-object p0

    .line 296
    :cond_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 256
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 252
    :cond_18
    :goto_18
    return-object p0
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 21

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 156
    return-object v0

    .line 159
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 161
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 162
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 164
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 167
    :cond_1c
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 169
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v6, 0x21

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    .line 170
    .local v6, "tt0":[I
    const/16 v7, 0x11

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 171
    .local v8, "t1":[I
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 173
    .local v9, "t2":[I
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 174
    .local v10, "Y1Squared":[I
    iget-object v11, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v11, v10, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 176
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 177
    .local v11, "T":[I
    invoke-static {v10, v11, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 179
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v12

    .line 181
    .local v12, "Z1IsOne":Z
    iget-object v13, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 182
    .local v13, "Z1Squared":[I
    if-nez v12, :cond_55

    .line 184
    move-object v13, v9

    .line 185
    iget-object v14, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v13, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 188
    :cond_55
    iget-object v14, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v13, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 190
    move-object v14, v9

    .line 191
    .local v14, "M":[I
    iget-object v15, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v15, v13, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 192
    invoke-static {v14, v8, v14, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 193
    invoke-static {v7, v14, v14, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    .line 194
    invoke-static {v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 196
    move-object v15, v10

    .line 197
    .local v15, "S":[I
    iget-object v5, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v10, v5, v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 198
    const/4 v5, 0x2

    const/4 v0, 0x0

    invoke-static {v7, v15, v5, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    .line 199
    invoke-static {v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 201
    const/4 v5, 0x3

    invoke-static {v7, v11, v5, v0, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    .line 202
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 204
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 205
    .local v0, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 206
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v15, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 207
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v15, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 209
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v5, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 210
    .local v5, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v17, v3

    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v17, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v15, v7, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 211
    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v14, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 212
    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v8, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 214
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v3, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 215
    .local v3, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v7, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v18, v2

    .end local v2    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v18, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->twice([I[I)V

    .line 216
    if-nez v12, :cond_ce

    .line 218
    iget-object v2, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v19, v4

    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v19, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v7, v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    goto :goto_d0

    .line 216
    .end local v19    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .restart local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    :cond_ce
    move-object/from16 v19, v4

    .line 221
    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .restart local v19    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    :goto_d0
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v3, v4, v16

    invoke-direct {v2, v1, v0, v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 226
    if-ne p0, p1, :cond_7

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 230
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 232
    return-object p1

    .line 234
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 239
    :cond_19
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 240
    .local v0, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 242
    return-object p1

    .line 245
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 261
    invoke-virtual {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
