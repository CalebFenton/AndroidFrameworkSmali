.class public Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 110
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@7
    .line 108
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 115
    if-eqz p3, :cond_0

    #@5
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_1

    #@b
    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "x value invalid in Fp field element"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 115
    :cond_1
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@17
    move-result v0

    #@18
    if-gez v0, :cond_0

    #@1a
    .line 120
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@1c
    .line 121
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@1e
    .line 122
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@20
    .line 113
    return-void
.end method

.method static calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "p"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v0

    #@4
    .line 94
    .local v0, "bitLength":I
    const/16 v2, 0x60

    #@6
    if-lt v0, v2, :cond_0

    #@8
    .line 96
    add-int/lit8 v2, v0, -0x40

    #@a
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@d
    move-result-object v1

    #@e
    .line 97
    .local v1, "firstWord":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    #@11
    move-result-wide v2

    #@12
    const-wide/16 v4, -0x1

    #@14
    cmp-long v2, v2, v4

    #@16
    if-nez v2, :cond_0

    #@18
    .line 99
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->ONE:Ljava/math/BigInteger;

    #@1a
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 102
    .end local v1    # "firstWord":Ljava/math/BigInteger;
    :cond_0
    const/4 v2, 0x0

    #@24
    return-object v2
.end method

.method private checkSqrt(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "z"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 314
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .end local p1    # "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    return-object p1

    #@b
    .restart local p1    # "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    const/4 p1, 0x0

    #@c
    goto :goto_0
.end method

.method private lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "P"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Ljava/math/BigInteger;
    .param p3, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 324
    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    #@4
    move-result v6

    #@5
    .line 325
    .local v6, "n":I
    invoke-virtual {p3}, Ljava/math/BigInteger;->getLowestSetBit()I

    #@8
    move-result v7

    #@9
    .line 329
    .local v7, "s":I
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@b
    .line 330
    .local v2, "Uh":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@d
    .line 331
    .local v4, "Vl":Ljava/math/BigInteger;
    move-object v3, p1

    #@e
    .line 332
    .local v3, "Vh":Ljava/math/BigInteger;
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@10
    .line 333
    .local v1, "Ql":Ljava/math/BigInteger;
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@12
    .line 335
    .local v0, "Qh":Ljava/math/BigInteger;
    add-int/lit8 v5, v6, -0x1

    #@14
    .local v5, "j":I
    :goto_0
    add-int/lit8 v8, v7, 0x1

    #@16
    if-lt v5, v8, :cond_1

    #@18
    .line 337
    invoke-virtual {p0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1b
    move-result-object v1

    #@1c
    .line 339
    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_0

    #@22
    .line 341
    invoke-virtual {p0, v1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@25
    move-result-object v0

    #@26
    .line 342
    invoke-virtual {p0, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@29
    move-result-object v2

    #@2a
    .line 343
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@39
    move-result-object v4

    #@3a
    .line 344
    invoke-virtual {v3, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@49
    move-result-object v3

    #@4a
    .line 335
    :goto_1
    add-int/lit8 v5, v5, -0x1

    #@4c
    goto :goto_0

    #@4d
    .line 348
    :cond_0
    move-object v0, v1

    #@4e
    .line 349
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@59
    move-result-object v2

    #@5a
    .line 350
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@69
    move-result-object v3

    #@6a
    .line 351
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@6d
    move-result-object v8

    #@6e
    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@75
    move-result-object v8

    #@76
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@79
    move-result-object v4

    #@7a
    goto :goto_1

    #@7b
    .line 355
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7e
    move-result-object v1

    #@7f
    .line 356
    invoke-virtual {p0, v1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@82
    move-result-object v0

    #@83
    .line 357
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8e
    move-result-object v2

    #@8f
    .line 358
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@92
    move-result-object v8

    #@93
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@96
    move-result-object v9

    #@97
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9e
    move-result-object v4

    #@9f
    .line 359
    invoke-virtual {p0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a2
    move-result-object v1

    #@a3
    .line 361
    const/4 v5, 0x1

    #@a4
    :goto_2
    if-gt v5, v7, :cond_2

    #@a6
    .line 363
    invoke-virtual {p0, v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a9
    move-result-object v2

    #@aa
    .line 364
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@ad
    move-result-object v8

    #@ae
    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@b1
    move-result-object v9

    #@b2
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b5
    move-result-object v8

    #@b6
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b9
    move-result-object v4

    #@ba
    .line 365
    invoke-virtual {p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@bd
    move-result-object v1

    #@be
    .line 361
    add-int/lit8 v5, v5, 0x1

    #@c0
    goto :goto_2

    #@c1
    .line 368
    :cond_2
    const/4 v8, 0x2

    #@c2
    new-array v8, v8, [Ljava/math/BigInteger;

    #@c4
    const/4 v9, 0x0

    #@c5
    aput-object v2, v8, v9

    #@c7
    aput-object v4, v8, v10

    #@c9
    return-object v8
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 152
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p0, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@13
    return-object v0
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    #@0
    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@2
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@4
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7
    move-result-object v0

    #@8
    .line 158
    .local v0, "x2":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@a
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 160
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@12
    .line 162
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@14
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@16
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@18
    invoke-direct {v1, v2, v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1b
    return-object v1
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 193
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {p0, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@17
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 474
    if-ne p1, p0, :cond_0

    #@3
    .line 476
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 479
    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 481
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 484
    nop

    #@c
    nop

    #@d
    .line 485
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@f
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@11
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@19
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@1b
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    :cond_2
    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 137
    const-string/jumbo v0, "Fp"

    #@3
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@8
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    #@0
    .prologue
    .line 225
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@8
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@f
    return-object v0
.end method

.method protected modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "x1"    # Ljava/math/BigInteger;
    .param p2, "x2"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 373
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    .line 374
    .local v0, "x3":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@6
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@9
    move-result v1

    #@a
    if-ltz v1, :cond_0

    #@c
    .line 376
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@e
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    .line 378
    :cond_0
    return-object v0
.end method

.method protected modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 383
    const/4 v1, 0x1

    #@1
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@4
    move-result-object v0

    #@5
    .line 384
    .local v0, "_2x":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@7
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@a
    move-result v1

    #@b
    if-ltz v1, :cond_0

    #@d
    .line 386
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@f
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    .line 388
    :cond_0
    return-object v0
.end method

.method protected modHalf(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 393
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 395
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@9
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@c
    move-result-object p1

    #@d
    .line 397
    :cond_0
    const/4 v0, 0x1

    #@e
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method protected modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 402
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 404
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@9
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@c
    move-result-object p1

    #@d
    .line 406
    :cond_0
    const/4 v0, 0x1

    #@e
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method protected modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->getFieldSize()I

    #@3
    move-result v0

    #@4
    .line 412
    .local v0, "bits":I
    add-int/lit8 v5, v0, 0x1f

    #@6
    shr-int/lit8 v1, v5, 0x5

    #@8
    .line 413
    .local v1, "len":I
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@a
    invoke-static {v0, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    #@d
    move-result-object v3

    #@e
    .line 414
    .local v3, "p":[I
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    #@11
    move-result-object v2

    #@12
    .line 415
    .local v2, "n":[I
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@15
    move-result-object v4

    #@16
    .line 416
    .local v4, "z":[I
    invoke-static {v3, v2, v4}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@19
    .line 417
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    #@1c
    move-result-object v5

    #@1d
    return-object v5
.end method

.method protected modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "x1"    # Ljava/math/BigInteger;
    .param p2, "x2"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 422
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 427
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@3
    if-eqz v5, :cond_6

    #@5
    .line 429
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@8
    move-result v5

    #@9
    if-gez v5, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 430
    .local v0, "negative":Z
    :cond_0
    if-eqz v0, :cond_1

    #@e
    .line 432
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@11
    move-result-object p1

    #@12
    .line 434
    :cond_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@14
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    #@17
    move-result v1

    #@18
    .line 435
    .local v1, "qLen":I
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@1a
    sget-object v6, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@1c
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    .line 436
    .local v2, "rIsOne":Z
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@23
    move-result v5

    #@24
    add-int/lit8 v6, v1, 0x1

    #@26
    if-le v5, v6, :cond_3

    #@28
    .line 438
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@2b
    move-result-object v3

    #@2c
    .line 439
    .local v3, "u":Ljava/math/BigInteger;
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@33
    move-result-object v4

    #@34
    .line 440
    .local v4, "v":Ljava/math/BigInteger;
    if-nez v2, :cond_2

    #@36
    .line 442
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@38
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3b
    move-result-object v3

    #@3c
    .line 444
    :cond_2
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3f
    move-result-object p1

    #@40
    goto :goto_0

    #@41
    .line 446
    .end local v3    # "u":Ljava/math/BigInteger;
    .end local v4    # "v":Ljava/math/BigInteger;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@43
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@46
    move-result v5

    #@47
    if-ltz v5, :cond_4

    #@49
    .line 448
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@4b
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4e
    move-result-object p1

    #@4f
    goto :goto_1

    #@50
    .line 450
    :cond_4
    if-eqz v0, :cond_5

    #@52
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_5

    #@58
    .line 452
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@5a
    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5d
    move-result-object p1

    #@5e
    .line 459
    .end local v0    # "negative":Z
    .end local v1    # "qLen":I
    .end local v2    # "rIsOne":Z
    :cond_5
    :goto_2
    return-object p1

    #@5f
    .line 457
    :cond_6
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@61
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@64
    move-result-object p1

    #@65
    goto :goto_2
.end method

.method protected modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "x1"    # Ljava/math/BigInteger;
    .param p2, "x2"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 464
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    .line 465
    .local v0, "x3":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    #@7
    move-result v1

    #@8
    if-gez v1, :cond_0

    #@a
    .line 467
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@c
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f
    move-result-object v0

    #@10
    .line 469
    :cond_0
    return-object v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 172
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p0, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@13
    return-object v0
.end method

.method public multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 10
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@2
    .local v1, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@5
    move-result-object v2

    #@6
    .local v2, "bx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@9
    move-result-object v3

    #@a
    .local v3, "xx":Ljava/math/BigInteger;
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@d
    move-result-object v5

    #@e
    .line 178
    .local v5, "yx":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    .line 179
    .local v0, "ab":Ljava/math/BigInteger;
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@15
    move-result-object v4

    #@16
    .line 180
    .local v4, "xy":Ljava/math/BigInteger;
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@18
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@1a
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@1c
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1f
    move-result-object v9

    #@20
    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@23
    move-result-object v9

    #@24
    invoke-direct {v6, v7, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@27
    return-object v6
.end method

.method public multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 10
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@2
    .local v1, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@5
    move-result-object v2

    #@6
    .local v2, "bx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@9
    move-result-object v3

    #@a
    .local v3, "xx":Ljava/math/BigInteger;
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@d
    move-result-object v5

    #@e
    .line 186
    .local v5, "yx":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    .line 187
    .local v0, "ab":Ljava/math/BigInteger;
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@15
    move-result-object v4

    #@16
    .line 188
    .local v4, "xy":Ljava/math/BigInteger;
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@18
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@1a
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@1c
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1f
    move-result-object v9

    #@20
    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@23
    move-result-object v9

    #@24
    invoke-direct {v6, v7, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@27
    return-object v6
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;
    :goto_0
    return-object p0

    #@9
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@b
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@d
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@f
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@11
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@13
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1a
    move-object p0, v0

    #@1b
    goto :goto_0
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 25

    #@0
    .prologue
    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@3
    move-result v20

    #@4
    if-nez v20, :cond_0

    #@6
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@9
    move-result v20

    #@a
    if-eqz v20, :cond_1

    #@c
    .line 237
    :cond_0
    return-object p0

    #@d
    .line 240
    :cond_1
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@11
    move-object/from16 v20, v0

    #@13
    const/16 v21, 0x0

    #@15
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    #@18
    move-result v20

    #@19
    if-nez v20, :cond_2

    #@1b
    .line 242
    new-instance v20, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v21, "not done yet"

    #@20
    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v20

    #@24
    .line 248
    :cond_2
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@28
    move-object/from16 v20, v0

    #@2a
    const/16 v21, 0x1

    #@2c
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    #@2f
    move-result v20

    #@30
    if-eqz v20, :cond_3

    #@32
    .line 250
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@36
    move-object/from16 v20, v0

    #@38
    const/16 v21, 0x2

    #@3a
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@3d
    move-result-object v20

    #@3e
    sget-object v21, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@40
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@43
    move-result-object v8

    #@44
    .line 251
    .local v8, "e":Ljava/math/BigInteger;
    new-instance v20, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@4a
    move-object/from16 v21, v0

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@50
    move-object/from16 v22, v0

    #@52
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@56
    move-object/from16 v23, v0

    #@58
    move-object/from16 v0, p0

    #@5a
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@5c
    move-object/from16 v24, v0

    #@5e
    move-object/from16 v0, v23

    #@60
    move-object/from16 v1, v24

    #@62
    invoke-virtual {v0, v8, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@65
    move-result-object v23

    #@66
    invoke-direct/range {v20 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@69
    move-object/from16 v0, p0

    #@6b
    move-object/from16 v1, v20

    #@6d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@70
    move-result-object v20

    #@71
    return-object v20

    #@72
    .line 254
    .end local v8    # "e":Ljava/math/BigInteger;
    :cond_3
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@76
    move-object/from16 v20, v0

    #@78
    const/16 v21, 0x2

    #@7a
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    #@7d
    move-result v20

    #@7e
    if-eqz v20, :cond_5

    #@80
    .line 256
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@84
    move-object/from16 v20, v0

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@8a
    move-object/from16 v21, v0

    #@8c
    const/16 v22, 0x3

    #@8e
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@91
    move-result-object v21

    #@92
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@96
    move-object/from16 v22, v0

    #@98
    invoke-virtual/range {v20 .. v22}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9b
    move-result-object v15

    #@9c
    .line 257
    .local v15, "t1":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@a0
    move-object/from16 v20, v0

    #@a2
    move-object/from16 v0, p0

    #@a4
    move-object/from16 v1, v20

    #@a6
    invoke-virtual {v0, v15, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a9
    move-result-object v16

    #@aa
    .line 258
    .local v16, "t2":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@ac
    move-object/from16 v1, v16

    #@ae
    invoke-virtual {v0, v1, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b1
    move-result-object v17

    #@b2
    .line 260
    .local v17, "t3":Ljava/math/BigInteger;
    sget-object v20, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@b4
    move-object/from16 v0, v17

    #@b6
    move-object/from16 v1, v20

    #@b8
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v20

    #@bc
    if-eqz v20, :cond_4

    #@be
    .line 262
    new-instance v20, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@c4
    move-object/from16 v21, v0

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@ca
    move-object/from16 v22, v0

    #@cc
    move-object/from16 v0, v20

    #@ce
    move-object/from16 v1, v21

    #@d0
    move-object/from16 v2, v22

    #@d2
    move-object/from16 v3, v16

    #@d4
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@d7
    move-object/from16 v0, p0

    #@d9
    move-object/from16 v1, v20

    #@db
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@de
    move-result-object v20

    #@df
    return-object v20

    #@e0
    .line 266
    :cond_4
    sget-object v20, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@e6
    move-object/from16 v21, v0

    #@e8
    const/16 v22, 0x2

    #@ea
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@ed
    move-result-object v21

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@f2
    move-object/from16 v22, v0

    #@f4
    invoke-virtual/range {v20 .. v22}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f7
    move-result-object v18

    #@f8
    .line 268
    .local v18, "t4":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@fa
    move-object/from16 v1, v16

    #@fc
    move-object/from16 v2, v18

    #@fe
    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@101
    move-result-object v19

    #@102
    .line 270
    .local v19, "y":Ljava/math/BigInteger;
    new-instance v20, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@104
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@108
    move-object/from16 v21, v0

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@10e
    move-object/from16 v22, v0

    #@110
    move-object/from16 v0, v20

    #@112
    move-object/from16 v1, v21

    #@114
    move-object/from16 v2, v22

    #@116
    move-object/from16 v3, v19

    #@118
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@11b
    move-object/from16 v0, p0

    #@11d
    move-object/from16 v1, v20

    #@11f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@122
    move-result-object v20

    #@123
    return-object v20

    #@124
    .line 275
    .end local v15    # "t1":Ljava/math/BigInteger;
    .end local v16    # "t2":Ljava/math/BigInteger;
    .end local v17    # "t3":Ljava/math/BigInteger;
    .end local v18    # "t4":Ljava/math/BigInteger;
    .end local v19    # "y":Ljava/math/BigInteger;
    :cond_5
    move-object/from16 v0, p0

    #@126
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@128
    move-object/from16 v20, v0

    #@12a
    const/16 v21, 0x1

    #@12c
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@12f
    move-result-object v11

    #@130
    .line 276
    .local v11, "legendreExponent":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@134
    move-object/from16 v20, v0

    #@136
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@13a
    move-object/from16 v21, v0

    #@13c
    move-object/from16 v0, v20

    #@13e
    move-object/from16 v1, v21

    #@140
    invoke-virtual {v0, v11, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@143
    move-result-object v20

    #@144
    sget-object v21, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@146
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@149
    move-result v20

    #@14a
    if-nez v20, :cond_6

    #@14c
    .line 278
    const/16 v20, 0x0

    #@14e
    return-object v20

    #@14f
    .line 281
    :cond_6
    move-object/from16 v0, p0

    #@151
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@153
    .line 282
    .local v7, "X":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@155
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@158
    move-result-object v20

    #@159
    move-object/from16 v0, p0

    #@15b
    move-object/from16 v1, v20

    #@15d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@160
    move-result-object v9

    #@161
    .line 284
    .local v9, "fourX":Ljava/math/BigInteger;
    sget-object v20, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@163
    move-object/from16 v0, v20

    #@165
    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@168
    move-result-object v10

    #@169
    .local v10, "k":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@16d
    move-object/from16 v20, v0

    #@16f
    sget-object v21, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@171
    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@174
    move-result-object v12

    #@175
    .line 287
    .local v12, "qMinusOne":Ljava/math/BigInteger;
    new-instance v13, Ljava/util/Random;

    #@177
    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    #@17a
    .line 293
    .local v13, "rand":Ljava/util/Random;
    :cond_7
    new-instance v4, Ljava/math/BigInteger;

    #@17c
    move-object/from16 v0, p0

    #@17e
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@180
    move-object/from16 v20, v0

    #@182
    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->bitLength()I

    #@185
    move-result v20

    #@186
    move/from16 v0, v20

    #@188
    invoke-direct {v4, v0, v13}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    #@18b
    .line 295
    .local v4, "P":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@18d
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@18f
    move-object/from16 v20, v0

    #@191
    move-object/from16 v0, v20

    #@193
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@196
    move-result v20

    #@197
    if-gez v20, :cond_7

    #@199
    .line 296
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@19c
    move-result-object v20

    #@19d
    move-object/from16 v0, v20

    #@19f
    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1a2
    move-result-object v20

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    move-object/from16 v1, v20

    #@1a7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1aa
    move-result-object v20

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@1af
    move-object/from16 v21, v0

    #@1b1
    move-object/from16 v0, v20

    #@1b3
    move-object/from16 v1, v21

    #@1b5
    invoke-virtual {v0, v11, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1b8
    move-result-object v20

    #@1b9
    move-object/from16 v0, v20

    #@1bb
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1be
    move-result v20

    #@1bf
    if-eqz v20, :cond_7

    #@1c1
    .line 298
    move-object/from16 v0, p0

    #@1c3
    invoke-direct {v0, v4, v7, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@1c6
    move-result-object v14

    #@1c7
    .line 299
    .local v14, "result":[Ljava/math/BigInteger;
    const/16 v20, 0x0

    #@1c9
    aget-object v5, v14, v20

    #@1cb
    .line 300
    .local v5, "U":Ljava/math/BigInteger;
    const/16 v20, 0x1

    #@1cd
    aget-object v6, v14, v20

    #@1cf
    .line 302
    .local v6, "V":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@1d1
    invoke-virtual {v0, v6, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1d4
    move-result-object v20

    #@1d5
    move-object/from16 v0, v20

    #@1d7
    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1da
    move-result v20

    #@1db
    if-eqz v20, :cond_8

    #@1dd
    .line 304
    new-instance v20, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@1e3
    move-object/from16 v21, v0

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@1e9
    move-object/from16 v22, v0

    #@1eb
    move-object/from16 v0, p0

    #@1ed
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1f0
    move-result-object v23

    #@1f1
    invoke-direct/range {v20 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1f4
    return-object v20

    #@1f5
    .line 307
    :cond_8
    sget-object v20, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@1f7
    move-object/from16 v0, v20

    #@1f9
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1fc
    move-result v20

    #@1fd
    if-nez v20, :cond_7

    #@1ff
    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@202
    move-result v20

    #@203
    if-nez v20, :cond_7

    #@205
    .line 309
    const/16 v20, 0x0

    #@207
    return-object v20
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    #@0
    .prologue
    .line 203
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@8
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@a
    invoke-virtual {p0, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@11
    return-object v0
.end method

.method public squareMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@2
    .local v1, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@5
    move-result-object v2

    #@6
    .local v2, "xx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@9
    move-result-object v4

    #@a
    .line 209
    .local v4, "yx":Ljava/math/BigInteger;
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    .line 210
    .local v0, "aa":Ljava/math/BigInteger;
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11
    move-result-object v3

    #@12
    .line 211
    .local v3, "xy":Ljava/math/BigInteger;
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@14
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@16
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@18
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1f
    move-result-object v8

    #@20
    invoke-direct {v5, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@23
    return-object v5
.end method

.method public squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@2
    .local v1, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@5
    move-result-object v2

    #@6
    .local v2, "xx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@9
    move-result-object v4

    #@a
    .line 217
    .local v4, "yx":Ljava/math/BigInteger;
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    .line 218
    .local v0, "aa":Ljava/math/BigInteger;
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11
    move-result-object v3

    #@12
    .line 219
    .local v3, "xy":Ljava/math/BigInteger;
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@14
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@16
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@18
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1f
    move-result-object v8

    #@20
    invoke-direct {v5, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@23
    return-object v5
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 167
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p0, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@13
    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
