.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP384R1Point.java"


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
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

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
    .locals 33
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 71
    return-object p1

    #@7
    .line 73
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

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
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v3

    #@18
    return-object v3

    #@19
    .line 82
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1c
    move-result-object v4

    #@1d
    .line 84
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    move-object/from16 v18, v0

    #@23
    check-cast v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@25
    .local v18, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@29
    move-object/from16 v20, v0

    #@2b
    check-cast v20, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@2d
    .line 85
    .local v20, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@30
    move-result-object v19

    #@31
    check-cast v19, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@33
    .local v19, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    move-result-object v21

    #@37
    check-cast v21, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@39
    .line 87
    .local v21, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v0, p0

    #@3b
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3d
    const/4 v8, 0x0

    #@3e
    aget-object v22, v3, v8

    #@40
    check-cast v22, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@42
    .line 88
    .local v22, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/4 v3, 0x0

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@48
    move-result-object v24

    #@49
    check-cast v24, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@4b
    .line 91
    .local v24, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v3, 0x18

    #@4d
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@50
    move-result-object v30

    #@51
    .line 92
    .local v30, "tt1":[I
    const/16 v3, 0x18

    #@53
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@56
    move-result-object v31

    #@57
    .line 93
    .local v31, "tt2":[I
    const/16 v3, 0xc

    #@59
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5c
    move-result-object v28

    #@5d
    .line 94
    .local v28, "t3":[I
    const/16 v3, 0xc

    #@5f
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@62
    move-result-object v29

    #@63
    .line 96
    .local v29, "t4":[I
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    #@66
    move-result v23

    #@67
    .line 98
    .local v23, "Z1IsOne":Z
    if-eqz v23, :cond_3

    #@69
    .line 100
    move-object/from16 v0, v19

    #@6b
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@6d
    move-object/from16 v16, v0

    #@6f
    .line 101
    .local v16, "U2":[I
    move-object/from16 v0, v21

    #@71
    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@73
    .line 115
    .local v14, "S2":[I
    :goto_0
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    #@76
    move-result v25

    #@77
    .line 117
    .local v25, "Z2IsOne":Z
    if-eqz v25, :cond_4

    #@79
    .line 119
    move-object/from16 v0, v18

    #@7b
    iget-object v15, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@7d
    .line 120
    .local v15, "U1":[I
    move-object/from16 v0, v20

    #@7f
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@81
    .line 134
    .local v13, "S1":[I
    :goto_1
    const/16 v3, 0xc

    #@83
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@86
    move-result-object v10

    #@87
    .line 135
    .local v10, "H":[I
    move-object/from16 v0, v16

    #@89
    invoke-static {v15, v0, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@8c
    .line 137
    const/16 v3, 0xc

    #@8e
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@91
    move-result-object v12

    #@92
    .line 138
    .local v12, "R":[I
    invoke-static {v13, v14, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@95
    .line 141
    const/16 v3, 0xc

    #@97
    invoke-static {v3, v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@9a
    move-result v3

    #@9b
    if-eqz v3, :cond_6

    #@9d
    .line 143
    const/16 v3, 0xc

    #@9f
    invoke-static {v3, v12}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@a2
    move-result v3

    #@a3
    if-eqz v3, :cond_5

    #@a5
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a8
    move-result-object v3

    #@a9
    return-object v3

    #@aa
    .line 105
    .end local v10    # "H":[I
    .end local v12    # "R":[I
    .end local v13    # "S1":[I
    .end local v14    # "S2":[I
    .end local v15    # "U1":[I
    .end local v16    # "U2":[I
    .end local v25    # "Z2IsOne":Z
    :cond_3
    move-object/from16 v14, v28

    #@ac
    .line 106
    .restart local v14    # "S2":[I
    move-object/from16 v0, v22

    #@ae
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@b0
    move-object/from16 v0, v28

    #@b2
    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@b5
    .line 108
    move-object/from16 v16, v31

    #@b7
    .line 109
    .restart local v16    # "U2":[I
    move-object/from16 v0, v19

    #@b9
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@bb
    move-object/from16 v0, v28

    #@bd
    move-object/from16 v1, v31

    #@bf
    invoke-static {v0, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@c2
    .line 111
    move-object/from16 v0, v22

    #@c4
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c6
    move-object/from16 v0, v28

    #@c8
    move-object/from16 v1, v28

    #@ca
    invoke-static {v0, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@cd
    .line 112
    move-object/from16 v0, v21

    #@cf
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@d1
    move-object/from16 v0, v28

    #@d3
    move-object/from16 v1, v28

    #@d5
    invoke-static {v0, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@d8
    goto :goto_0

    #@d9
    .line 124
    .restart local v25    # "Z2IsOne":Z
    :cond_4
    move-object/from16 v13, v29

    #@db
    .line 125
    .restart local v13    # "S1":[I
    move-object/from16 v0, v24

    #@dd
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@df
    move-object/from16 v0, v29

    #@e1
    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@e4
    .line 127
    move-object/from16 v15, v30

    #@e6
    .line 128
    .restart local v15    # "U1":[I
    move-object/from16 v0, v18

    #@e8
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@ea
    move-object/from16 v0, v29

    #@ec
    move-object/from16 v1, v30

    #@ee
    invoke-static {v0, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@f1
    .line 130
    move-object/from16 v0, v24

    #@f3
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@f5
    move-object/from16 v0, v29

    #@f7
    move-object/from16 v1, v29

    #@f9
    invoke-static {v0, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@fc
    .line 131
    move-object/from16 v0, v20

    #@fe
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@100
    move-object/from16 v0, v29

    #@102
    move-object/from16 v1, v29

    #@104
    invoke-static {v0, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@107
    goto/16 :goto_1

    #@109
    .line 150
    .restart local v10    # "H":[I
    .restart local v12    # "R":[I
    :cond_5
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10c
    move-result-object v3

    #@10d
    return-object v3

    #@10e
    .line 153
    :cond_6
    move-object/from16 v11, v28

    #@110
    .line 154
    .local v11, "HSquared":[I
    move-object/from16 v0, v28

    #@112
    invoke-static {v10, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@115
    .line 156
    const/16 v3, 0xc

    #@117
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@11a
    move-result-object v9

    #@11b
    .line 157
    .local v9, "G":[I
    move-object/from16 v0, v28

    #@11d
    invoke-static {v0, v10, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@120
    .line 159
    move-object/from16 v17, v28

    #@122
    .line 160
    .local v17, "V":[I
    move-object/from16 v0, v28

    #@124
    move-object/from16 v1, v28

    #@126
    invoke-static {v0, v15, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@129
    .line 162
    invoke-static {v9, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->negate([I[I)V

    #@12c
    .line 163
    move-object/from16 v0, v30

    #@12e
    invoke-static {v13, v9, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    #@131
    .line 165
    const/16 v3, 0xc

    #@133
    move-object/from16 v0, v28

    #@135
    move-object/from16 v1, v28

    #@137
    invoke-static {v3, v0, v1, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    #@13a
    move-result v27

    #@13b
    .line 166
    .local v27, "c":I
    move/from16 v0, v27

    #@13d
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    #@140
    .line 168
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@142
    move-object/from16 v0, v29

    #@144
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@147
    .line 169
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@149
    invoke-static {v12, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@14c
    .line 170
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@14e
    iget-object v8, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@150
    invoke-static {v3, v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@153
    .line 172
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@155
    invoke-direct {v6, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@158
    .line 173
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@15a
    iget-object v8, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@15c
    move-object/from16 v0, v28

    #@15e
    invoke-static {v0, v3, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@161
    .line 174
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@163
    move-object/from16 v0, v31

    #@165
    invoke-static {v3, v12, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    #@168
    .line 175
    move-object/from16 v0, v30

    #@16a
    move-object/from16 v1, v31

    #@16c
    move-object/from16 v2, v30

    #@16e
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addExt([I[I[I)V

    #@171
    .line 176
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@173
    move-object/from16 v0, v30

    #@175
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    #@178
    .line 178
    new-instance v26, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@17a
    move-object/from16 v0, v26

    #@17c
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@17f
    .line 179
    .local v26, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    if-nez v23, :cond_7

    #@181
    .line 181
    move-object/from16 v0, v26

    #@183
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@185
    move-object/from16 v0, v22

    #@187
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@189
    move-object/from16 v0, v26

    #@18b
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@18d
    move-object/from16 v32, v0

    #@18f
    move-object/from16 v0, v32

    #@191
    invoke-static {v3, v8, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@194
    .line 183
    :cond_7
    if-nez v25, :cond_8

    #@196
    .line 185
    move-object/from16 v0, v26

    #@198
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@19a
    move-object/from16 v0, v24

    #@19c
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@19e
    move-object/from16 v0, v26

    #@1a0
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@1a2
    move-object/from16 v32, v0

    #@1a4
    move-object/from16 v0, v32

    #@1a6
    invoke-static {v3, v8, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@1a9
    .line 188
    :cond_8
    const/4 v3, 0x1

    #@1aa
    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ac
    const/4 v3, 0x0

    #@1ad
    aput-object v26, v7, v3

    #@1af
    .line 190
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@1b5
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@1b8
    return-object v3
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    #@0
    .prologue
    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

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
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@e
    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6

    #@0
    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 304
    return-object p0

    #@7
    .line 307
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

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
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@1a
    return-object v0
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 291
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
    .line 293
    :cond_0
    return-object p0

    #@f
    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

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
    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 197
    return-object p0

    #@7
    .line 200
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v4

    #@b
    .line 202
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@d
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@11
    .line 203
    .local v13, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isZero()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 205
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 208
    :cond_1
    move-object/from16 v0, p0

    #@1e
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    check-cast v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@22
    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    const/4 v7, 0x0

    #@27
    aget-object v15, v3, v7

    #@29
    check-cast v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@2b
    .line 211
    .local v15, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v3, 0xc

    #@2d
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@30
    move-result-object v20

    #@31
    .line 212
    .local v20, "t1":[I
    const/16 v3, 0xc

    #@33
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@36
    move-result-object v21

    #@37
    .line 214
    .local v21, "t2":[I
    const/16 v3, 0xc

    #@39
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@3c
    move-result-object v14

    #@3d
    .line 215
    .local v14, "Y1Squared":[I
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@3f
    invoke-static {v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@42
    .line 217
    const/16 v3, 0xc

    #@44
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@47
    move-result-object v11

    #@48
    .line 218
    .local v11, "T":[I
    invoke-static {v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@4b
    .line 220
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    #@4e
    move-result v16

    #@4f
    .line 222
    .local v16, "Z1IsOne":Z
    iget-object v0, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@51
    move-object/from16 v17, v0

    #@53
    .line 223
    .local v17, "Z1Squared":[I
    if-nez v16, :cond_2

    #@55
    .line 225
    move-object/from16 v17, v21

    #@57
    .line 226
    iget-object v3, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@59
    move-object/from16 v0, v21

    #@5b
    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@5e
    .line 229
    :cond_2
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@60
    move-object/from16 v0, v17

    #@62
    move-object/from16 v1, v20

    #@64
    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@67
    .line 231
    move-object/from16 v9, v21

    #@69
    .line 232
    .local v9, "M":[I
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@6b
    move-object/from16 v0, v17

    #@6d
    move-object/from16 v1, v21

    #@6f
    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->add([I[I[I)V

    #@72
    .line 233
    move-object/from16 v0, v21

    #@74
    move-object/from16 v1, v20

    #@76
    move-object/from16 v2, v21

    #@78
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@7b
    .line 234
    const/16 v3, 0xc

    #@7d
    move-object/from16 v0, v21

    #@7f
    move-object/from16 v1, v21

    #@81
    move-object/from16 v2, v21

    #@83
    invoke-static {v3, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    #@86
    move-result v19

    #@87
    .line 235
    .local v19, "c":I
    move/from16 v0, v19

    #@89
    move-object/from16 v1, v21

    #@8b
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    #@8e
    .line 237
    move-object v10, v14

    #@8f
    .line 238
    .local v10, "S":[I
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@91
    invoke-static {v14, v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@94
    .line 239
    const/16 v3, 0xc

    #@96
    const/4 v7, 0x2

    #@97
    const/4 v8, 0x0

    #@98
    invoke-static {v3, v14, v7, v8}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    #@9b
    move-result v19

    #@9c
    .line 240
    move/from16 v0, v19

    #@9e
    invoke-static {v0, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    #@a1
    .line 242
    const/16 v3, 0xc

    #@a3
    const/4 v7, 0x3

    #@a4
    const/4 v8, 0x0

    #@a5
    move-object/from16 v0, v20

    #@a7
    invoke-static {v3, v11, v7, v8, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    #@aa
    move-result v19

    #@ab
    .line 243
    invoke-static/range {v19 .. v20}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    #@ae
    .line 245
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@b0
    invoke-direct {v5, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@b3
    .line 246
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@b5
    move-object/from16 v0, v21

    #@b7
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@ba
    .line 247
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@bc
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@be
    invoke-static {v3, v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@c1
    .line 248
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c3
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c5
    invoke-static {v3, v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@c8
    .line 250
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@ca
    invoke-direct {v6, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@cd
    .line 251
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@cf
    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@d1
    invoke-static {v14, v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@d4
    .line 252
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@d6
    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@d8
    move-object/from16 v0, v21

    #@da
    invoke-static {v3, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@dd
    .line 253
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@df
    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@e1
    move-object/from16 v0, v20

    #@e3
    invoke-static {v3, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@e6
    .line 255
    new-instance v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@e8
    move-object/from16 v0, v18

    #@ea
    move-object/from16 v1, v21

    #@ec
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@ef
    .line 256
    .local v18, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@f1
    move-object/from16 v0, v18

    #@f3
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@f5
    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->twice([I[I)V

    #@f8
    .line 257
    if-nez v16, :cond_3

    #@fa
    .line 259
    move-object/from16 v0, v18

    #@fc
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@fe
    iget-object v7, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@100
    move-object/from16 v0, v18

    #@102
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@104
    invoke-static {v3, v7, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@107
    .line 262
    :cond_3
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@109
    const/4 v7, 0x1

    #@10a
    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@10c
    const/4 v8, 0x0

    #@10d
    aput-object v18, v7, v8

    #@10f
    move-object/from16 v0, p0

    #@111
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@113
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@116
    return-object v3
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 267
    if-ne p0, p1, :cond_0

    #@2
    .line 269
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 273
    return-object p1

    #@e
    .line 275
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 277
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b
    .line 281
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 283
    return-object p1

    #@22
    .line 286
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method
