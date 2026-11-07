.class public Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "ECFieldElement.java"


# instance fields
.field blacklist q:Ljava/math/BigInteger;

.field blacklist r:Ljava/math/BigInteger;

.field blacklist x:Ljava/math/BigInteger;


# direct methods
.method constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4

    .line 124
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    .line 126
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    .line 127
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    return-void
.end method

.method static blacklist calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6

    .line 111
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x60

    if-lt v0, v1, :cond_23

    add-int/lit8 v1, v0, -0x40

    .line 114
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    .line 117
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist checkSqrt(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 319
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object p1

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 13

    .line 329
    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 330
    invoke-virtual {p3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    .line 334
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 335
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    move-object v7, p1

    move-object v5, v2

    move-object v6, v3

    move-object v3, v5

    :goto_12
    add-int/lit8 v8, v1, 0x1

    if-lt v0, v8, :cond_7b

    .line 342
    invoke-virtual {p0, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 344
    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 346
    invoke-virtual {p0, v2, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 347
    invoke-virtual {p0, v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 348
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 349
    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_78

    .line 354
    :cond_49
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 355
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 356
    invoke-virtual {v6, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object v7, v5

    move-object v5, v3

    move-object v3, v2

    :goto_78
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 360
    :cond_7b
    invoke-virtual {p0, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 361
    invoke-virtual {p0, p3, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 362
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 363
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 364
    invoke-virtual {p0, p3, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    move p3, v4

    :goto_a4
    if-gt p3, v1, :cond_c1

    .line 368
    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 369
    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 370
    invoke-virtual {p0, p2, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    goto :goto_a4

    :cond_c1
    const/4 p0, 0x2

    .line 373
    new-array p0, p0, [Ljava/math/BigInteger;

    const/4 p2, 0x0

    aput-object v0, p0, p2

    aput-object p1, p0, v4

    return-object p0
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 157
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_12

    .line 165
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 167
    :cond_12
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 198
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 478
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 483
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    .line 484
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public blacklist getFieldSize()I
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .line 230
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected blacklist modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    .line 378
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 379
    iget-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-ltz p2, :cond_13

    .line 381
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_13
    return-object p1
.end method

.method protected blacklist modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 389
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_14

    .line 391
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_14
    return-object p1
.end method

.method protected blacklist modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 409
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_d
    const/4 p0, 0x1

    .line 411
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 2

    .line 416
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    .line 421
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7

    .line 426
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    if-eqz v0, :cond_61

    .line 428
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_13

    .line 431
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 433
    :cond_13
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 434
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 435
    :goto_21
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_42

    .line 437
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 438
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    if-nez v2, :cond_3d

    .line 441
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 443
    :cond_3d
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_21

    .line 445
    :cond_42
    :goto_42
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_51

    .line 447
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_42

    :cond_51
    if-eqz v0, :cond_60

    .line 449
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_60

    .line 451
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_60
    return-object p1

    .line 456
    :cond_61
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    .line 463
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 464
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p2

    if-gez p2, :cond_11

    .line 466
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_11
    return-object p1
.end method

.method public blacklist multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 177
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p3

    .line 183
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 184
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 185
    new-instance p3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p3, v0, v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p3
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p3

    .line 191
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 192
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 193
    new-instance p3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p3, v0, v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p3
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 13

    .line 240
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_12b

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_12b

    .line 245
    :cond_e
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 253
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_41

    .line 255
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 256
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v4, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0

    .line 259
    :cond_41
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 261
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 263
    invoke-virtual {p0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 265
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 267
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0

    .line 271
    :cond_78
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 273
    invoke-virtual {p0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0

    .line 280
    :cond_98
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 281
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_b0

    return-object v5

    .line 286
    :cond_b0
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .line 287
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 289
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 292
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 298
    :cond_c9
    new-instance v9, Ljava/math/BigInteger;

    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    invoke-direct {v9, v10, v8}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 300
    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_c9

    .line 301
    invoke-virtual {v9, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v10, v0, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c9

    .line 303
    invoke-direct {p0, v9, v3, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v9

    .line 304
    aget-object v10, v9, v1

    .line 305
    aget-object v9, v9, v2

    .line 307
    invoke-virtual {p0, v9, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_114

    .line 309
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 312
    :cond_114
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c9

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c9

    return-object v5

    .line 247
    :cond_123
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "not done yet"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12b
    :goto_12b
    return-object p0
.end method

.method public blacklist square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .line 208
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 221
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    .line 222
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 223
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 224
    new-instance p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p2, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 172
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    return-object p0
.end method
