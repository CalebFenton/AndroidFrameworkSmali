.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP192K1Point.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 25
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@4
    .line 23
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
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@5
    .line 47
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
    .line 49
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
    .line 47
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    goto :goto_1

    #@19
    .line 52
    :cond_2
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

    #@1b
    .line 43
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
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 60
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

    #@5
    .line 56
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 32
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 73
    return-object p1

    #@7
    .line 75
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 77
    return-object p0

    #@e
    .line 79
    :cond_1
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p1

    #@12
    if-ne v0, v1, :cond_2

    #@14
    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 84
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1c
    move-result-object v3

    #@1d
    .line 86
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    move-object/from16 v17, v0

    #@23
    check-cast v17, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@25
    .local v17, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@29
    move-object/from16 v19, v0

    #@2b
    check-cast v19, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@2d
    .line 87
    .local v19, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@30
    move-result-object v18

    #@31
    check-cast v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@33
    .local v18, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    move-result-object v20

    #@37
    check-cast v20, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@39
    .line 89
    .local v20, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3d
    const/4 v7, 0x0

    #@3e
    aget-object v21, v2, v7

    #@40
    check-cast v21, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@42
    .line 90
    .local v21, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    const/4 v2, 0x0

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@48
    move-result-object v23

    #@49
    check-cast v23, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@4b
    .line 93
    .local v23, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    #@4e
    move-result-object v30

    #@4f
    .line 94
    .local v30, "tt1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@52
    move-result-object v27

    #@53
    .line 95
    .local v27, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@56
    move-result-object v28

    #@57
    .line 96
    .local v28, "t3":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@5a
    move-result-object v29

    #@5b
    .line 98
    .local v29, "t4":[I
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    #@5e
    move-result v22

    #@5f
    .line 100
    .local v22, "Z1IsOne":Z
    if-eqz v22, :cond_3

    #@61
    .line 102
    move-object/from16 v0, v18

    #@63
    iget-object v15, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@65
    .line 103
    .local v15, "U2":[I
    move-object/from16 v0, v20

    #@67
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@69
    .line 117
    .local v13, "S2":[I
    :goto_0
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    #@6c
    move-result v24

    #@6d
    .line 119
    .local v24, "Z2IsOne":Z
    if-eqz v24, :cond_4

    #@6f
    .line 121
    move-object/from16 v0, v17

    #@71
    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@73
    .line 122
    .local v14, "U1":[I
    move-object/from16 v0, v19

    #@75
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@77
    .line 136
    .local v12, "S1":[I
    :goto_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@7a
    move-result-object v9

    #@7b
    .line 137
    .local v9, "H":[I
    invoke-static {v14, v15, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    #@7e
    .line 139
    move-object/from16 v11, v27

    #@80
    .line 140
    .local v11, "R":[I
    invoke-static {v12, v13, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    #@83
    .line 143
    invoke-static {v9}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_6

    #@89
    .line 145
    invoke-static {v11}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    #@8c
    move-result v2

    #@8d
    if-eqz v2, :cond_5

    #@8f
    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@92
    move-result-object v2

    #@93
    return-object v2

    #@94
    .line 107
    .end local v9    # "H":[I
    .end local v11    # "R":[I
    .end local v12    # "S1":[I
    .end local v13    # "S2":[I
    .end local v14    # "U1":[I
    .end local v15    # "U2":[I
    .end local v24    # "Z2IsOne":Z
    :cond_3
    move-object/from16 v13, v28

    #@96
    .line 108
    .restart local v13    # "S2":[I
    move-object/from16 v0, v21

    #@98
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@9a
    invoke-static {v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@9d
    .line 110
    move-object/from16 v15, v27

    #@9f
    .line 111
    .restart local v15    # "U2":[I
    move-object/from16 v0, v18

    #@a1
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@a3
    invoke-static {v13, v2, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@a6
    .line 113
    move-object/from16 v0, v21

    #@a8
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@aa
    invoke-static {v13, v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@ad
    .line 114
    move-object/from16 v0, v20

    #@af
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@b1
    invoke-static {v13, v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@b4
    goto :goto_0

    #@b5
    .line 126
    .restart local v24    # "Z2IsOne":Z
    :cond_4
    move-object/from16 v12, v29

    #@b7
    .line 127
    .restart local v12    # "S1":[I
    move-object/from16 v0, v23

    #@b9
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@bb
    invoke-static {v2, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@be
    .line 129
    move-object/from16 v14, v30

    #@c0
    .line 130
    .restart local v14    # "U1":[I
    move-object/from16 v0, v17

    #@c2
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@c4
    invoke-static {v12, v2, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@c7
    .line 132
    move-object/from16 v0, v23

    #@c9
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@cb
    invoke-static {v12, v2, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@ce
    .line 133
    move-object/from16 v0, v19

    #@d0
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@d2
    invoke-static {v12, v2, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@d5
    goto :goto_1

    #@d6
    .line 152
    .restart local v9    # "H":[I
    .restart local v11    # "R":[I
    :cond_5
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d9
    move-result-object v2

    #@da
    return-object v2

    #@db
    .line 155
    :cond_6
    move-object/from16 v10, v28

    #@dd
    .line 156
    .local v10, "HSquared":[I
    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@e0
    .line 158
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@e3
    move-result-object v8

    #@e4
    .line 159
    .local v8, "G":[I
    invoke-static {v10, v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@e7
    .line 161
    move-object/from16 v16, v28

    #@e9
    .line 162
    .local v16, "V":[I
    move-object/from16 v0, v16

    #@eb
    invoke-static {v10, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@ee
    .line 164
    invoke-static {v8, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->negate([I[I)V

    #@f1
    .line 165
    move-object/from16 v0, v30

    #@f3
    invoke-static {v12, v8, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    #@f6
    .line 167
    move-object/from16 v0, v16

    #@f8
    move-object/from16 v1, v16

    #@fa
    invoke-static {v0, v1, v8}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    #@fd
    move-result v26

    #@fe
    .line 168
    .local v26, "c":I
    move/from16 v0, v26

    #@100
    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    #@103
    .line 170
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@105
    move-object/from16 v0, v29

    #@107
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@10a
    .line 171
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@10c
    invoke-static {v11, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@10f
    .line 172
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@111
    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@113
    invoke-static {v2, v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    #@116
    .line 174
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@118
    invoke-direct {v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@11b
    .line 175
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@11d
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@11f
    move-object/from16 v0, v16

    #@121
    invoke-static {v0, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    #@124
    .line 176
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@126
    move-object/from16 v0, v30

    #@128
    invoke-static {v2, v11, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiplyAddToExt([I[I[I)V

    #@12b
    .line 177
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@12d
    move-object/from16 v0, v30

    #@12f
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    #@132
    .line 179
    new-instance v25, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@134
    move-object/from16 v0, v25

    #@136
    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@139
    .line 180
    .local v25, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    if-nez v22, :cond_7

    #@13b
    .line 182
    move-object/from16 v0, v25

    #@13d
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@13f
    move-object/from16 v0, v21

    #@141
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@143
    move-object/from16 v0, v25

    #@145
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@147
    move-object/from16 v31, v0

    #@149
    move-object/from16 v0, v31

    #@14b
    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@14e
    .line 184
    :cond_7
    if-nez v24, :cond_8

    #@150
    .line 186
    move-object/from16 v0, v25

    #@152
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@154
    move-object/from16 v0, v23

    #@156
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@158
    move-object/from16 v0, v25

    #@15a
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@15c
    move-object/from16 v31, v0

    #@15e
    move-object/from16 v0, v31

    #@160
    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@163
    .line 189
    :cond_8
    const/4 v2, 0x1

    #@164
    new-array v6, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@166
    const/4 v2, 0x0

    #@167
    aput-object v25, v6, v2

    #@169
    .line 191
    .local v6, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    #@16b
    move-object/from16 v0, p0

    #@16d
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

    #@16f
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@172
    return-object v2
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    #@0
    .prologue
    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@e
    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6

    #@0
    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 293
    return-object p0

    #@7
    .line 296
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@b
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v3

    #@13
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

    #@17
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@1a
    return-object v0
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 282
    :cond_0
    return-object p0

    #@f
    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 17

    #@0
    .prologue
    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 199
    return-object p0

    #@7
    .line 202
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v2

    #@b
    .line 204
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@d
    iget-object v11, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    check-cast v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@11
    .line 205
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isZero()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 207
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 210
    :cond_1
    move-object/from16 v0, p0

    #@1e
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@22
    .local v10, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    move-object/from16 v0, p0

    #@24
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    const/4 v5, 0x0

    #@27
    aget-object v13, v1, v5

    #@29
    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@2b
    .line 214
    .local v13, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@2e
    move-result-object v12

    #@2f
    .line 215
    .local v12, "Y1Squared":[I
    iget-object v1, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@31
    invoke-static {v1, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@34
    .line 217
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@37
    move-result-object v9

    #@38
    .line 218
    .local v9, "T":[I
    invoke-static {v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@3b
    .line 220
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3e
    move-result-object v7

    #@3f
    .line 221
    .local v7, "M":[I
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@41
    invoke-static {v1, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@44
    .line 222
    invoke-static {v7, v7, v7}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    #@47
    move-result v15

    #@48
    .line 223
    .local v15, "c":I
    invoke-static {v15, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    #@4b
    .line 225
    move-object v8, v12

    #@4c
    .line 226
    .local v8, "S":[I
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@4e
    invoke-static {v12, v1, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@51
    .line 227
    const/4 v1, 0x6

    #@52
    const/4 v5, 0x2

    #@53
    const/4 v6, 0x0

    #@54
    invoke-static {v1, v8, v5, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    #@57
    move-result v15

    #@58
    .line 228
    invoke-static {v15, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    #@5b
    .line 230
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@5e
    move-result-object v16

    #@5f
    .line 231
    .local v16, "t1":[I
    const/4 v1, 0x6

    #@60
    const/4 v5, 0x3

    #@61
    const/4 v6, 0x0

    #@62
    move-object/from16 v0, v16

    #@64
    invoke-static {v1, v9, v5, v6, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    #@67
    move-result v15

    #@68
    .line 232
    invoke-static/range {v15 .. v16}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    #@6b
    .line 234
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@6d
    invoke-direct {v3, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@70
    .line 235
    .local v3, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@72
    invoke-static {v7, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@75
    .line 236
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@77
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@79
    invoke-static {v1, v8, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    #@7c
    .line 237
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@7e
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@80
    invoke-static {v1, v8, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    #@83
    .line 239
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@85
    invoke-direct {v4, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@88
    .line 240
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@8a
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@8c
    invoke-static {v8, v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    #@8f
    .line 241
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@91
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@93
    invoke-static {v1, v7, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@96
    .line 242
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@98
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@9a
    move-object/from16 v0, v16

    #@9c
    invoke-static {v1, v0, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    #@9f
    .line 244
    new-instance v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@a1
    invoke-direct {v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@a4
    .line 245
    .local v14, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v1, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@a6
    iget-object v5, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@a8
    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->twice([I[I)V

    #@ab
    .line 246
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    #@ae
    move-result v1

    #@af
    if-nez v1, :cond_2

    #@b1
    .line 248
    iget-object v1, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@b3
    iget-object v5, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@b5
    iget-object v6, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@b7
    invoke-static {v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@ba
    .line 251
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    #@bc
    const/4 v5, 0x1

    #@bd
    new-array v5, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@bf
    const/4 v6, 0x0

    #@c0
    aput-object v14, v5, v6

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

    #@c6
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@c9
    return-object v1
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 256
    if-ne p0, p1, :cond_0

    #@2
    .line 258
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 262
    return-object p1

    #@e
    .line 264
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 266
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b
    .line 270
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 272
    return-object p1

    #@22
    .line 275
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method
