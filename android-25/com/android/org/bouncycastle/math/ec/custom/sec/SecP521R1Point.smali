.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP521R1Point.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 24
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@4
    .line 22
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
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@5
    .line 46
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
    .line 48
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
    .line 46
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    goto :goto_1

    #@19
    .line 51
    :cond_2
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@1b
    .line 42
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
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 58
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@5
    .line 54
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 31
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 70
    return-object p1

    #@7
    .line 72
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 74
    return-object p0

    #@e
    .line 76
    :cond_1
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p1

    #@12
    if-ne v0, v1, :cond_2

    #@14
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 81
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1c
    move-result-object v3

    #@1d
    .line 83
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    move-object/from16 v17, v0

    #@23
    check-cast v17, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@25
    .local v17, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@29
    move-object/from16 v19, v0

    #@2b
    check-cast v19, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@2d
    .line 84
    .local v19, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@30
    move-result-object v18

    #@31
    check-cast v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@33
    .local v18, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    move-result-object v20

    #@37
    check-cast v20, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@39
    .line 86
    .local v20, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3d
    const/4 v7, 0x0

    #@3e
    aget-object v21, v2, v7

    #@40
    check-cast v21, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@42
    .line 87
    .local v21, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/4 v2, 0x0

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@48
    move-result-object v23

    #@49
    check-cast v23, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@4b
    .line 89
    .local v23, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v2, 0x11

    #@4d
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@50
    move-result-object v26

    #@51
    .line 90
    .local v26, "t1":[I
    const/16 v2, 0x11

    #@53
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@56
    move-result-object v27

    #@57
    .line 91
    .local v27, "t2":[I
    const/16 v2, 0x11

    #@59
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5c
    move-result-object v28

    #@5d
    .line 92
    .local v28, "t3":[I
    const/16 v2, 0x11

    #@5f
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@62
    move-result-object v29

    #@63
    .line 94
    .local v29, "t4":[I
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    #@66
    move-result v22

    #@67
    .line 96
    .local v22, "Z1IsOne":Z
    if-eqz v22, :cond_3

    #@69
    .line 98
    move-object/from16 v0, v18

    #@6b
    iget-object v15, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@6d
    .line 99
    .local v15, "U2":[I
    move-object/from16 v0, v20

    #@6f
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@71
    .line 113
    .local v13, "S2":[I
    :goto_0
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    #@74
    move-result v24

    #@75
    .line 115
    .local v24, "Z2IsOne":Z
    if-eqz v24, :cond_4

    #@77
    .line 117
    move-object/from16 v0, v17

    #@79
    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@7b
    .line 118
    .local v14, "U1":[I
    move-object/from16 v0, v19

    #@7d
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@7f
    .line 132
    .local v12, "S1":[I
    :goto_1
    const/16 v2, 0x11

    #@81
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@84
    move-result-object v9

    #@85
    .line 133
    .local v9, "H":[I
    invoke-static {v14, v15, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@88
    .line 135
    move-object/from16 v11, v27

    #@8a
    .line 136
    .local v11, "R":[I
    move-object/from16 v0, v27

    #@8c
    invoke-static {v12, v13, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@8f
    .line 139
    const/16 v2, 0x11

    #@91
    invoke-static {v2, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@94
    move-result v2

    #@95
    if-eqz v2, :cond_6

    #@97
    .line 141
    const/16 v2, 0x11

    #@99
    move-object/from16 v0, v27

    #@9b
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@9e
    move-result v2

    #@9f
    if-eqz v2, :cond_5

    #@a1
    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a4
    move-result-object v2

    #@a5
    return-object v2

    #@a6
    .line 103
    .end local v9    # "H":[I
    .end local v11    # "R":[I
    .end local v12    # "S1":[I
    .end local v13    # "S2":[I
    .end local v14    # "U1":[I
    .end local v15    # "U2":[I
    .end local v24    # "Z2IsOne":Z
    :cond_3
    move-object/from16 v13, v28

    #@a8
    .line 104
    .restart local v13    # "S2":[I
    move-object/from16 v0, v21

    #@aa
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@ac
    move-object/from16 v0, v28

    #@ae
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@b1
    .line 106
    move-object/from16 v15, v27

    #@b3
    .line 107
    .restart local v15    # "U2":[I
    move-object/from16 v0, v18

    #@b5
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b7
    move-object/from16 v0, v28

    #@b9
    move-object/from16 v1, v27

    #@bb
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@be
    .line 109
    move-object/from16 v0, v21

    #@c0
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@c2
    move-object/from16 v0, v28

    #@c4
    move-object/from16 v1, v28

    #@c6
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@c9
    .line 110
    move-object/from16 v0, v20

    #@cb
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@cd
    move-object/from16 v0, v28

    #@cf
    move-object/from16 v1, v28

    #@d1
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@d4
    goto :goto_0

    #@d5
    .line 122
    .restart local v24    # "Z2IsOne":Z
    :cond_4
    move-object/from16 v12, v29

    #@d7
    .line 123
    .restart local v12    # "S1":[I
    move-object/from16 v0, v23

    #@d9
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@db
    move-object/from16 v0, v29

    #@dd
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@e0
    .line 125
    move-object/from16 v14, v26

    #@e2
    .line 126
    .restart local v14    # "U1":[I
    move-object/from16 v0, v17

    #@e4
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@e6
    move-object/from16 v0, v29

    #@e8
    move-object/from16 v1, v26

    #@ea
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@ed
    .line 128
    move-object/from16 v0, v23

    #@ef
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@f1
    move-object/from16 v0, v29

    #@f3
    move-object/from16 v1, v29

    #@f5
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@f8
    .line 129
    move-object/from16 v0, v19

    #@fa
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@fc
    move-object/from16 v0, v29

    #@fe
    move-object/from16 v1, v29

    #@100
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@103
    goto/16 :goto_1

    #@105
    .line 148
    .restart local v9    # "H":[I
    .restart local v11    # "R":[I
    :cond_5
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@108
    move-result-object v2

    #@109
    return-object v2

    #@10a
    .line 151
    :cond_6
    move-object/from16 v10, v28

    #@10c
    .line 152
    .local v10, "HSquared":[I
    move-object/from16 v0, v28

    #@10e
    invoke-static {v9, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@111
    .line 154
    const/16 v2, 0x11

    #@113
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@116
    move-result-object v8

    #@117
    .line 155
    .local v8, "G":[I
    move-object/from16 v0, v28

    #@119
    invoke-static {v0, v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@11c
    .line 157
    move-object/from16 v16, v28

    #@11e
    .line 158
    .local v16, "V":[I
    move-object/from16 v0, v28

    #@120
    move-object/from16 v1, v28

    #@122
    invoke-static {v0, v14, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@125
    .line 160
    move-object/from16 v0, v26

    #@127
    invoke-static {v12, v8, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@12a
    .line 162
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@12c
    move-object/from16 v0, v29

    #@12e
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@131
    .line 163
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@133
    move-object/from16 v0, v27

    #@135
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@138
    .line 164
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@13a
    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@13c
    invoke-static {v2, v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    #@13f
    .line 165
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@141
    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@143
    move-object/from16 v0, v28

    #@145
    invoke-static {v2, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@148
    .line 166
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@14a
    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@14c
    move-object/from16 v0, v28

    #@14e
    invoke-static {v2, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@151
    .line 168
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@153
    invoke-direct {v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@156
    .line 169
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@158
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@15a
    move-object/from16 v0, v28

    #@15c
    invoke-static {v0, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@15f
    .line 170
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@161
    move-object/from16 v0, v27

    #@163
    move-object/from16 v1, v27

    #@165
    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@168
    .line 171
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@16a
    move-object/from16 v0, v27

    #@16c
    move-object/from16 v1, v26

    #@16e
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@171
    .line 173
    new-instance v25, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@173
    move-object/from16 v0, v25

    #@175
    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@178
    .line 174
    .local v25, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    if-nez v22, :cond_7

    #@17a
    .line 176
    move-object/from16 v0, v25

    #@17c
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@17e
    move-object/from16 v0, v21

    #@180
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@182
    move-object/from16 v0, v25

    #@184
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@186
    move-object/from16 v30, v0

    #@188
    move-object/from16 v0, v30

    #@18a
    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@18d
    .line 178
    :cond_7
    if-nez v24, :cond_8

    #@18f
    .line 180
    move-object/from16 v0, v25

    #@191
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@193
    move-object/from16 v0, v23

    #@195
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@197
    move-object/from16 v0, v25

    #@199
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@19b
    move-object/from16 v30, v0

    #@19d
    move-object/from16 v0, v30

    #@19f
    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@1a2
    .line 183
    :cond_8
    const/4 v2, 0x1

    #@1a3
    new-array v6, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a5
    const/4 v2, 0x0

    #@1a6
    aput-object v25, v6, v2

    #@1a8
    .line 185
    .local v6, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@1ae
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@1b1
    return-object v2
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    #@0
    .prologue
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

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
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@e
    return-object v0
.end method

.method protected doubleProductFromSquares(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 321
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method protected eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 328
    return-object p0

    #@7
    .line 331
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

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
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@1a
    return-object v0
.end method

.method protected three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 285
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
    .line 287
    :cond_0
    return-object p0

    #@f
    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

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
    .locals 21

    #@0
    .prologue
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 192
    return-object p0

    #@7
    .line 195
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v4

    #@b
    .line 197
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@d
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@11
    .line 198
    .local v13, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isZero()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 200
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 203
    :cond_1
    move-object/from16 v0, p0

    #@1e
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    check-cast v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@22
    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    const/4 v7, 0x0

    #@27
    aget-object v15, v3, v7

    #@29
    check-cast v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@2b
    .line 205
    .local v15, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v3, 0x11

    #@2d
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@30
    move-result-object v19

    #@31
    .line 206
    .local v19, "t1":[I
    const/16 v3, 0x11

    #@33
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@36
    move-result-object v20

    #@37
    .line 208
    .local v20, "t2":[I
    const/16 v3, 0x11

    #@39
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@3c
    move-result-object v14

    #@3d
    .line 209
    .local v14, "Y1Squared":[I
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@3f
    invoke-static {v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@42
    .line 211
    const/16 v3, 0x11

    #@44
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@47
    move-result-object v11

    #@48
    .line 212
    .local v11, "T":[I
    invoke-static {v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@4b
    .line 214
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    #@4e
    move-result v16

    #@4f
    .line 216
    .local v16, "Z1IsOne":Z
    iget-object v0, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@51
    move-object/from16 v17, v0

    #@53
    .line 217
    .local v17, "Z1Squared":[I
    if-nez v16, :cond_2

    #@55
    .line 219
    move-object/from16 v17, v20

    #@57
    .line 220
    iget-object v3, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@59
    move-object/from16 v0, v20

    #@5b
    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@5e
    .line 223
    :cond_2
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@60
    move-object/from16 v0, v17

    #@62
    move-object/from16 v1, v19

    #@64
    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@67
    .line 225
    move-object/from16 v9, v20

    #@69
    .line 226
    .local v9, "M":[I
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@6b
    move-object/from16 v0, v17

    #@6d
    move-object/from16 v1, v20

    #@6f
    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    #@72
    .line 227
    move-object/from16 v0, v20

    #@74
    move-object/from16 v1, v19

    #@76
    move-object/from16 v2, v20

    #@78
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@7b
    .line 228
    const/16 v3, 0x11

    #@7d
    move-object/from16 v0, v20

    #@7f
    move-object/from16 v1, v20

    #@81
    move-object/from16 v2, v20

    #@83
    invoke-static {v3, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    #@86
    .line 229
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    #@89
    .line 231
    move-object v10, v14

    #@8a
    .line 232
    .local v10, "S":[I
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@8c
    invoke-static {v14, v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@8f
    .line 233
    const/16 v3, 0x11

    #@91
    const/4 v7, 0x2

    #@92
    const/4 v8, 0x0

    #@93
    invoke-static {v3, v14, v7, v8}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    #@96
    .line 234
    invoke-static {v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    #@99
    .line 236
    const/16 v3, 0x11

    #@9b
    const/4 v7, 0x3

    #@9c
    const/4 v8, 0x0

    #@9d
    move-object/from16 v0, v19

    #@9f
    invoke-static {v3, v11, v7, v8, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    #@a2
    .line 237
    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    #@a5
    .line 239
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@a7
    invoke-direct {v5, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@aa
    .line 240
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@ac
    move-object/from16 v0, v20

    #@ae
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@b1
    .line 241
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b3
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b5
    invoke-static {v3, v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@b8
    .line 242
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@ba
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@bc
    invoke-static {v3, v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@bf
    .line 244
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@c1
    invoke-direct {v6, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@c4
    .line 245
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@c6
    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@c8
    invoke-static {v14, v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@cb
    .line 246
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@cd
    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@cf
    move-object/from16 v0, v20

    #@d1
    invoke-static {v3, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@d4
    .line 247
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@d6
    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@d8
    move-object/from16 v0, v19

    #@da
    invoke-static {v3, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@dd
    .line 249
    new-instance v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@df
    move-object/from16 v0, v18

    #@e1
    move-object/from16 v1, v20

    #@e3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@e6
    .line 250
    .local v18, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@e8
    move-object/from16 v0, v18

    #@ea
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@ec
    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->twice([I[I)V

    #@ef
    .line 251
    if-nez v16, :cond_3

    #@f1
    .line 253
    move-object/from16 v0, v18

    #@f3
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@f5
    iget-object v7, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@f7
    move-object/from16 v0, v18

    #@f9
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@fb
    invoke-static {v3, v7, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@fe
    .line 256
    :cond_3
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    #@100
    const/4 v7, 0x1

    #@101
    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@103
    const/4 v8, 0x0

    #@104
    aput-object v18, v7, v8

    #@106
    move-object/from16 v0, p0

    #@108
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@10a
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@10d
    return-object v3
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 261
    if-ne p0, p1, :cond_0

    #@2
    .line 263
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 267
    return-object p1

    #@e
    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 271
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b
    .line 275
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 277
    return-object p1

    #@22
    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method protected two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 296
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
