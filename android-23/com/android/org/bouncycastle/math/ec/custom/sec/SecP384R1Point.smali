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
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

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
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

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
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

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
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1c
    move-result-object v4

    #@1d
    .line 84
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    move-object/from16 v18, v0

    #@23
    check-cast v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@25
    .local v18, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    invoke-static {v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@b3
    .line 108
    move-object/from16 v16, v31

    #@b5
    .line 109
    .restart local v16    # "U2":[I
    move-object/from16 v0, v19

    #@b7
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@b9
    move-object/from16 v0, v16

    #@bb
    invoke-static {v14, v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@be
    .line 111
    move-object/from16 v0, v22

    #@c0
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c2
    invoke-static {v14, v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@c5
    .line 112
    move-object/from16 v0, v21

    #@c7
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c9
    invoke-static {v14, v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@cc
    goto :goto_0

    #@cd
    .line 124
    .restart local v25    # "Z2IsOne":Z
    :cond_4
    move-object/from16 v13, v29

    #@cf
    .line 125
    .restart local v13    # "S1":[I
    move-object/from16 v0, v24

    #@d1
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@d3
    invoke-static {v3, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@d6
    .line 127
    move-object/from16 v15, v30

    #@d8
    .line 128
    .restart local v15    # "U1":[I
    move-object/from16 v0, v18

    #@da
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@dc
    invoke-static {v13, v3, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@df
    .line 130
    move-object/from16 v0, v24

    #@e1
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@e3
    invoke-static {v13, v3, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@e6
    .line 131
    move-object/from16 v0, v20

    #@e8
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@ea
    invoke-static {v13, v3, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@ed
    goto :goto_1

    #@ee
    .line 150
    .restart local v10    # "H":[I
    .restart local v12    # "R":[I
    :cond_5
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@f1
    move-result-object v3

    #@f2
    return-object v3

    #@f3
    .line 153
    :cond_6
    move-object/from16 v11, v28

    #@f5
    .line 154
    .local v11, "HSquared":[I
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@f8
    .line 156
    const/16 v3, 0xc

    #@fa
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@fd
    move-result-object v9

    #@fe
    .line 157
    .local v9, "G":[I
    invoke-static {v11, v10, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@101
    .line 159
    move-object/from16 v17, v28

    #@103
    .line 160
    .local v17, "V":[I
    move-object/from16 v0, v17

    #@105
    invoke-static {v11, v15, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@108
    .line 162
    invoke-static {v9, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->negate([I[I)V

    #@10b
    .line 163
    move-object/from16 v0, v30

    #@10d
    invoke-static {v13, v9, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    #@110
    .line 165
    const/16 v3, 0xc

    #@112
    move-object/from16 v0, v17

    #@114
    move-object/from16 v1, v17

    #@116
    invoke-static {v3, v0, v1, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    #@119
    move-result v27

    #@11a
    .line 166
    .local v27, "c":I
    move/from16 v0, v27

    #@11c
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    #@11f
    .line 168
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@121
    move-object/from16 v0, v29

    #@123
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@126
    .line 169
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@128
    invoke-static {v12, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@12b
    .line 170
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@12d
    iget-object v8, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@12f
    invoke-static {v3, v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@132
    .line 172
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@134
    invoke-direct {v6, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@137
    .line 173
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@139
    iget-object v8, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@13b
    move-object/from16 v0, v17

    #@13d
    invoke-static {v0, v3, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@140
    .line 174
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@142
    move-object/from16 v0, v31

    #@144
    invoke-static {v3, v12, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    #@147
    .line 175
    move-object/from16 v0, v30

    #@149
    move-object/from16 v1, v31

    #@14b
    move-object/from16 v2, v30

    #@14d
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addExt([I[I[I)V

    #@150
    .line 176
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@152
    move-object/from16 v0, v30

    #@154
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    #@157
    .line 178
    new-instance v26, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@159
    move-object/from16 v0, v26

    #@15b
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@15e
    .line 179
    .local v26, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    if-nez v23, :cond_7

    #@160
    .line 181
    move-object/from16 v0, v26

    #@162
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@164
    move-object/from16 v0, v22

    #@166
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@168
    move-object/from16 v0, v26

    #@16a
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@16c
    move-object/from16 v32, v0

    #@16e
    move-object/from16 v0, v32

    #@170
    invoke-static {v3, v8, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@173
    .line 183
    :cond_7
    if-nez v25, :cond_8

    #@175
    .line 185
    move-object/from16 v0, v26

    #@177
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@179
    move-object/from16 v0, v24

    #@17b
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@17d
    move-object/from16 v0, v26

    #@17f
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@181
    move-object/from16 v32, v0

    #@183
    move-object/from16 v0, v32

    #@185
    invoke-static {v3, v8, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@188
    .line 188
    :cond_8
    const/4 v3, 0x1

    #@189
    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@18b
    const/4 v3, 0x0

    #@18c
    aput-object v26, v7, v3

    #@18e
    .line 190
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@190
    move-object/from16 v0, p0

    #@192
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    #@194
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@197
    return-object v3
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    #@0
    .prologue
    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

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
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@b
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v3

    #@13
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    .locals 20

    #@0
    .prologue
    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 197
    return-object p0

    #@7
    .line 200
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v2

    #@b
    .line 202
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@d
    iget-object v11, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    check-cast v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@11
    .line 203
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isZero()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 205
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 208
    :cond_1
    move-object/from16 v0, p0

    #@1e
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@22
    .local v10, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v0, p0

    #@24
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    const/4 v5, 0x0

    #@27
    aget-object v13, v1, v5

    #@29
    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@2b
    .line 211
    .local v13, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v1, 0xc

    #@2d
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@30
    move-result-object v18

    #@31
    .line 212
    .local v18, "t1":[I
    const/16 v1, 0xc

    #@33
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@36
    move-result-object v19

    #@37
    .line 214
    .local v19, "t2":[I
    const/16 v1, 0xc

    #@39
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@3c
    move-result-object v12

    #@3d
    .line 215
    .local v12, "Y1Squared":[I
    iget-object v1, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@3f
    invoke-static {v1, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@42
    .line 217
    const/16 v1, 0xc

    #@44
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@47
    move-result-object v9

    #@48
    .line 218
    .local v9, "T":[I
    invoke-static {v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@4b
    .line 220
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    #@4e
    move-result v14

    #@4f
    .line 222
    .local v14, "Z1IsOne":Z
    iget-object v15, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@51
    .line 223
    .local v15, "Z1Squared":[I
    if-nez v14, :cond_2

    #@53
    .line 225
    move-object/from16 v15, v19

    #@55
    .line 226
    iget-object v1, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@57
    invoke-static {v1, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@5a
    .line 229
    :cond_2
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@5c
    move-object/from16 v0, v18

    #@5e
    invoke-static {v1, v15, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@61
    .line 231
    move-object/from16 v7, v19

    #@63
    .line 232
    .local v7, "M":[I
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@65
    invoke-static {v1, v15, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->add([I[I[I)V

    #@68
    .line 233
    move-object/from16 v0, v18

    #@6a
    invoke-static {v7, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@6d
    .line 234
    const/16 v1, 0xc

    #@6f
    invoke-static {v1, v7, v7, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    #@72
    move-result v17

    #@73
    .line 235
    .local v17, "c":I
    move/from16 v0, v17

    #@75
    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    #@78
    .line 237
    move-object v8, v12

    #@79
    .line 238
    .local v8, "S":[I
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@7b
    invoke-static {v12, v1, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@7e
    .line 239
    const/16 v1, 0xc

    #@80
    const/4 v5, 0x2

    #@81
    const/4 v6, 0x0

    #@82
    invoke-static {v1, v8, v5, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    #@85
    move-result v17

    #@86
    .line 240
    move/from16 v0, v17

    #@88
    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    #@8b
    .line 242
    const/16 v1, 0xc

    #@8d
    const/4 v5, 0x3

    #@8e
    const/4 v6, 0x0

    #@8f
    move-object/from16 v0, v18

    #@91
    invoke-static {v1, v9, v5, v6, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    #@94
    move-result v17

    #@95
    .line 243
    invoke-static/range {v17 .. v18}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    #@98
    .line 245
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@9a
    invoke-direct {v3, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@9d
    .line 246
    .local v3, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@9f
    invoke-static {v7, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@a2
    .line 247
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@a4
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@a6
    invoke-static {v1, v8, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@a9
    .line 248
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@ab
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@ad
    invoke-static {v1, v8, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@b0
    .line 250
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@b2
    invoke-direct {v4, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@b5
    .line 251
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@b7
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@b9
    invoke-static {v8, v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@bc
    .line 252
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@be
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c0
    invoke-static {v1, v7, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@c3
    .line 253
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c5
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c7
    move-object/from16 v0, v18

    #@c9
    invoke-static {v1, v0, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@cc
    .line 255
    new-instance v16, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@ce
    move-object/from16 v0, v16

    #@d0
    invoke-direct {v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@d3
    .line 256
    .local v16, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v1, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@d5
    move-object/from16 v0, v16

    #@d7
    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@d9
    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->twice([I[I)V

    #@dc
    .line 257
    if-nez v14, :cond_3

    #@de
    .line 259
    move-object/from16 v0, v16

    #@e0
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@e2
    iget-object v5, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@e4
    move-object/from16 v0, v16

    #@e6
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@e8
    invoke-static {v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@eb
    .line 262
    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@ed
    const/4 v5, 0x1

    #@ee
    new-array v5, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f0
    const/4 v6, 0x0

    #@f1
    aput-object v16, v5, v6

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    #@f7
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@fa
    return-object v1
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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
