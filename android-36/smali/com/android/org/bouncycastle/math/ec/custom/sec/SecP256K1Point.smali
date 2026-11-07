.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP256K1Point.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v1

    .line 37
    :cond_c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_13

    return-object v0

    :cond_13
    if-ne v0, v1, :cond_1a

    .line 43
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 46
    :cond_1a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 48
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 49
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 51
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v2

    check-cast v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 52
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 55
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v9

    .line 56
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v10

    .line 57
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v11

    .line 58
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 59
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v13

    .line 61
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v14

    if-eqz v14, :cond_5d

    .line 65
    iget-object v6, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 66
    iget-object v7, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    goto :goto_73

    .line 71
    :cond_5d
    iget-object v15, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v15, v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 74
    iget-object v6, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v12, v6, v11, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 76
    iget-object v6, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v12, v6, v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 77
    iget-object v6, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v12, v6, v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    move-object v6, v11

    move-object v7, v12

    .line 80
    :goto_73
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v15

    if-eqz v15, :cond_80

    .line 84
    iget-object v4, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 85
    iget-object v5, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move/from16 v16, v2

    goto :goto_98

    :cond_80
    move/from16 v16, v2

    .line 90
    iget-object v2, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v2, v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 93
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v13, v2, v10, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 95
    iget-object v2, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v13, v2, v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 96
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v13, v2, v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    move-object v4, v10

    move-object v5, v13

    .line 99
    :goto_98
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v2

    .line 100
    invoke-static {v4, v6, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 103
    invoke-static {v5, v7, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 106
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 108
    invoke-static {v11}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 111
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 115
    :cond_b3
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 119
    :cond_b8
    invoke-static {v2, v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 121
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 122
    invoke-static {v12, v2, v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 125
    invoke-static {v12, v4, v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 127
    invoke-static {v0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    .line 128
    invoke-static {v5, v0, v10}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 130
    invoke-static {v12, v12, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v4

    .line 131
    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 133
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v4, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 134
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v11, v5, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 135
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v0, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 137
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 138
    iget-object v0, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v6, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v12, v0, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 139
    iget-object v0, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v11, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiplyAddToExt([I[I[I)V

    .line 140
    iget-object v0, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v10, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 142
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    if-nez v14, :cond_105

    .line 145
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v6, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v2, v6, v2, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    :cond_105
    if-nez v15, :cond_10e

    .line 149
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v1, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v2, v1, v2, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    :cond_10e
    const/4 v1, 0x1

    .line 152
    new-array v1, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v0, v1, v16

    .line 154
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 255
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 260
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 244
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 250
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    :cond_17
    :goto_17
    return-object p0
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p0

    .line 165
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 168
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 170
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 173
    :cond_1b
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object p0, p0, v0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 176
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v4

    .line 178
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v5

    .line 179
    iget-object v6, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v6, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 181
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 182
    invoke-static {v5, v6, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 184
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    .line 185
    iget-object v8, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v8, v7, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 186
    invoke-static {v7, v7, v7}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v8

    .line 187
    invoke-static {v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 190
    iget-object v3, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v3, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    const/4 v3, 0x2

    const/16 v8, 0x8

    .line 191
    invoke-static {v8, v5, v3, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v3

    .line 192
    invoke-static {v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 194
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v3

    const/4 v9, 0x3

    .line 195
    invoke-static {v8, v6, v9, v0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v8

    .line 196
    invoke-static {v8, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 198
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v8, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 199
    iget-object v6, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v7, v6, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 200
    iget-object v6, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v6, v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 201
    iget-object v6, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v6, v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 203
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v6, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 204
    iget-object v9, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v10, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v9, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 205
    iget-object v5, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v7, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 206
    iget-object v5, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 208
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 209
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->twice([I[I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 212
    iget-object v2, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v2, p0, v2, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 215
    :cond_a7
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v3, v2, v0

    invoke-direct {p0, v1, v8, v6, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object p0
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    if-ne p0, p1, :cond_7

    .line 222
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 224
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    .line 228
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 230
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 233
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 234
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_22

    return-object p1

    .line 239
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
