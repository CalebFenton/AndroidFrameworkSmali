.class public Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WTauNafMultiplier.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private static blacklist multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 8

    .line 74
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 75
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    .line 77
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;

    invoke-direct {v2, p0, v1}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)V

    const-string v1, "bc_wtnaf"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    .line 92
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    .line 95
    array-length v1, v0

    new-array v1, v1, [Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    const/4 v2, 0x0

    move v3, v2

    .line 96
    :goto_28
    array-length v4, v0

    if-ge v3, v4, :cond_38

    .line 98
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 103
    :cond_38
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 106
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    move v4, v2

    :goto_46
    if-ltz v3, :cond_68

    add-int/lit8 v4, v4, 0x1

    .line 109
    aget-byte v5, p1, v3

    if-eqz v5, :cond_65

    .line 112
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    if-lez v5, :cond_59

    ushr-int/lit8 v4, v5, 0x1

    .line 115
    aget-object v4, v0, v4

    goto :goto_5e

    :cond_59
    neg-int v4, v5

    ushr-int/lit8 v4, v4, 0x1

    aget-object v4, v1, v4

    .line 116
    :goto_5e
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move v4, v2

    :cond_65
    add-int/lit8 v3, v3, -0x1

    goto :goto_46

    :cond_68
    if-lez v4, :cond_6e

    .line 121
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    :cond_6e
    return-object p0
.end method

.method private blacklist multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 6

    if-nez p3, :cond_5

    .line 54
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    goto :goto_7

    :cond_5
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    :goto_7
    const/4 p3, 0x4

    .line 56
    invoke-static {p4, p3}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {p4, p2, p3, v0, p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;II[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object p0

    .line 60
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .line 26
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    if-eqz v0, :cond_27

    .line 32
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 33
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 34
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    .line 35
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v2

    const/16 v3, 0xa

    .line 37
    invoke-static {v0, p2, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object p2

    .line 39
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    return-object p0

    .line 28
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
