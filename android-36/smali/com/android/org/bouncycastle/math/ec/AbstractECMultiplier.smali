.class public abstract Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.super Ljava/lang/Object;
.source "AbstractECMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist checkResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 33
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 13
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_21

    .line 14
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_21

    .line 19
    :cond_d
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;->multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    if-lez v0, :cond_18

    goto :goto_1c

    .line 20
    :cond_18
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 26
    :goto_1c
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;->checkResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 16
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method protected abstract blacklist multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method
