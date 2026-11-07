.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP384R1Point.java"


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

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 34
    return-object v1

    .line 36
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 38
    return-object v0

    .line 40
    :cond_12
    if-ne v0, v1, :cond_19

    .line 42
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 45
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 47
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 48
    .local v4, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 50
    .local v6, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 51
    .local v7, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 54
    .local v9, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v10, 0x18

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 55
    .local v11, "tt0":[I
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    .line 56
    .local v12, "tt1":[I
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 57
    .local v10, "tt2":[I
    const/16 v13, 0xc

    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v14

    .line 58
    .local v14, "t3":[I
    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v15

    .line 60
    .local v15, "t4":[I
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v16

    .line 62
    .local v16, "Z1IsOne":Z
    if-eqz v16, :cond_65

    .line 64
    move/from16 v17, v8

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 65
    .local v8, "U2":[I
    move/from16 v18, v13

    iget-object v13, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .local v13, "S2":[I
    goto :goto_7f

    .line 69
    .end local v8    # "U2":[I
    .end local v13    # "S2":[I
    :cond_65
    move/from16 v17, v8

    move/from16 v18, v13

    move-object v13, v14

    .line 70
    .restart local v13    # "S2":[I
    iget-object v8, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v8, v13, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I[I)V

    .line 72
    move-object v8, v10

    .line 73
    .restart local v8    # "U2":[I
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v0, v8, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 75
    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v0, v13, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 76
    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v0, v13, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 79
    :goto_7f
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v0

    .line 81
    .local v0, "Z2IsOne":Z
    if-eqz v0, :cond_93

    .line 83
    move/from16 v19, v0

    .end local v0    # "Z2IsOne":Z
    .local v19, "Z2IsOne":Z
    iget-object v0, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 84
    .local v0, "U1":[I
    move-object/from16 v20, v0

    .end local v0    # "U1":[I
    .local v20, "U1":[I
    iget-object v0, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object v1, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v5

    .local v0, "S1":[I
    goto :goto_b2

    .line 88
    .end local v19    # "Z2IsOne":Z
    .end local v20    # "U1":[I
    .local v0, "Z2IsOne":Z
    :cond_93
    move/from16 v19, v0

    .end local v0    # "Z2IsOne":Z
    .restart local v19    # "Z2IsOne":Z
    move-object v0, v15

    .line 89
    .local v0, "S1":[I
    iget-object v1, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v0, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I[I)V

    .line 91
    move-object v1, v12

    .line 92
    .local v1, "U1":[I
    move-object/from16 v20, v5

    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v20, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v5, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v0, v5, v1, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 94
    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v0, v5, v0, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 95
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v0, v5, v0, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    move-object/from16 v31, v1

    move-object v1, v0

    move-object/from16 v0, v31

    .line 98
    .local v0, "U1":[I
    .local v1, "S1":[I
    :goto_b2
    invoke-static/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v5

    .line 99
    .local v5, "H":[I
    invoke-static {v0, v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 101
    move-object/from16 v21, v3

    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v21, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    .line 102
    .local v3, "R":[I
    invoke-static {v1, v13, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 105
    move-object/from16 v22, v4

    move/from16 v4, v18

    .end local v4    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v22, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v18

    if-eqz v18, :cond_dc

    .line 107
    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 114
    :cond_d7
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 117
    :cond_dc
    move-object v4, v14

    .line 118
    .local v4, "HSquared":[I
    invoke-static {v5, v4, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I[I)V

    .line 120
    move-object/from16 v23, v6

    const/16 v18, 0xc

    .end local v6    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v23, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    .line 121
    .local v6, "G":[I
    invoke-static {v4, v5, v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 123
    move-object/from16 v24, v14

    .line 124
    .local v24, "V":[I
    move-object/from16 v25, v8

    move-object/from16 v8, v24

    .end local v24    # "V":[I
    .local v8, "V":[I
    .local v25, "U2":[I
    invoke-static {v4, v0, v8, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 126
    invoke-static {v6, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->negate([I[I)V

    .line 127
    invoke-static {v1, v6, v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 129
    move-object/from16 v24, v0

    const/16 v0, 0xc

    .end local v0    # "U1":[I
    .local v24, "U1":[I
    invoke-static {v0, v8, v8, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v0

    .line 130
    .local v0, "c":I
    invoke-static {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 132
    move/from16 v18, v0

    .end local v0    # "c":I
    .local v18, "c":I
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 133
    .local v0, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v26, v1

    .end local v1    # "S1":[I
    .local v26, "S1":[I
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v1, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I[I)V

    .line 134
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v27, v4

    .end local v4    # "HSquared":[I
    .local v27, "HSquared":[I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 136
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 137
    .local v1, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v28, v6

    .end local v6    # "G":[I
    .local v28, "G":[I
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v8, v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 138
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v4, v3, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 139
    invoke-static {v12, v10, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addExt([I[I[I)V

    .line 140
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 142
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 143
    .local v4, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    if-nez v16, :cond_14c

    .line 145
    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v29, v3

    .end local v3    # "R":[I
    .local v29, "R":[I
    iget-object v3, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v30, v5

    .end local v5    # "H":[I
    .local v30, "H":[I
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v3, v5, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    goto :goto_150

    .line 143
    .end local v29    # "R":[I
    .end local v30    # "H":[I
    .restart local v3    # "R":[I
    .restart local v5    # "H":[I
    :cond_14c
    move-object/from16 v29, v3

    move-object/from16 v30, v5

    .line 147
    .end local v3    # "R":[I
    .end local v5    # "H":[I
    .restart local v29    # "R":[I
    .restart local v30    # "H":[I
    :goto_150
    if-nez v19, :cond_15b

    .line 149
    iget-object v3, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v5, v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 152
    :cond_15b
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v3, v17

    .line 154
    .local v3, "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-direct {v5, v2, v0, v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    return-object p0

    .line 272
    :cond_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 262
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 258
    :cond_18
    :goto_18
    return-object p0
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 22

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    return-object v0

    .line 164
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 166
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 167
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 169
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 172
    :cond_1c
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 175
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v6, 0x18

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    .line 176
    .local v6, "tt0":[I
    const/16 v7, 0xc

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 177
    .local v8, "t1":[I
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 179
    .local v9, "t2":[I
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 180
    .local v10, "Y1Squared":[I
    iget-object v11, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v11, v10, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I[I)V

    .line 182
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 183
    .local v11, "T":[I
    invoke-static {v10, v11, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I[I)V

    .line 185
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v12

    .line 187
    .local v12, "Z1IsOne":Z
    iget-object v13, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 188
    .local v13, "Z1Squared":[I
    if-nez v12, :cond_55

    .line 190
    move-object v13, v9

    .line 191
    iget-object v14, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v14, v13, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I[I)V

    .line 194
    :cond_55
    iget-object v14, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v14, v13, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 196
    move-object v14, v9

    .line 197
    .local v14, "M":[I
    iget-object v15, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v15, v13, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->add([I[I[I)V

    .line 198
    invoke-static {v14, v8, v14, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 199
    invoke-static {v7, v14, v14, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v15

    .line 200
    .local v15, "c":I
    invoke-static {v15, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 202
    move-object/from16 v16, v10

    .line 203
    .local v16, "S":[I
    iget-object v5, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v7, v16

    .end local v16    # "S":[I
    .local v7, "S":[I
    invoke-static {v10, v5, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 204
    const/4 v5, 0x2

    move-object/from16 v16, v3

    const/4 v0, 0x0

    const/16 v3, 0xc

    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v16, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static {v3, v7, v5, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v5

    .line 205
    .end local v15    # "c":I
    .local v5, "c":I
    invoke-static {v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 207
    const/4 v15, 0x3

    invoke-static {v3, v11, v15, v0, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v3

    .line 208
    .end local v5    # "c":I
    .local v3, "c":I
    invoke-static {v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 210
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 211
    .local v0, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v14, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I[I)V

    .line 212
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v5, v7, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 213
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v5, v7, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 215
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 216
    .local v5, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move/from16 v18, v3

    .end local v3    # "c":I
    .local v18, "c":I
    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v15, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 217
    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v15, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v14, v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    .line 218
    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v15, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 220
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v3, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 221
    .local v3, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v15, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v19, v2

    .end local v2    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v19, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v2, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v15, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->twice([I[I)V

    .line 222
    if-nez v12, :cond_d8

    .line 224
    iget-object v2, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v15, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v20, v4

    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v20, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v4, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v2, v15, v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I[I)V

    goto :goto_da

    .line 222
    .end local v20    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .restart local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    :cond_d8
    move-object/from16 v20, v4

    .line 227
    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .restart local v20    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    :goto_da
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v17, 0x0

    aput-object v3, v4, v17

    invoke-direct {v2, v1, v0, v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 232
    if-ne p0, p1, :cond_7

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 236
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 238
    return-object p1

    .line 240
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 245
    :cond_19
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 246
    .local v0, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 248
    return-object p1

    .line 251
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
