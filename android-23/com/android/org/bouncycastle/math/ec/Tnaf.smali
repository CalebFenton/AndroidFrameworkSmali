.class Lcom/android/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;

.field private static final MINUS_THREE:Ljava/math/BigInteger;

.field private static final MINUS_TWO:Ljava/math/BigInteger;

.field public static final POW_2_WIDTH:B = 0x10t

.field public static final WIDTH:B = 0x4t

.field public static final alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x3

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 14
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@7
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    #@d
    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@f
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    #@15
    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    #@17
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    #@1d
    .line 39
    const/16 v0, 0x9

    #@1f
    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@21
    .line 40
    aput-object v4, v0, v7

    #@23
    .line 41
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@25
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@27
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@29
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2c
    aput-object v1, v0, v5

    #@2e
    const/4 v1, 0x2

    #@2f
    aput-object v4, v0, v1

    #@31
    .line 42
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@33
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    #@35
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    #@37
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3a
    aput-object v1, v0, v6

    #@3c
    aput-object v4, v0, v8

    #@3e
    .line 43
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@40
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    #@42
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    #@44
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@47
    const/4 v2, 0x5

    #@48
    aput-object v1, v0, v2

    #@4a
    const/4 v1, 0x6

    #@4b
    aput-object v4, v0, v1

    #@4d
    .line 44
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@4f
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@51
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    #@53
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@56
    const/4 v2, 0x7

    #@57
    aput-object v1, v0, v2

    #@59
    const/16 v1, 0x8

    #@5b
    aput-object v4, v0, v1

    #@5d
    .line 39
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@5f
    .line 51
    const/16 v0, 0x8

    #@61
    new-array v0, v0, [[B

    #@63
    .line 52
    aput-object v4, v0, v7

    #@65
    new-array v1, v5, [B

    #@67
    aput-byte v5, v1, v7

    #@69
    aput-object v1, v0, v5

    #@6b
    const/4 v1, 0x2

    #@6c
    aput-object v4, v0, v1

    #@6e
    new-array v1, v6, [B

    #@70
    fill-array-data v1, :array_0

    #@73
    aput-object v1, v0, v6

    #@75
    aput-object v4, v0, v8

    #@77
    new-array v1, v6, [B

    #@79
    fill-array-data v1, :array_1

    #@7c
    const/4 v2, 0x5

    #@7d
    aput-object v1, v0, v2

    #@7f
    const/4 v1, 0x6

    #@80
    aput-object v4, v0, v1

    #@82
    new-array v1, v8, [B

    #@84
    fill-array-data v1, :array_2

    #@87
    const/4 v2, 0x7

    #@88
    aput-object v1, v0, v2

    #@8a
    .line 51
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    #@8c
    .line 59
    const/16 v0, 0x9

    #@8e
    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@90
    aput-object v4, v0, v7

    #@92
    .line 60
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@94
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@96
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@98
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@9b
    aput-object v1, v0, v5

    #@9d
    const/4 v1, 0x2

    #@9e
    aput-object v4, v0, v1

    #@a0
    .line 61
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@a2
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    #@a4
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@a6
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@a9
    aput-object v1, v0, v6

    #@ab
    aput-object v4, v0, v8

    #@ad
    .line 62
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@af
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    #@b1
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@b3
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@b6
    const/4 v2, 0x5

    #@b7
    aput-object v1, v0, v2

    #@b9
    const/4 v1, 0x6

    #@ba
    aput-object v4, v0, v1

    #@bc
    .line 63
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@be
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@c0
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@c2
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@c5
    const/4 v2, 0x7

    #@c6
    aput-object v1, v0, v2

    #@c8
    const/16 v1, 0x8

    #@ca
    aput-object v4, v0, v1

    #@cc
    .line 59
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@ce
    .line 70
    const/16 v0, 0x8

    #@d0
    new-array v0, v0, [[B

    #@d2
    .line 71
    aput-object v4, v0, v7

    #@d4
    new-array v1, v5, [B

    #@d6
    aput-byte v5, v1, v7

    #@d8
    aput-object v1, v0, v5

    #@da
    const/4 v1, 0x2

    #@db
    aput-object v4, v0, v1

    #@dd
    new-array v1, v6, [B

    #@df
    fill-array-data v1, :array_3

    #@e2
    aput-object v1, v0, v6

    #@e4
    aput-object v4, v0, v8

    #@e6
    new-array v1, v6, [B

    #@e8
    fill-array-data v1, :array_4

    #@eb
    const/4 v2, 0x5

    #@ec
    aput-object v1, v0, v2

    #@ee
    const/4 v1, 0x6

    #@ef
    aput-object v4, v0, v1

    #@f1
    new-array v1, v8, [B

    #@f3
    fill-array-data v1, :array_5

    #@f6
    const/4 v2, 0x7

    #@f7
    aput-object v1, v0, v2

    #@f9
    .line 70
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    #@fb
    .line 12
    return-void

    #@fc
    .line 52
    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    #@102
    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    #@108
    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    #@10e
    .line 71
    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    #@114
    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    #@11a
    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 8
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "vm"    # Ljava/math/BigInteger;
    .param p3, "a"    # B
    .param p4, "m"    # I
    .param p5, "c"    # I

    #@0
    .prologue
    .line 286
    add-int/lit8 v7, p4, 0x5

    #@2
    div-int/lit8 v7, v7, 0x2

    #@4
    add-int v0, v7, p5

    #@6
    .line 287
    .local v0, "_k":I
    sub-int v7, p4, v0

    #@8
    add-int/lit8 v7, v7, -0x2

    #@a
    add-int/2addr v7, p3

    #@b
    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@e
    move-result-object v6

    #@f
    .line 289
    .local v6, "ns":Ljava/math/BigInteger;
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@12
    move-result-object v1

    #@13
    .line 291
    .local v1, "gs":Ljava/math/BigInteger;
    invoke-virtual {v1, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@16
    move-result-object v3

    #@17
    .line 293
    .local v3, "hs":Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1a
    move-result-object v4

    #@1b
    .line 295
    .local v4, "js":Ljava/math/BigInteger;
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1e
    move-result-object v2

    #@1f
    .line 296
    .local v2, "gsPlusJs":Ljava/math/BigInteger;
    sub-int v7, v0, p5

    #@21
    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@24
    move-result-object v5

    #@25
    .line 297
    .local v5, "ls":Ljava/math/BigInteger;
    sub-int v7, v0, p5

    #@27
    add-int/lit8 v7, v7, -0x1

    #@29
    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->testBit(I)Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_0

    #@2f
    .line 300
    sget-object v7, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@31
    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@34
    move-result-object v5

    #@35
    .line 303
    :cond_0
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@37
    invoke-direct {v7, v5, p5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@3a
    return-object v7
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 9
    .param p0, "mu"    # B
    .param p1, "k"    # I
    .param p2, "doV"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 439
    if-eq p0, v8, :cond_0

    #@3
    const/4 v6, -0x1

    #@4
    if-eq p0, v6, :cond_0

    #@6
    .line 441
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v7, "mu must be 1 or -1"

    #@b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    .line 448
    :cond_0
    if-eqz p2, :cond_1

    #@11
    .line 450
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@13
    .line 451
    .local v3, "u0":Ljava/math/BigInteger;
    int-to-long v6, p0

    #@14
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@17
    move-result-object v4

    #@18
    .line 459
    .local v4, "u1":Ljava/math/BigInteger;
    :goto_0
    const/4 v0, 0x1

    #@19
    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_3

    #@1b
    .line 462
    const/4 v2, 0x0

    #@1c
    .line 463
    .local v2, "s":Ljava/math/BigInteger;
    if-ne p0, v8, :cond_2

    #@1e
    .line 465
    move-object v2, v4

    #@1f
    .line 473
    .local v2, "s":Ljava/math/BigInteger;
    :goto_2
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@26
    move-result-object v5

    #@27
    .line 474
    .local v5, "u2":Ljava/math/BigInteger;
    move-object v3, v4

    #@28
    .line 475
    move-object v4, v5

    #@29
    .line 459
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 455
    .end local v0    # "i":I
    .end local v2    # "s":Ljava/math/BigInteger;
    .end local v3    # "u0":Ljava/math/BigInteger;
    .end local v4    # "u1":Ljava/math/BigInteger;
    .end local v5    # "u2":Ljava/math/BigInteger;
    :cond_1
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@2e
    .line 456
    .restart local v3    # "u0":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@30
    .restart local v4    # "u1":Ljava/math/BigInteger;
    goto :goto_0

    #@31
    .line 470
    .restart local v0    # "i":I
    .local v2, "s":Ljava/math/BigInteger;
    :cond_2
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@34
    move-result-object v2

    #@35
    .local v2, "s":Ljava/math/BigInteger;
    goto :goto_2

    #@36
    .line 480
    .end local v2    # "s":Ljava/math/BigInteger;
    :cond_3
    const/4 v6, 0x2

    #@37
    new-array v1, v6, [Ljava/math/BigInteger;

    #@39
    const/4 v6, 0x0

    #@3a
    aput-object v3, v1, v6

    #@3c
    aput-object v4, v1, v8

    #@3e
    .line 481
    .local v1, "retVal":[Ljava/math/BigInteger;
    return-object v1
.end method

.method public static getMu(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)B
    .locals 2
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@0
    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "No Koblitz curve (ABC), TNAF multiplication not possible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 417
    const/4 v0, -0x1

    #@1a
    return v0

    #@1b
    .line 420
    :cond_1
    const/4 v0, 0x1

    #@1c
    return v0
.end method

.method public static getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 5
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "a"    # B

    #@0
    .prologue
    .line 800
    const/16 v4, 0x10

    #@2
    new-array v3, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@4
    .line 801
    .local v3, "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    const/4 v4, 0x1

    #@5
    aput-object p0, v3, v4

    #@7
    .line 803
    if-nez p1, :cond_0

    #@9
    .line 805
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    #@b
    .line 813
    .local v0, "alphaTnaf":[[B
    :goto_0
    array-length v2, v0

    #@c
    .line 814
    .local v2, "precompLen":I
    const/4 v1, 0x3

    #@d
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@f
    .line 816
    aget-object v4, v0, v1

    #@11
    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@14
    move-result-object v4

    #@15
    aput-object v4, v3, v1

    #@17
    .line 814
    add-int/lit8 v1, v1, 0x2

    #@19
    goto :goto_1

    #@1a
    .line 810
    .end local v0    # "alphaTnaf":[[B
    .end local v1    # "i":I
    .end local v2    # "precompLen":I
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    #@1c
    .restart local v0    # "alphaTnaf":[[B
    goto :goto_0

    #@1d
    .line 819
    .restart local v1    # "i":I
    .restart local v2    # "precompLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@24
    .line 821
    return-object v3
.end method

.method protected static getShiftsForCofactor(Ljava/math/BigInteger;)I
    .locals 2
    .param p0, "h"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 555
    if-eqz p0, :cond_1

    #@2
    .line 557
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@4
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 559
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 561
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    #@e
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 563
    const/4 v0, 0x2

    #@15
    return v0

    #@16
    .line 567
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "h (Cofactor) must be 2 or 4"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
.end method

.method public static getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;
    .locals 12
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 530
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    #@5
    move-result v8

    #@6
    if-nez v8, :cond_0

    #@8
    .line 532
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v9, "si is defined for Koblitz curves only"

    #@d
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v8

    #@11
    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    #@14
    move-result v4

    #@15
    .line 536
    .local v4, "m":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@18
    move-result-object v8

    #@19
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    #@20
    move-result v0

    #@21
    .line 537
    .local v0, "a":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    #@24
    move-result v5

    #@25
    .line 538
    .local v5, "mu":B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getCofactor()Ljava/math/BigInteger;

    #@28
    move-result-object v8

    #@29
    invoke-static {v8}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    #@2c
    move-result v6

    #@2d
    .line 539
    .local v6, "shifts":I
    add-int/lit8 v8, v4, 0x3

    #@2f
    sub-int v3, v8, v0

    #@31
    .line 540
    .local v3, "index":I
    invoke-static {v5, v3, v10}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    #@34
    move-result-object v7

    #@35
    .line 541
    .local v7, "ui":[Ljava/math/BigInteger;
    if-ne v5, v11, :cond_1

    #@37
    .line 543
    aget-object v8, v7, v10

    #@39
    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@3c
    move-result-object v8

    #@3d
    aput-object v8, v7, v10

    #@3f
    .line 544
    aget-object v8, v7, v11

    #@41
    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@44
    move-result-object v8

    #@45
    aput-object v8, v7, v11

    #@47
    .line 547
    :cond_1
    sget-object v8, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@49
    aget-object v9, v7, v11

    #@4b
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@52
    move-result-object v1

    #@53
    .line 548
    .local v1, "dividend0":Ljava/math/BigInteger;
    sget-object v8, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@55
    aget-object v9, v7, v10

    #@57
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@62
    move-result-object v2

    #@63
    .line 550
    .local v2, "dividend1":Ljava/math/BigInteger;
    const/4 v8, 0x2

    #@64
    new-array v8, v8, [Ljava/math/BigInteger;

    #@66
    aput-object v1, v8, v10

    #@68
    aput-object v2, v8, v11

    #@6a
    return-object v8
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .locals 7
    .param p0, "mu"    # B
    .param p1, "w"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 494
    const/4 v4, 0x4

    #@3
    if-ne p1, v4, :cond_1

    #@5
    .line 496
    if-ne p0, v6, :cond_0

    #@7
    .line 498
    const-wide/16 v4, 0x6

    #@9
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@c
    move-result-object v4

    #@d
    return-object v4

    #@e
    .line 503
    :cond_0
    const-wide/16 v4, 0xa

    #@10
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@13
    move-result-object v4

    #@14
    return-object v4

    #@15
    .line 509
    :cond_1
    invoke-static {p0, p1, v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    #@18
    move-result-object v3

    #@19
    .line 510
    .local v3, "us":[Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@1b
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@1e
    move-result-object v1

    #@1f
    .line 511
    .local v1, "twoToW":Ljava/math/BigInteger;
    aget-object v4, v3, v6

    #@21
    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@24
    move-result-object v2

    #@25
    .line 513
    .local v2, "u1invert":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@27
    aget-object v5, v3, v5

    #@29
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@34
    move-result-object v0

    #@35
    .line 516
    .local v0, "tw":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 5
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "u"    # [B

    #@0
    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@6
    .line 670
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@c
    .line 671
    .local v2, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    array-length v3, p1

    #@d
    add-int/lit8 v1, v3, -0x1

    #@f
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@11
    .line 673
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@14
    move-result-object v2

    #@15
    .line 674
    aget-byte v3, p1, v1

    #@17
    const/4 v4, 0x1

    #@18
    if-ne v3, v4, :cond_1

    #@1a
    .line 676
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@1d
    move-result-object v2

    #@1e
    .line 671
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0

    #@21
    .line 678
    :cond_1
    aget-byte v3, p1, v1

    #@23
    const/4 v4, -0x1

    #@24
    if-ne v3, v4, :cond_0

    #@26
    .line 680
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@29
    move-result-object v2

    #@2a
    goto :goto_1

    #@2b
    .line 683
    :cond_2
    return-object v2
.end method

.method public static multiplyRTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 8
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v6

    #@4
    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@6
    .line 629
    .local v6, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    #@9
    move-result v1

    #@a
    .line 630
    .local v1, "m":I
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@15
    move-result v0

    #@16
    int-to-byte v2, v0

    #@17
    .line 631
    .local v2, "a":B
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    #@1a
    move-result v4

    #@1b
    .line 632
    .local v4, "mu":B
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    #@1e
    move-result-object v3

    #@1f
    .line 633
    .local v3, "s":[Ljava/math/BigInteger;
    const/16 v5, 0xa

    #@21
    move-object v0, p1

    #@22
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@25
    move-result-object v7

    #@26
    .line 635
    .local v7, "rho":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public static multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 4
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@0
    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@6
    .line 650
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    #@9
    move-result v1

    #@a
    .line 651
    .local v1, "mu":B
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    #@d
    move-result-object v3

    #@e
    .line 653
    .local v3, "u":[B
    invoke-static {p0, v3}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@11
    move-result-object v2

    #@12
    .line 655
    .local v2, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    return-object v2
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 6
    .param p0, "mu"    # B
    .param p1, "u"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "v"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 129
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@4
    move-result-object v1

    #@5
    .line 132
    .local v1, "s1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@8
    move-result-object v2

    #@9
    .line 135
    .local v2, "s2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p2, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@10
    move-result-object v3

    #@11
    .line 137
    .local v3, "s3":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne p0, v5, :cond_0

    #@13
    .line 139
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@1a
    move-result-object v0

    #@1b
    .line 150
    .local v0, "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_0
    return-object v0

    #@1c
    .line 141
    .end local v0    # "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_0
    const/4 v4, -0x1

    #@1d
    if-ne p0, v4, :cond_1

    #@1f
    .line 143
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@26
    move-result-object v0

    #@27
    .restart local v0    # "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_0

    #@28
    .line 147
    .end local v0    # "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v5, "mu must be 1 or -1"

    #@2d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v4
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 87
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@3
    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@5
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8
    move-result-object v1

    #@9
    .line 90
    .local v1, "s1":Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@b
    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@d
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@10
    move-result-object v2

    #@11
    .line 93
    .local v2, "s2":Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@13
    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@15
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@1c
    move-result-object v3

    #@1d
    .line 95
    .local v3, "s3":Ljava/math/BigInteger;
    if-ne p0, v6, :cond_0

    #@1f
    .line 97
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@26
    move-result-object v0

    #@27
    .line 108
    .local v0, "norm":Ljava/math/BigInteger;
    :goto_0
    return-object v0

    #@28
    .line 99
    .end local v0    # "norm":Ljava/math/BigInteger;
    :cond_0
    const/4 v4, -0x1

    #@29
    if-ne p0, v4, :cond_1

    #@2b
    .line 101
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@32
    move-result-object v0

    #@33
    .restart local v0    # "norm":Ljava/math/BigInteger;
    goto :goto_0

    #@34
    .line 105
    .end local v0    # "norm":Ljava/math/BigInteger;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@36
    const-string/jumbo v5, "mu must be 1 or -1"

    #@39
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v4
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .locals 15
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "m"    # I
    .param p2, "a"    # B
    .param p3, "s"    # [Ljava/math/BigInteger;
    .param p4, "mu"    # B
    .param p5, "c"    # B

    #@0
    .prologue
    .line 588
    const/4 v2, 0x1

    #@1
    move/from16 v0, p4

    #@3
    if-ne v0, v2, :cond_0

    #@5
    .line 590
    const/4 v2, 0x0

    #@6
    aget-object v2, p3, v2

    #@8
    const/4 v3, 0x1

    #@9
    aget-object v3, p3, v3

    #@b
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@e
    move-result-object v8

    #@f
    .line 597
    .local v8, "d0":Ljava/math/BigInteger;
    :goto_0
    const/4 v2, 0x1

    #@10
    move/from16 v0, p4

    #@12
    move/from16 v1, p1

    #@14
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    #@17
    move-result-object v14

    #@18
    .line 598
    .local v14, "v":[Ljava/math/BigInteger;
    const/4 v2, 0x1

    #@19
    aget-object v4, v14, v2

    #@1b
    .line 601
    .local v4, "vm":Ljava/math/BigInteger;
    const/4 v2, 0x0

    #@1c
    aget-object v3, p3, v2

    #@1e
    move-object v2, p0

    #@1f
    move/from16 v5, p2

    #@21
    move/from16 v6, p1

    #@23
    move/from16 v7, p5

    #@25
    .line 600
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@28
    move-result-object v9

    #@29
    .line 604
    .local v9, "lambda0":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v2, 0x1

    #@2a
    aget-object v3, p3, v2

    #@2c
    move-object v2, p0

    #@2d
    move/from16 v5, p2

    #@2f
    move/from16 v6, p1

    #@31
    move/from16 v7, p5

    #@33
    .line 603
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@36
    move-result-object v10

    #@37
    .line 606
    .local v10, "lambda1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    move/from16 v0, p4

    #@39
    invoke-static {v9, v10, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@3c
    move-result-object v11

    #@3d
    .line 609
    .local v11, "q":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    iget-object v2, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@3f
    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@46
    move-result-object v2

    #@47
    .line 610
    const-wide/16 v6, 0x2

    #@49
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@4c
    move-result-object v3

    #@4d
    const/4 v5, 0x1

    #@4e
    aget-object v5, p3, v5

    #@50
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@53
    move-result-object v3

    #@54
    iget-object v5, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@56
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@59
    move-result-object v3

    #@5a
    .line 609
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5d
    move-result-object v12

    #@5e
    .line 613
    .local v12, "r0":Ljava/math/BigInteger;
    const/4 v2, 0x1

    #@5f
    aget-object v2, p3, v2

    #@61
    iget-object v3, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@63
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@66
    move-result-object v2

    #@67
    const/4 v3, 0x0

    #@68
    aget-object v3, p3, v3

    #@6a
    iget-object v5, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@6c
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@73
    move-result-object v13

    #@74
    .line 615
    .local v13, "r1":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@76
    invoke-direct {v2, v12, v13}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@79
    return-object v2

    #@7a
    .line 594
    .end local v4    # "vm":Ljava/math/BigInteger;
    .end local v8    # "d0":Ljava/math/BigInteger;
    .end local v9    # "lambda0":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10    # "lambda1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v11    # "q":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .end local v12    # "r0":Ljava/math/BigInteger;
    .end local v13    # "r1":Ljava/math/BigInteger;
    .end local v14    # "v":[Ljava/math/BigInteger;
    :cond_0
    const/4 v2, 0x0

    #@7b
    aget-object v2, p3, v2

    #@7d
    const/4 v3, 0x1

    #@7e
    aget-object v3, p3, v3

    #@80
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@83
    move-result-object v8

    #@84
    .restart local v8    # "d0":Ljava/math/BigInteger;
    goto :goto_0
.end method

.method public static round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .locals 18
    .param p0, "lambda0"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p1, "lambda1"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "mu"    # B

    #@0
    .prologue
    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    #@3
    move-result v14

    #@4
    .line 170
    .local v14, "scale":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    #@7
    move-result v16

    #@8
    move/from16 v0, v16

    #@a
    if-eq v0, v14, :cond_0

    #@c
    .line 172
    new-instance v16, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v17, "lambda0 and lambda1 do not have same scale"

    #@11
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v16

    #@15
    .line 176
    :cond_0
    const/16 v16, 0x1

    #@17
    move/from16 v0, p2

    #@19
    move/from16 v1, v16

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    const/16 v16, -0x1

    #@1f
    move/from16 v0, p2

    #@21
    move/from16 v1, v16

    #@23
    if-eq v0, v1, :cond_1

    #@25
    .line 178
    new-instance v16, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v17, "mu must be 1 or -1"

    #@2a
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v16

    #@2e
    .line 181
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    #@31
    move-result-object v7

    #@32
    .line 182
    .local v7, "f0":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    #@35
    move-result-object v8

    #@36
    .line 184
    .local v8, "f1":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@38
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@3b
    move-result-object v5

    #@3c
    .line 185
    .local v5, "eta0":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    move-object/from16 v0, p1

    #@3e
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@41
    move-result-object v6

    #@42
    .line 188
    .local v6, "eta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v5, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@45
    move-result-object v4

    #@46
    .line 189
    .local v4, "eta":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/16 v16, 0x1

    #@48
    move/from16 v0, p2

    #@4a
    move/from16 v1, v16

    #@4c
    if-ne v0, v1, :cond_4

    #@4e
    .line 191
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@51
    move-result-object v4

    #@52
    .line 201
    :goto_0
    invoke-virtual {v6, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@55
    move-result-object v16

    #@56
    move-object/from16 v0, v16

    #@58
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@5b
    move-result-object v15

    #@5c
    .line 202
    .local v15, "threeEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v15, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@5f
    move-result-object v9

    #@60
    .line 205
    .local v9, "fourEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/16 v16, 0x1

    #@62
    move/from16 v0, p2

    #@64
    move/from16 v1, v16

    #@66
    if-ne v0, v1, :cond_5

    #@68
    .line 207
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@6b
    move-result-object v2

    #@6c
    .line 208
    .local v2, "check1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@6f
    move-result-object v3

    #@70
    .line 217
    .local v3, "check2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_1
    const/4 v10, 0x0

    #@71
    .line 218
    .local v10, "h0":B
    const/4 v11, 0x0

    #@72
    .line 221
    .local v11, "h1":B
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@74
    move-object/from16 v0, v16

    #@76
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    #@79
    move-result v16

    #@7a
    if-ltz v16, :cond_7

    #@7c
    .line 223
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    #@7e
    move-object/from16 v0, v16

    #@80
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    #@83
    move-result v16

    #@84
    if-gez v16, :cond_6

    #@86
    .line 225
    move/from16 v11, p2

    #@88
    .line 242
    .end local v11    # "h1":B
    :cond_2
    :goto_2
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    #@8a
    move-object/from16 v0, v16

    #@8c
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    #@8f
    move-result v16

    #@90
    if-gez v16, :cond_9

    #@92
    .line 244
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@94
    move-object/from16 v0, v16

    #@96
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    #@99
    move-result v16

    #@9a
    if-ltz v16, :cond_8

    #@9c
    .line 246
    move/from16 v0, p2

    #@9e
    neg-int v0, v0

    #@9f
    move/from16 v16, v0

    #@a1
    move/from16 v0, v16

    #@a3
    int-to-byte v11, v0

    #@a4
    .line 262
    :cond_3
    :goto_3
    int-to-long v0, v10

    #@a5
    move-wide/from16 v16, v0

    #@a7
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@aa
    move-result-object v16

    #@ab
    move-object/from16 v0, v16

    #@ad
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b0
    move-result-object v12

    #@b1
    .line 263
    .local v12, "q0":Ljava/math/BigInteger;
    int-to-long v0, v11

    #@b2
    move-wide/from16 v16, v0

    #@b4
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b7
    move-result-object v16

    #@b8
    move-object/from16 v0, v16

    #@ba
    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@bd
    move-result-object v13

    #@be
    .line 264
    .local v13, "q1":Ljava/math/BigInteger;
    new-instance v16, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@c0
    move-object/from16 v0, v16

    #@c2
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@c5
    return-object v16

    #@c6
    .line 196
    .end local v2    # "check1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v3    # "check2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9    # "fourEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10    # "h0":B
    .end local v12    # "q0":Ljava/math/BigInteger;
    .end local v13    # "q1":Ljava/math/BigInteger;
    .end local v15    # "threeEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_4
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@c9
    move-result-object v4

    #@ca
    goto :goto_0

    #@cb
    .line 213
    .restart local v9    # "fourEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .restart local v15    # "threeEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_5
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@ce
    move-result-object v2

    #@cf
    .line 214
    .restart local v2    # "check1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@d2
    move-result-object v3

    #@d3
    .restart local v3    # "check2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_1

    #@d4
    .line 229
    .restart local v10    # "h0":B
    .restart local v11    # "h1":B
    :cond_6
    const/4 v10, 0x1

    #@d5
    goto :goto_2

    #@d6
    .line 235
    :cond_7
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@d8
    move-object/from16 v0, v16

    #@da
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    #@dd
    move-result v16

    #@de
    if-ltz v16, :cond_2

    #@e0
    .line 237
    move/from16 v11, p2

    #@e2
    .local v11, "h1":B
    goto :goto_2

    #@e3
    .line 250
    .end local v11    # "h1":B
    :cond_8
    const/4 v10, -0x1

    #@e4
    goto :goto_3

    #@e5
    .line 256
    :cond_9
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    #@e7
    move-object/from16 v0, v16

    #@e9
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    #@ec
    move-result v16

    #@ed
    if-gez v16, :cond_3

    #@ef
    .line 258
    move/from16 v0, p2

    #@f1
    neg-int v0, v0

    #@f2
    move/from16 v16, v0

    #@f4
    move/from16 v0, v16

    #@f6
    int-to-byte v11, v0

    #@f7
    .restart local v11    # "h1":B
    goto :goto_3
.end method

.method public static tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 1
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@0
    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->tau()Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .locals 14
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@0
    .prologue
    .line 316
    const/4 v11, 0x1

    #@1
    if-eq p0, v11, :cond_0

    #@3
    const/4 v11, -0x1

    #@4
    if-eq p0, v11, :cond_0

    #@6
    .line 318
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v12, "mu must be 1 or -1"

    #@b
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v11

    #@f
    .line 321
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    #@12
    move-result-object v4

    #@13
    .line 324
    .local v4, "norm":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    #@16
    move-result v2

    #@17
    .line 327
    .local v2, "log2Norm":I
    const/16 v11, 0x1e

    #@19
    if-le v2, v11, :cond_1

    #@1b
    add-int/lit8 v3, v2, 0x4

    #@1d
    .line 330
    .local v3, "maxLength":I
    :goto_0
    new-array v10, v3, [B

    #@1f
    .line 331
    .local v10, "u":[B
    const/4 v0, 0x0

    #@20
    .line 334
    .local v0, "i":I
    const/4 v1, 0x0

    #@21
    .line 336
    .local v1, "length":I
    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@23
    .line 337
    .local v5, "r0":Ljava/math/BigInteger;
    iget-object v6, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@25
    .line 339
    .local v6, "r1":Ljava/math/BigInteger;
    :goto_1
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@27
    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v11

    #@2b
    if-eqz v11, :cond_2

    #@2d
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@2f
    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v11

    #@33
    :goto_2
    if-nez v11, :cond_6

    #@35
    .line 342
    const/4 v11, 0x0

    #@36
    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->testBit(I)Z

    #@39
    move-result v11

    #@3a
    if-eqz v11, :cond_4

    #@3c
    .line 344
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@3e
    const/4 v12, 0x1

    #@3f
    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@42
    move-result-object v12

    #@43
    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@46
    move-result-object v12

    #@47
    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    #@49
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4c
    move-result-object v12

    #@4d
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@50
    move-result-object v11

    #@51
    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    #@54
    move-result v11

    #@55
    int-to-byte v11, v11

    #@56
    aput-byte v11, v10, v0

    #@58
    .line 347
    aget-byte v11, v10, v0

    #@5a
    const/4 v12, 0x1

    #@5b
    if-ne v11, v12, :cond_3

    #@5d
    .line 349
    const/4 v11, 0x0

    #@5e
    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    #@61
    move-result-object v5

    #@62
    .line 356
    :goto_3
    move v1, v0

    #@63
    .line 363
    :goto_4
    move-object v8, v5

    #@64
    .line 364
    .local v8, "t":Ljava/math/BigInteger;
    const/4 v11, 0x1

    #@65
    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@68
    move-result-object v7

    #@69
    .line 365
    .local v7, "s":Ljava/math/BigInteger;
    const/4 v11, 0x1

    #@6a
    if-ne p0, v11, :cond_5

    #@6c
    .line 367
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@6f
    move-result-object v5

    #@70
    .line 375
    :goto_5
    const/4 v11, 0x1

    #@71
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@74
    move-result-object v11

    #@75
    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@78
    move-result-object v6

    #@79
    .line 376
    add-int/lit8 v0, v0, 0x1

    #@7b
    goto :goto_1

    #@7c
    .line 327
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v3    # "maxLength":I
    .end local v5    # "r0":Ljava/math/BigInteger;
    .end local v6    # "r1":Ljava/math/BigInteger;
    .end local v7    # "s":Ljava/math/BigInteger;
    .end local v8    # "t":Ljava/math/BigInteger;
    .end local v10    # "u":[B
    :cond_1
    const/16 v3, 0x22

    #@7e
    .restart local v3    # "maxLength":I
    goto :goto_0

    #@7f
    .line 339
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v5    # "r0":Ljava/math/BigInteger;
    .restart local v6    # "r1":Ljava/math/BigInteger;
    .restart local v10    # "u":[B
    :cond_2
    const/4 v11, 0x0

    #@80
    goto :goto_2

    #@81
    .line 354
    :cond_3
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@83
    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@86
    move-result-object v5

    #@87
    goto :goto_3

    #@88
    .line 360
    :cond_4
    const/4 v11, 0x0

    #@89
    aput-byte v11, v10, v0

    #@8b
    goto :goto_4

    #@8c
    .line 372
    .restart local v7    # "s":Ljava/math/BigInteger;
    .restart local v8    # "t":Ljava/math/BigInteger;
    :cond_5
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8f
    move-result-object v5

    #@90
    goto :goto_5

    #@91
    .line 379
    .end local v7    # "s":Ljava/math/BigInteger;
    .end local v8    # "t":Ljava/math/BigInteger;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@93
    .line 382
    new-array v9, v1, [B

    #@95
    .line 383
    .local v9, "tnaf":[B
    const/4 v11, 0x0

    #@96
    const/4 v12, 0x0

    #@97
    invoke-static {v10, v11, v9, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@9a
    .line 384
    return-object v9
.end method

.method public static tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .locals 15
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .param p2, "width"    # B
    .param p3, "pow2w"    # Ljava/math/BigInteger;
    .param p4, "tw"    # Ljava/math/BigInteger;
    .param p5, "alpha"    # [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@0
    .prologue
    .line 703
    const/4 v13, 0x1

    #@1
    if-eq p0, v13, :cond_0

    #@3
    const/4 v13, -0x1

    #@4
    if-eq p0, v13, :cond_0

    #@6
    .line 705
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v14, "mu must be 1 or -1"

    #@b
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v13

    #@f
    .line 708
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    #@12
    move-result-object v4

    #@13
    .line 711
    .local v4, "norm":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    #@16
    move-result v2

    #@17
    .line 714
    .local v2, "log2Norm":I
    const/16 v13, 0x1e

    #@19
    if-le v2, v13, :cond_2

    #@1b
    add-int/lit8 v13, v2, 0x4

    #@1d
    add-int v3, v13, p2

    #@1f
    .line 717
    .local v3, "maxLength":I
    :goto_0
    new-array v10, v3, [B

    #@21
    .line 720
    .local v10, "u":[B
    const/4 v13, 0x1

    #@22
    move-object/from16 v0, p3

    #@24
    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@27
    move-result-object v5

    #@28
    .line 723
    .local v5, "pow2wMin1":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    #@2a
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@2c
    .line 724
    .local v6, "r0":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    #@2e
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@30
    .line 725
    .local v7, "r1":Ljava/math/BigInteger;
    const/4 v1, 0x0

    #@31
    .line 728
    .local v1, "i":I
    :goto_1
    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@33
    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v13

    #@37
    if-eqz v13, :cond_3

    #@39
    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@3b
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v13

    #@3f
    :goto_2
    if-nez v13, :cond_8

    #@41
    .line 731
    const/4 v13, 0x0

    #@42
    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->testBit(I)Z

    #@45
    move-result v13

    #@46
    if-eqz v13, :cond_6

    #@48
    .line 735
    move-object/from16 v0, p4

    #@4a
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4d
    move-result-object v13

    #@4e
    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@51
    move-result-object v13

    #@52
    move-object/from16 v0, p3

    #@54
    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@57
    move-result-object v12

    #@58
    .line 739
    .local v12, "uUnMod":Ljava/math/BigInteger;
    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@5b
    move-result v13

    #@5c
    if-ltz v13, :cond_4

    #@5e
    .line 741
    move-object/from16 v0, p3

    #@60
    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@63
    move-result-object v13

    #@64
    invoke-virtual {v13}, Ljava/math/BigInteger;->intValue()I

    #@67
    move-result v13

    #@68
    int-to-byte v11, v13

    #@69
    .line 749
    .local v11, "uLocal":B
    :goto_3
    aput-byte v11, v10, v1

    #@6b
    .line 750
    const/4 v8, 0x1

    #@6c
    .line 751
    .local v8, "s":Z
    if-gez v11, :cond_1

    #@6e
    .line 753
    const/4 v8, 0x0

    #@6f
    .line 754
    neg-int v13, v11

    #@70
    int-to-byte v11, v13

    #@71
    .line 758
    :cond_1
    if-eqz v8, :cond_5

    #@73
    .line 760
    aget-object v13, p5, v11

    #@75
    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@77
    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7a
    move-result-object v6

    #@7b
    .line 761
    aget-object v13, p5, v11

    #@7d
    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@7f
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@82
    move-result-object v7

    #@83
    .line 774
    .end local v8    # "s":Z
    .end local v11    # "uLocal":B
    .end local v12    # "uUnMod":Ljava/math/BigInteger;
    :goto_4
    move-object v9, v6

    #@84
    .line 776
    .local v9, "t":Ljava/math/BigInteger;
    const/4 v13, 0x1

    #@85
    if-ne p0, v13, :cond_7

    #@87
    .line 778
    const/4 v13, 0x1

    #@88
    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@8b
    move-result-object v13

    #@8c
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8f
    move-result-object v6

    #@90
    .line 785
    :goto_5
    const/4 v13, 0x1

    #@91
    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@94
    move-result-object v13

    #@95
    invoke-virtual {v13}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@98
    move-result-object v7

    #@99
    .line 786
    add-int/lit8 v1, v1, 0x1

    #@9b
    goto :goto_1

    #@9c
    .line 714
    .end local v1    # "i":I
    .end local v3    # "maxLength":I
    .end local v5    # "pow2wMin1":Ljava/math/BigInteger;
    .end local v6    # "r0":Ljava/math/BigInteger;
    .end local v7    # "r1":Ljava/math/BigInteger;
    .end local v9    # "t":Ljava/math/BigInteger;
    .end local v10    # "u":[B
    :cond_2
    add-int/lit8 v3, p2, 0x22

    #@9e
    .restart local v3    # "maxLength":I
    goto :goto_0

    #@9f
    .line 728
    .restart local v1    # "i":I
    .restart local v5    # "pow2wMin1":Ljava/math/BigInteger;
    .restart local v6    # "r0":Ljava/math/BigInteger;
    .restart local v7    # "r1":Ljava/math/BigInteger;
    .restart local v10    # "u":[B
    :cond_3
    const/4 v13, 0x0

    #@a0
    goto :goto_2

    #@a1
    .line 745
    .restart local v12    # "uUnMod":Ljava/math/BigInteger;
    :cond_4
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    #@a4
    move-result v13

    #@a5
    int-to-byte v11, v13

    #@a6
    .restart local v11    # "uLocal":B
    goto :goto_3

    #@a7
    .line 765
    .restart local v8    # "s":Z
    :cond_5
    aget-object v13, p5, v11

    #@a9
    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@ab
    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@ae
    move-result-object v6

    #@af
    .line 766
    aget-object v13, p5, v11

    #@b1
    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@b3
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b6
    move-result-object v7

    #@b7
    goto :goto_4

    #@b8
    .line 771
    .end local v8    # "s":Z
    .end local v11    # "uLocal":B
    .end local v12    # "uUnMod":Ljava/math/BigInteger;
    :cond_6
    const/4 v13, 0x0

    #@b9
    aput-byte v13, v10, v1

    #@bb
    goto :goto_4

    #@bc
    .line 783
    .restart local v9    # "t":Ljava/math/BigInteger;
    :cond_7
    const/4 v13, 0x1

    #@bd
    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@c0
    move-result-object v13

    #@c1
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@c4
    move-result-object v6

    #@c5
    goto :goto_5

    #@c6
    .line 788
    .end local v9    # "t":Ljava/math/BigInteger;
    :cond_8
    return-object v10
.end method
