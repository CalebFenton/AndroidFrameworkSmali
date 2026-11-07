.class public Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WTauNafMultiplier.java"


# static fields
.field static final blacklist PRECOMP_NAME:Ljava/lang/String; = "bc_wtnaf"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private static blacklist multiplyFromWTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 13
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "u"    # [B

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 75
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    .line 77
    .local v1, "a":B
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier$1;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)V

    const-string v3, "bc_wtnaf"

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    .line 92
    .local v2, "preCompInfo":Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    .line 95
    .local v3, "pu":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    array-length v4, v3

    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 96
    .local v4, "puNeg":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    array-length v6, v3

    if-ge v5, v6, :cond_37

    .line 98
    aget-object v6, v3, v5

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    aput-object v6, v4, v5

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 103
    .end local v5    # "i":I
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 105
    .local v5, "q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v6, 0x0

    .line 106
    .local v6, "tauCount":I
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_45
    if-ltz v7, :cond_68

    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    aget-byte v8, p1, v7

    .line 110
    .local v8, "ui":I
    if-eqz v8, :cond_65

    .line 112
    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    .line 113
    const/4 v6, 0x0

    .line 115
    if-lez v8, :cond_59

    ushr-int/lit8 v9, v8, 0x1

    aget-object v9, v3, v9

    goto :goto_5e

    :cond_59
    neg-int v9, v8

    ushr-int/lit8 v9, v9, 0x1

    aget-object v9, v4, v9

    .line 116
    .local v9, "x":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_5e
    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    move-object v5, v10

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 106
    .end local v8    # "ui":I
    .end local v9    # "x":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_65
    add-int/lit8 v7, v7, -0x1

    goto :goto_45

    .line 119
    .end local v7    # "i":I
    :cond_68
    if-lez v6, :cond_6e

    .line 121
    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    .line 123
    :cond_6e
    return-object v5
.end method

.method private blacklist multiplyWTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;BB)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 9
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p2, "lambda"    # Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .param p3, "a"    # B
    .param p4, "mu"    # B

    .line 54
    if-nez p3, :cond_5

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 56
    .local v0, "alpha":[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    :goto_7
    const/4 v1, 0x4

    invoke-static {p4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v2

    .line 58
    .local v2, "tw":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-static {p4, p2, v1, v3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;II[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v1

    .line 60
    .local v1, "u":[B
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 9
    .param p1, "point"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .line 26
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    if-eqz v0, :cond_28

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 33
    .local v0, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 34
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->byteValue()B

    move-result v2

    .line 35
    .local v2, "a":B
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v3

    .line 37
    .local v3, "mu":B
    const/16 v4, 0xa

    invoke-static {v1, p2, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->partModReduction(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v4

    .line 39
    .local v4, "rho":Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    invoke-direct {p0, v0, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;BB)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    return-object v5

    .line 28
    .end local v0    # "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .end local v1    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    .end local v2    # "a":B
    .end local v3    # "mu":B
    .end local v4    # "rho":Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
