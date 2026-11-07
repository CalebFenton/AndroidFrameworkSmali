.class public abstract Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"


# direct methods
.method public static blacklist getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I
    .registers 2

    .line 15
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_d

    .line 16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_d
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public static blacklist precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    .registers 4

    .line 26
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;

    invoke-direct {v1, v0, p0}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    const-string v2, "bc_fixed_point"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    return-object p0
.end method
