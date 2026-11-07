.class public Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WNafL2RMultiplier.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12

    .line 24
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result p0

    const/4 v0, 0x1

    .line 26
    invoke-static {p1, p0, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result p0

    .line 31
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateCompactWindowNaf(ILjava/math/BigInteger;)[I

    move-result-object p2

    .line 33
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 35
    array-length v3, p2

    const v4, 0xffff

    if-le v3, v0, :cond_68

    add-int/lit8 v3, v3, -0x1

    .line 43
    aget p1, p2, v3

    shr-int/lit8 v5, p1, 0x10

    and-int/2addr p1, v4

    .line 46
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gez v5, :cond_3a

    move-object v5, v2

    goto :goto_3b

    :cond_3a
    move-object v5, v1

    :goto_3b
    shl-int/lit8 v7, v6, 0x2

    shl-int v8, v0, p0

    if-ge v7, v8, :cond_60

    .line 52
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v7

    rsub-int/lit8 v8, v7, 0x20

    sub-int v8, p0, v8

    rsub-int/lit8 v7, v7, 0x1f

    shl-int v7, v0, v7

    xor-int/2addr v6, v7

    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    shl-int/2addr v6, v8

    add-int/2addr v6, v0

    ushr-int/2addr p0, v0

    .line 60
    aget-object p0, v5, p0

    ushr-int/2addr v6, v0

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    sub-int/2addr p1, v8

    goto :goto_64

    :cond_60
    ushr-int/lit8 p0, v6, 0x1

    .line 68
    aget-object p0, v5, p0

    .line 71
    :goto_64
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    :cond_68
    :goto_68
    if-lez v3, :cond_86

    add-int/lit8 v3, v3, -0x1

    .line 76
    aget p0, p2, v3

    shr-int/lit8 v5, p0, 0x10

    and-int/2addr p0, v4

    .line 79
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gez v5, :cond_79

    move-object v5, v2

    goto :goto_7a

    :cond_79
    move-object v5, v1

    :goto_7a
    ushr-int/2addr v6, v0

    .line 81
    aget-object v5, v5, v6

    .line 83
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 84
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_68

    :cond_86
    return-object p1
.end method
