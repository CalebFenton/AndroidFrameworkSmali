.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP192K1Point.java"


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

    .line 33
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p1

    .line 37
    :cond_8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object p0

    :cond_f
    if-ne p0, p1, :cond_16

    .line 43
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 46
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 49
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 51
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v6, v6, v0

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 55
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v7

    .line 56
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    .line 57
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v9

    .line 58
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v10

    .line 60
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    move-result v11

    if-eqz v11, :cond_55

    .line 64
    iget-object v4, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    .line 65
    iget-object v5, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    goto :goto_6b

    .line 70
    :cond_55
    iget-object v12, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 73
    iget-object v4, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v9, v4, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 75
    iget-object v4, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v9, v4, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 76
    iget-object v4, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v9, v4, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    move-object v4, v8

    move-object v5, v9

    .line 79
    :goto_6b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    move-result v12

    if-eqz v12, :cond_76

    .line 83
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    .line 84
    iget-object v3, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    goto :goto_8c

    .line 89
    :cond_76
    iget-object v13, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v13, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 92
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v10, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 94
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v10, v2, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 95
    iget-object v2, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v10, v2, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    move-object v2, v7

    move-object v3, v10

    .line 98
    :goto_8c
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v13

    .line 99
    invoke-static {v2, v4, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 102
    invoke-static {v3, v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 105
    invoke-static {v13}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 107
    invoke-static {v8}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 110
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 114
    :cond_a7
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 118
    :cond_ac
    invoke-static {v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 120
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object p0

    .line 121
    invoke-static {v9, v13, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 124
    invoke-static {v9, v2, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 126
    invoke-static {p0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->negate([I[I)V

    .line 127
    invoke-static {v3, p0, v7}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 129
    invoke-static {v9, v9, p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v2

    .line 130
    invoke-static {v2, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    .line 132
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v2, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    .line 133
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v8, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 134
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v3, p0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 136
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    .line 137
    iget-object p0, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v9, p0, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 138
    iget-object p0, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0, v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiplyAddToExt([I[I[I)V

    .line 139
    iget-object p0, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v7, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 141
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p0, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    if-nez v11, :cond_f9

    .line 144
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v5, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v4, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    :cond_f9
    if-nez v12, :cond_102

    .line 148
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v4, p1, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    :cond_102
    const/4 p1, 0x1

    .line 151
    new-array p1, p1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object p0, p1, v0

    .line 153
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object p0
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 253
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 258
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 242
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 248
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    :cond_17
    :goto_17
    return-object p0
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 11

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p0

    .line 164
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 167
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 169
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 172
    :cond_1b
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object p0, p0, v0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 176
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v4

    .line 177
    iget-object v5, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 179
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v5

    .line 180
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 182
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v6

    .line 183
    iget-object v7, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v7, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 184
    invoke-static {v6, v6, v6}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v7

    .line 185
    invoke-static {v7, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    .line 188
    iget-object v3, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v4, v3, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/4 v3, 0x2

    const/4 v7, 0x6

    .line 189
    invoke-static {v7, v4, v3, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v3

    .line 190
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    .line 192
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v3

    const/4 v8, 0x3

    .line 193
    invoke-static {v7, v5, v8, v0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v7

    .line 194
    invoke-static {v7, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    .line 196
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v7, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    .line 197
    iget-object v5, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v6, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 198
    iget-object v5, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 199
    iget-object v5, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 201
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    .line 202
    iget-object v8, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v9, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v4, v8, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 203
    iget-object v4, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v4, v6, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 204
    iget-object v4, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v4, v3, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 206
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    .line 207
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->twice([I[I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_a2

    .line 210
    iget-object v2, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, p0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 213
    :cond_a2
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v3, v2, v0

    invoke-direct {p0, v1, v7, v5, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object p0
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    if-ne p0, p1, :cond_7

    .line 220
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 222
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    .line 226
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 228
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 231
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 232
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_22

    return-object p1

    .line 237
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
