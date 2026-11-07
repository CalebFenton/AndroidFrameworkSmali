.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP224R1Point.java"


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
    .registers 16

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p1

    .line 36
    :cond_8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object p0

    :cond_f
    if-ne p0, p1, :cond_16

    .line 42
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 45
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 48
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 50
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v6, v6, v0

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 54
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v7

    .line 55
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    .line 56
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v9

    .line 57
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v10

    .line 59
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v11

    if-eqz v11, :cond_55

    .line 63
    iget-object v4, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 64
    iget-object v5, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    goto :goto_6b

    .line 69
    :cond_55
    iget-object v12, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 72
    iget-object v4, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v9, v4, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 74
    iget-object v4, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v9, v4, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 75
    iget-object v4, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v9, v4, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    move-object v4, v8

    move-object v5, v9

    .line 78
    :goto_6b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v12

    if-eqz v12, :cond_76

    .line 82
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 83
    iget-object v3, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    goto :goto_8c

    .line 88
    :cond_76
    iget-object v13, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v13, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 91
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v10, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 93
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v10, v2, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 94
    iget-object v2, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v10, v2, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    move-object v2, v7

    move-object v3, v10

    .line 97
    :goto_8c
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v13

    .line 98
    invoke-static {v2, v4, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 101
    invoke-static {v3, v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 104
    invoke-static {v13}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 106
    invoke-static {v8}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 109
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 113
    :cond_a7
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 117
    :cond_ac
    invoke-static {v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 119
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object p0

    .line 120
    invoke-static {v9, v13, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 123
    invoke-static {v9, v2, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 125
    invoke-static {p0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 126
    invoke-static {v3, p0, v7}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 128
    invoke-static {v9, v9, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v2

    .line 129
    invoke-static {v2, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 131
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v2, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 132
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v8, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 133
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v3, p0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 135
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 136
    iget-object p0, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v9, p0, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 137
    iget-object p0, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0, v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiplyAddToExt([I[I[I)V

    .line 138
    iget-object p0, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 140
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    if-nez v11, :cond_f9

    .line 143
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v4, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    :cond_f9
    if-nez v12, :cond_102

    .line 147
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v4, p1, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    :cond_102
    const/4 p1, 0x1

    .line 150
    new-array p1, p1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object p0, p1, v0

    .line 152
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object p0
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 264
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 269
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 253
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 259
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

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

    .line 157
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p0

    .line 162
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 165
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 167
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 170
    :cond_1b
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object p0, p0, v0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 173
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    .line 174
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v5

    .line 176
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v6

    .line 177
    iget-object v7, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 179
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    .line 180
    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v8

    .line 184
    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    if-nez v8, :cond_49

    .line 188
    invoke-static {v9, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    move-object v9, v5

    .line 191
    :cond_49
    iget-object v10, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v10, v9, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 194
    iget-object v10, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v10, v9, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 195
    invoke-static {v5, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 196
    invoke-static {v5, v5, v5}, Lcom/android/org/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v9

    .line 197
    invoke-static {v9, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 200
    iget-object v3, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v6, v3, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    const/4 v3, 0x2

    const/4 v9, 0x7

    .line 201
    invoke-static {v9, v6, v3, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v3

    .line 202
    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    const/4 v3, 0x3

    .line 204
    invoke-static {v9, v7, v3, v0, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v3

    .line 205
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 207
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 208
    iget-object v7, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v5, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 209
    iget-object v7, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v6, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 210
    iget-object v7, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v6, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 212
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 213
    iget-object v9, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v10, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v6, v9, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 214
    iget-object v6, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v6, v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 215
    iget-object v6, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v6, v4, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 217
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 218
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    if-nez v8, :cond_b2

    .line 221
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, p0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 224
    :cond_b2
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v2, v0

    invoke-direct {p0, v1, v3, v7, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object p0
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    if-ne p0, p1, :cond_7

    .line 231
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 233
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    .line 237
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 239
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 242
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 243
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_22

    return-object p1

    .line 248
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
