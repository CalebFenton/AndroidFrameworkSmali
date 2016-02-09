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
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

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
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

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
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

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
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1c
    move-result-object v3

    #@1d
    .line 83
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    move-object/from16 v17, v0

    #@23
    check-cast v17, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@25
    .local v17, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    invoke-static {v12, v13, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@8d
    .line 139
    const/16 v2, 0x11

    #@8f
    invoke-static {v2, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@92
    move-result v2

    #@93
    if-eqz v2, :cond_6

    #@95
    .line 141
    const/16 v2, 0x11

    #@97
    invoke-static {v2, v11}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@9a
    move-result v2

    #@9b
    if-eqz v2, :cond_5

    #@9d
    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a0
    move-result-object v2

    #@a1
    return-object v2

    #@a2
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

    #@a4
    .line 104
    .restart local v13    # "S2":[I
    move-object/from16 v0, v21

    #@a6
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@a8
    invoke-static {v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@ab
    .line 106
    move-object/from16 v15, v27

    #@ad
    .line 107
    .restart local v15    # "U2":[I
    move-object/from16 v0, v18

    #@af
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b1
    invoke-static {v13, v2, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@b4
    .line 109
    move-object/from16 v0, v21

    #@b6
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b8
    invoke-static {v13, v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@bb
    .line 110
    move-object/from16 v0, v20

    #@bd
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@bf
    invoke-static {v13, v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@c2
    goto :goto_0

    #@c3
    .line 122
    .restart local v24    # "Z2IsOne":Z
    :cond_4
    move-object/from16 v12, v29

    #@c5
    .line 123
    .restart local v12    # "S1":[I
    move-object/from16 v0, v23

    #@c7
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@c9
    invoke-static {v2, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@cc
    .line 125
    move-object/from16 v14, v26

    #@ce
    .line 126
    .restart local v14    # "U1":[I
    move-object/from16 v0, v17

    #@d0
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@d2
    invoke-static {v12, v2, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@d5
    .line 128
    move-object/from16 v0, v23

    #@d7
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@d9
    invoke-static {v12, v2, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@dc
    .line 129
    move-object/from16 v0, v19

    #@de
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@e0
    invoke-static {v12, v2, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@e3
    goto :goto_1

    #@e4
    .line 148
    .restart local v9    # "H":[I
    .restart local v11    # "R":[I
    :cond_5
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e7
    move-result-object v2

    #@e8
    return-object v2

    #@e9
    .line 151
    :cond_6
    move-object/from16 v10, v28

    #@eb
    .line 152
    .local v10, "HSquared":[I
    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@ee
    .line 154
    const/16 v2, 0x11

    #@f0
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@f3
    move-result-object v8

    #@f4
    .line 155
    .local v8, "G":[I
    invoke-static {v10, v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@f7
    .line 157
    move-object/from16 v16, v28

    #@f9
    .line 158
    .local v16, "V":[I
    move-object/from16 v0, v16

    #@fb
    invoke-static {v10, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@fe
    .line 160
    move-object/from16 v0, v26

    #@100
    invoke-static {v12, v8, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@103
    .line 162
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@105
    move-object/from16 v0, v29

    #@107
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@10a
    .line 163
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@10c
    invoke-static {v11, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@10f
    .line 164
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@111
    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@113
    invoke-static {v2, v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    #@116
    .line 165
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@118
    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@11a
    move-object/from16 v0, v16

    #@11c
    invoke-static {v2, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@11f
    .line 166
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@121
    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@123
    move-object/from16 v0, v16

    #@125
    invoke-static {v2, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@128
    .line 168
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@12a
    invoke-direct {v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@12d
    .line 169
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@12f
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@131
    move-object/from16 v0, v16

    #@133
    invoke-static {v0, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@136
    .line 170
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@138
    move-object/from16 v0, v27

    #@13a
    invoke-static {v2, v11, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@13d
    .line 171
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@13f
    move-object/from16 v0, v27

    #@141
    move-object/from16 v1, v26

    #@143
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@146
    .line 173
    new-instance v25, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@148
    move-object/from16 v0, v25

    #@14a
    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@14d
    .line 174
    .local v25, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    if-nez v22, :cond_7

    #@14f
    .line 176
    move-object/from16 v0, v25

    #@151
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@153
    move-object/from16 v0, v21

    #@155
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@157
    move-object/from16 v0, v25

    #@159
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@15b
    move-object/from16 v30, v0

    #@15d
    move-object/from16 v0, v30

    #@15f
    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@162
    .line 178
    :cond_7
    if-nez v24, :cond_8

    #@164
    .line 180
    move-object/from16 v0, v25

    #@166
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@168
    move-object/from16 v0, v23

    #@16a
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@16c
    move-object/from16 v0, v25

    #@16e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@170
    move-object/from16 v30, v0

    #@172
    move-object/from16 v0, v30

    #@174
    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@177
    .line 183
    :cond_8
    const/4 v2, 0x1

    #@178
    new-array v6, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17a
    const/4 v2, 0x0

    #@17b
    aput-object v25, v6, v2

    #@17d
    .line 185
    .local v6, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    #@17f
    move-object/from16 v0, p0

    #@181
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

    #@183
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@186
    return-object v2
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    #@0
    .prologue
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

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
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@b
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v3

    #@13
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
    .locals 19

    #@0
    .prologue
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 192
    return-object p0

    #@7
    .line 195
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v2

    #@b
    .line 197
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@d
    iget-object v11, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    check-cast v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@11
    .line 198
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isZero()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 200
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 203
    :cond_1
    move-object/from16 v0, p0

    #@1e
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@22
    .local v10, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v0, p0

    #@24
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    const/4 v5, 0x0

    #@27
    aget-object v13, v1, v5

    #@29
    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@2b
    .line 205
    .local v13, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v1, 0x11

    #@2d
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@30
    move-result-object v17

    #@31
    .line 206
    .local v17, "t1":[I
    const/16 v1, 0x11

    #@33
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@36
    move-result-object v18

    #@37
    .line 208
    .local v18, "t2":[I
    const/16 v1, 0x11

    #@39
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@3c
    move-result-object v12

    #@3d
    .line 209
    .local v12, "Y1Squared":[I
    iget-object v1, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@3f
    invoke-static {v1, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@42
    .line 211
    const/16 v1, 0x11

    #@44
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@47
    move-result-object v9

    #@48
    .line 212
    .local v9, "T":[I
    invoke-static {v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@4b
    .line 214
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    #@4e
    move-result v14

    #@4f
    .line 216
    .local v14, "Z1IsOne":Z
    iget-object v15, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@51
    .line 217
    .local v15, "Z1Squared":[I
    if-nez v14, :cond_2

    #@53
    .line 219
    move-object/from16 v15, v18

    #@55
    .line 220
    iget-object v1, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@57
    invoke-static {v1, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@5a
    .line 223
    :cond_2
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@5c
    move-object/from16 v0, v17

    #@5e
    invoke-static {v1, v15, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@61
    .line 225
    move-object/from16 v7, v18

    #@63
    .line 226
    .local v7, "M":[I
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@65
    invoke-static {v1, v15, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    #@68
    .line 227
    move-object/from16 v0, v17

    #@6a
    invoke-static {v7, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@6d
    .line 228
    const/16 v1, 0x11

    #@6f
    invoke-static {v1, v7, v7, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    #@72
    .line 229
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    #@75
    .line 231
    move-object v8, v12

    #@76
    .line 232
    .local v8, "S":[I
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@78
    invoke-static {v12, v1, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@7b
    .line 233
    const/16 v1, 0x11

    #@7d
    const/4 v5, 0x2

    #@7e
    const/4 v6, 0x0

    #@7f
    invoke-static {v1, v8, v5, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    #@82
    .line 234
    invoke-static {v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    #@85
    .line 236
    const/16 v1, 0x11

    #@87
    const/4 v5, 0x3

    #@88
    const/4 v6, 0x0

    #@89
    move-object/from16 v0, v17

    #@8b
    invoke-static {v1, v9, v5, v6, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    #@8e
    .line 237
    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    #@91
    .line 239
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@93
    invoke-direct {v3, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@96
    .line 240
    .local v3, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@98
    invoke-static {v7, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@9b
    .line 241
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@9d
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@9f
    invoke-static {v1, v8, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@a2
    .line 242
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@a4
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@a6
    invoke-static {v1, v8, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@a9
    .line 244
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@ab
    invoke-direct {v4, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@ae
    .line 245
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b0
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b2
    invoke-static {v8, v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@b5
    .line 246
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b7
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b9
    invoke-static {v1, v7, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@bc
    .line 247
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@be
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@c0
    move-object/from16 v0, v17

    #@c2
    invoke-static {v1, v0, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@c5
    .line 249
    new-instance v16, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@c7
    move-object/from16 v0, v16

    #@c9
    invoke-direct {v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@cc
    .line 250
    .local v16, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v1, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@ce
    move-object/from16 v0, v16

    #@d0
    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@d2
    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->twice([I[I)V

    #@d5
    .line 251
    if-nez v14, :cond_3

    #@d7
    .line 253
    move-object/from16 v0, v16

    #@d9
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@db
    iget-object v5, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@dd
    move-object/from16 v0, v16

    #@df
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@e1
    invoke-static {v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@e4
    .line 256
    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    #@e6
    const/4 v5, 0x1

    #@e7
    new-array v5, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e9
    const/4 v6, 0x0

    #@ea
    aput-object v16, v5, v6

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

    #@f0
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@f3
    return-object v1
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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

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
