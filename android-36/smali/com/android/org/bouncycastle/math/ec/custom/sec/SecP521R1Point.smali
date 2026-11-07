.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP521R1Point.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v1

    .line 35
    :cond_c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_13

    return-object v0

    :cond_13
    if-ne v0, v1, :cond_1a

    .line 41
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 46
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 47
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 49
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v2

    check-cast v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 50
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    const/16 v9, 0x21

    .line 52
    invoke-static {v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    const/16 v10, 0x11

    .line 53
    invoke-static {v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 54
    invoke-static {v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    .line 55
    invoke-static {v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v13

    .line 56
    invoke-static {v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v14

    .line 58
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v15

    if-eqz v15, :cond_63

    .line 62
    iget-object v6, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 63
    iget-object v7, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move/from16 v16, v2

    goto :goto_7b

    :cond_63
    move/from16 v16, v2

    .line 68
    iget-object v2, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 71
    iget-object v2, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v2, v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 73
    iget-object v2, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v2, v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 74
    iget-object v2, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v2, v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    move-object v6, v12

    move-object v7, v13

    .line 77
    :goto_7b
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 81
    iget-object v4, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 82
    iget-object v5, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move/from16 p1, v10

    goto :goto_a0

    :cond_88
    move/from16 p1, v10

    .line 87
    iget-object v10, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v10, v14, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 90
    iget-object v4, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v4, v11, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 92
    iget-object v4, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v4, v14, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 93
    iget-object v4, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v4, v14, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    move-object v4, v11

    move-object v5, v14

    .line 96
    :goto_a0
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 97
    invoke-static {v4, v6, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 100
    invoke-static {v5, v7, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    move/from16 v6, p1

    .line 103
    invoke-static {v6, v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 105
    invoke-static {v6, v12}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 108
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 112
    :cond_bd
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 116
    :cond_c2
    invoke-static {v10, v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 118
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 119
    invoke-static {v13, v10, v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 122
    invoke-static {v13, v4, v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 124
    invoke-static {v5, v0, v11, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 126
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v4, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 127
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v12, v5, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 128
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v0, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 129
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v13, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 130
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v13, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 132
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 133
    iget-object v0, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v6, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v0, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 134
    iget-object v0, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v12, v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 135
    iget-object v0, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v12, v11, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 137
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    if-nez v15, :cond_10f

    .line 140
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v6, v7, v6, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    :cond_10f
    if-nez v2, :cond_118

    .line 144
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v1, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v1, v2, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    :cond_118
    const/4 v1, 0x1

    .line 147
    new-array v1, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v0, v1, v16

    .line 149
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 291
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 296
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 250
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 256
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    :cond_17
    :goto_17
    return-object p0
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 14

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p0

    .line 159
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 162
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 164
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 167
    :cond_1b
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object p0, p0, v0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    const/16 v4, 0x21

    .line 169
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    const/16 v5, 0x11

    .line 170
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    .line 171
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v7

    .line 173
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 174
    iget-object v9, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v9, v8, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 176
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 177
    invoke-static {v8, v9, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v10

    .line 181
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    if-nez v10, :cond_51

    .line 185
    invoke-static {v11, v7, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    move-object v11, v7

    .line 188
    :cond_51
    iget-object v12, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v12, v11, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 191
    iget-object v12, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v12, v11, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 192
    invoke-static {v7, v6, v7, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 193
    invoke-static {v5, v7, v7, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    .line 194
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 197
    iget-object v3, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v3, v8, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    const/4 v3, 0x2

    .line 198
    invoke-static {v5, v8, v3, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    .line 199
    invoke-static {v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    const/4 v3, 0x3

    .line 201
    invoke-static {v5, v9, v3, v0, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    .line 202
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 204
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v3, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 205
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v7, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 206
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v8, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 207
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v8, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 209
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 210
    iget-object v9, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v11, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v9, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 211
    iget-object v8, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v7, v8, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 212
    iget-object v8, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v6, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 214
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 215
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->twice([I[I)V

    if-nez v10, :cond_b6

    .line 218
    iget-object v2, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, p0, v2, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 221
    :cond_b6
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v2, v0

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object p0
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    if-ne p0, p1, :cond_7

    .line 228
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 230
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    .line 234
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 236
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 239
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 240
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_22

    return-object p1

    .line 245
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
