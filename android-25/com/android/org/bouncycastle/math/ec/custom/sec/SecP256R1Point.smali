.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP256R1Point.java"


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
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

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
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 59
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@5
    .line 55
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 32
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 71
    return-object p1

    #@7
    .line 73
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 75
    return-object p0

    #@e
    .line 77
    :cond_1
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p1

    #@12
    if-ne v0, v1, :cond_2

    #@14
    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 82
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1c
    move-result-object v3

    #@1d
    .line 84
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    move-object/from16 v17, v0

    #@23
    check-cast v17, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@25
    .local v17, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@29
    move-object/from16 v19, v0

    #@2b
    check-cast v19, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@2d
    .line 85
    .local v19, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@30
    move-result-object v18

    #@31
    check-cast v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@33
    .local v18, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    move-result-object v20

    #@37
    check-cast v20, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@39
    .line 87
    .local v20, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3d
    const/4 v7, 0x0

    #@3e
    aget-object v21, v2, v7

    #@40
    check-cast v21, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@42
    .line 88
    .local v21, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    const/4 v2, 0x0

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@48
    move-result-object v23

    #@49
    check-cast v23, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@4b
    .line 91
    .local v23, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    #@4e
    move-result-object v30

    #@4f
    .line 92
    .local v30, "tt1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@52
    move-result-object v27

    #@53
    .line 93
    .local v27, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@56
    move-result-object v28

    #@57
    .line 94
    .local v28, "t3":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@5a
    move-result-object v29

    #@5b
    .line 96
    .local v29, "t4":[I
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isOne()Z

    #@5e
    move-result v22

    #@5f
    .line 98
    .local v22, "Z1IsOne":Z
    if-eqz v22, :cond_3

    #@61
    .line 100
    move-object/from16 v0, v18

    #@63
    iget-object v15, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@65
    .line 101
    .local v15, "U2":[I
    move-object/from16 v0, v20

    #@67
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@69
    .line 115
    .local v13, "S2":[I
    :goto_0
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isOne()Z

    #@6c
    move-result v24

    #@6d
    .line 117
    .local v24, "Z2IsOne":Z
    if-eqz v24, :cond_4

    #@6f
    .line 119
    move-object/from16 v0, v17

    #@71
    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@73
    .line 120
    .local v14, "U1":[I
    move-object/from16 v0, v19

    #@75
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@77
    .line 134
    .local v12, "S1":[I
    :goto_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@7a
    move-result-object v9

    #@7b
    .line 135
    .local v9, "H":[I
    invoke-static {v14, v15, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    #@7e
    .line 137
    move-object/from16 v11, v27

    #@80
    .line 138
    .local v11, "R":[I
    move-object/from16 v0, v27

    #@82
    invoke-static {v12, v13, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    #@85
    .line 141
    invoke-static {v9}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_6

    #@8b
    .line 143
    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    #@8e
    move-result v2

    #@8f
    if-eqz v2, :cond_5

    #@91
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@94
    move-result-object v2

    #@95
    return-object v2

    #@96
    .line 105
    .end local v9    # "H":[I
    .end local v11    # "R":[I
    .end local v12    # "S1":[I
    .end local v13    # "S2":[I
    .end local v14    # "U1":[I
    .end local v15    # "U2":[I
    .end local v24    # "Z2IsOne":Z
    :cond_3
    move-object/from16 v13, v28

    #@98
    .line 106
    .restart local v13    # "S2":[I
    move-object/from16 v0, v21

    #@9a
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@9c
    move-object/from16 v0, v28

    #@9e
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    #@a1
    .line 108
    move-object/from16 v15, v27

    #@a3
    .line 109
    .restart local v15    # "U2":[I
    move-object/from16 v0, v18

    #@a5
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@a7
    move-object/from16 v0, v28

    #@a9
    move-object/from16 v1, v27

    #@ab
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@ae
    .line 111
    move-object/from16 v0, v21

    #@b0
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@b2
    move-object/from16 v0, v28

    #@b4
    move-object/from16 v1, v28

    #@b6
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@b9
    .line 112
    move-object/from16 v0, v20

    #@bb
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@bd
    move-object/from16 v0, v28

    #@bf
    move-object/from16 v1, v28

    #@c1
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@c4
    goto :goto_0

    #@c5
    .line 124
    .restart local v24    # "Z2IsOne":Z
    :cond_4
    move-object/from16 v12, v29

    #@c7
    .line 125
    .restart local v12    # "S1":[I
    move-object/from16 v0, v23

    #@c9
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@cb
    move-object/from16 v0, v29

    #@cd
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    #@d0
    .line 127
    move-object/from16 v14, v30

    #@d2
    .line 128
    .restart local v14    # "U1":[I
    move-object/from16 v0, v17

    #@d4
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@d6
    move-object/from16 v0, v29

    #@d8
    move-object/from16 v1, v30

    #@da
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@dd
    .line 130
    move-object/from16 v0, v23

    #@df
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@e1
    move-object/from16 v0, v29

    #@e3
    move-object/from16 v1, v29

    #@e5
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@e8
    .line 131
    move-object/from16 v0, v19

    #@ea
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@ec
    move-object/from16 v0, v29

    #@ee
    move-object/from16 v1, v29

    #@f0
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@f3
    goto :goto_1

    #@f4
    .line 150
    .restart local v9    # "H":[I
    .restart local v11    # "R":[I
    :cond_5
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@f7
    move-result-object v2

    #@f8
    return-object v2

    #@f9
    .line 153
    :cond_6
    move-object/from16 v10, v28

    #@fb
    .line 154
    .local v10, "HSquared":[I
    move-object/from16 v0, v28

    #@fd
    invoke-static {v9, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    #@100
    .line 156
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@103
    move-result-object v8

    #@104
    .line 157
    .local v8, "G":[I
    move-object/from16 v0, v28

    #@106
    invoke-static {v0, v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@109
    .line 159
    move-object/from16 v16, v28

    #@10b
    .line 160
    .local v16, "V":[I
    move-object/from16 v0, v28

    #@10d
    move-object/from16 v1, v28

    #@10f
    invoke-static {v0, v14, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@112
    .line 162
    invoke-static {v8, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->negate([I[I)V

    #@115
    .line 163
    move-object/from16 v0, v30

    #@117
    invoke-static {v12, v8, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    #@11a
    .line 165
    move-object/from16 v0, v28

    #@11c
    move-object/from16 v1, v28

    #@11e
    invoke-static {v0, v1, v8}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    #@121
    move-result v26

    #@122
    .line 166
    .local v26, "c":I
    move/from16 v0, v26

    #@124
    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    #@127
    .line 168
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@129
    move-object/from16 v0, v29

    #@12b
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    #@12e
    .line 169
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@130
    move-object/from16 v0, v27

    #@132
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    #@135
    .line 170
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@137
    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@139
    invoke-static {v2, v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    #@13c
    .line 172
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@13e
    invoke-direct {v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    #@141
    .line 173
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@143
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@145
    move-object/from16 v0, v28

    #@147
    invoke-static {v0, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    #@14a
    .line 174
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@14c
    move-object/from16 v0, v27

    #@14e
    move-object/from16 v1, v30

    #@150
    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiplyAddToExt([I[I[I)V

    #@153
    .line 175
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@155
    move-object/from16 v0, v30

    #@157
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    #@15a
    .line 177
    new-instance v25, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@15c
    move-object/from16 v0, v25

    #@15e
    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    #@161
    .line 178
    .local v25, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    if-nez v22, :cond_7

    #@163
    .line 180
    move-object/from16 v0, v25

    #@165
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@167
    move-object/from16 v0, v21

    #@169
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@16b
    move-object/from16 v0, v25

    #@16d
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@16f
    move-object/from16 v31, v0

    #@171
    move-object/from16 v0, v31

    #@173
    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@176
    .line 182
    :cond_7
    if-nez v24, :cond_8

    #@178
    .line 184
    move-object/from16 v0, v25

    #@17a
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@17c
    move-object/from16 v0, v23

    #@17e
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@180
    move-object/from16 v0, v25

    #@182
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@184
    move-object/from16 v31, v0

    #@186
    move-object/from16 v0, v31

    #@188
    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@18b
    .line 187
    :cond_8
    const/4 v2, 0x1

    #@18c
    new-array v6, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@18e
    const/4 v2, 0x0

    #@18f
    aput-object v25, v6, v2

    #@191
    .line 189
    .local v6, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    #@193
    move-object/from16 v0, p0

    #@195
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@197
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@19a
    return-object v2
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    #@0
    .prologue
    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;

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
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@e
    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6

    #@0
    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 303
    return-object p0

    #@7
    .line 306
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@b
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v3

    #@13
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@17
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@1a
    return-object v0
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 292
    :cond_0
    return-object p0

    #@f
    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

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
    .locals 22

    #@0
    .prologue
    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 196
    return-object p0

    #@7
    .line 199
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v4

    #@b
    .line 201
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@d
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@11
    .line 202
    .local v13, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isZero()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 204
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 207
    :cond_1
    move-object/from16 v0, p0

    #@1e
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    check-cast v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@22
    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    const/4 v7, 0x0

    #@27
    aget-object v15, v3, v7

    #@29
    check-cast v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@2b
    .line 210
    .local v15, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@2e
    move-result-object v20

    #@2f
    .line 211
    .local v20, "t1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@32
    move-result-object v21

    #@33
    .line 213
    .local v21, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@36
    move-result-object v14

    #@37
    .line 214
    .local v14, "Y1Squared":[I
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@39
    invoke-static {v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    #@3c
    .line 216
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3f
    move-result-object v11

    #@40
    .line 217
    .local v11, "T":[I
    invoke-static {v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    #@43
    .line 219
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isOne()Z

    #@46
    move-result v16

    #@47
    .line 221
    .local v16, "Z1IsOne":Z
    iget-object v0, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@49
    move-object/from16 v17, v0

    #@4b
    .line 222
    .local v17, "Z1Squared":[I
    if-nez v16, :cond_2

    #@4d
    .line 224
    move-object/from16 v17, v21

    #@4f
    .line 225
    iget-object v3, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@51
    move-object/from16 v0, v21

    #@53
    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    #@56
    .line 228
    :cond_2
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@58
    move-object/from16 v0, v17

    #@5a
    move-object/from16 v1, v20

    #@5c
    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    #@5f
    .line 230
    move-object/from16 v9, v21

    #@61
    .line 231
    .local v9, "M":[I
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@63
    move-object/from16 v0, v17

    #@65
    move-object/from16 v1, v21

    #@67
    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->add([I[I[I)V

    #@6a
    .line 232
    move-object/from16 v0, v21

    #@6c
    move-object/from16 v1, v20

    #@6e
    move-object/from16 v2, v21

    #@70
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@73
    .line 233
    move-object/from16 v0, v21

    #@75
    move-object/from16 v1, v21

    #@77
    move-object/from16 v2, v21

    #@79
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    #@7c
    move-result v19

    #@7d
    .line 234
    .local v19, "c":I
    move/from16 v0, v19

    #@7f
    move-object/from16 v1, v21

    #@81
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    #@84
    .line 236
    move-object v10, v14

    #@85
    .line 237
    .local v10, "S":[I
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@87
    invoke-static {v14, v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@8a
    .line 238
    const/16 v3, 0x8

    #@8c
    const/4 v7, 0x2

    #@8d
    const/4 v8, 0x0

    #@8e
    invoke-static {v3, v14, v7, v8}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    #@91
    move-result v19

    #@92
    .line 239
    move/from16 v0, v19

    #@94
    invoke-static {v0, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    #@97
    .line 241
    const/16 v3, 0x8

    #@99
    const/4 v7, 0x3

    #@9a
    const/4 v8, 0x0

    #@9b
    move-object/from16 v0, v20

    #@9d
    invoke-static {v3, v11, v7, v8, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    #@a0
    move-result v19

    #@a1
    .line 242
    invoke-static/range {v19 .. v20}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    #@a4
    .line 244
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@a6
    invoke-direct {v5, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    #@a9
    .line 245
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@ab
    move-object/from16 v0, v21

    #@ad
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    #@b0
    .line 246
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@b2
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@b4
    invoke-static {v3, v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    #@b7
    .line 247
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@b9
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@bb
    invoke-static {v3, v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    #@be
    .line 249
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@c0
    invoke-direct {v6, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    #@c3
    .line 250
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@c5
    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@c7
    invoke-static {v14, v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    #@ca
    .line 251
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@cc
    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@ce
    move-object/from16 v0, v21

    #@d0
    invoke-static {v3, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@d3
    .line 252
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@d5
    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@d7
    move-object/from16 v0, v20

    #@d9
    invoke-static {v3, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    #@dc
    .line 254
    new-instance v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    #@de
    move-object/from16 v0, v18

    #@e0
    move-object/from16 v1, v21

    #@e2
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    #@e5
    .line 255
    .local v18, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@e7
    move-object/from16 v0, v18

    #@e9
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@eb
    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->twice([I[I)V

    #@ee
    .line 256
    if-nez v16, :cond_3

    #@f0
    .line 258
    move-object/from16 v0, v18

    #@f2
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@f4
    iget-object v7, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@f6
    move-object/from16 v0, v18

    #@f8
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    #@fa
    invoke-static {v3, v7, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    #@fd
    .line 261
    :cond_3
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    #@ff
    const/4 v7, 0x1

    #@100
    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@102
    const/4 v8, 0x0

    #@103
    aput-object v18, v7, v8

    #@105
    move-object/from16 v0, p0

    #@107
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@109
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@10c
    return-object v3
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 266
    if-ne p0, p1, :cond_0

    #@2
    .line 268
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 272
    return-object p1

    #@e
    .line 274
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 276
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b
    .line 280
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 282
    return-object p1

    #@22
    .line 285
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method
