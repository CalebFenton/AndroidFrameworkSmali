.class public Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "FixedPointCombMultiplier.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12

    .line 15
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    move-result v0

    .line 18
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-gt v1, v0, :cond_55

    .line 29
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lcom/android/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 33
    div-int/2addr v0, v2

    .line 35
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    mul-int/2addr v2, v0

    .line 38
    invoke-static {v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_2b
    if-ge v4, v0, :cond_4c

    sub-int v5, v2, v4

    move v6, v3

    :goto_30
    if-ltz v5, :cond_41

    ushr-int/lit8 v7, v5, 0x5

    .line 47
    aget v7, p2, v7

    and-int/lit8 v8, v5, 0x1f

    ushr-int/2addr v7, v8

    ushr-int/lit8 v8, v7, 0x1

    xor-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x1

    xor-int/2addr v6, v7

    sub-int/2addr v5, v0

    goto :goto_30

    .line 53
    :cond_41
    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/math/ec/ECLookupTable;->lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 55
    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 58
    :cond_4c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 26
    :cond_55
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
