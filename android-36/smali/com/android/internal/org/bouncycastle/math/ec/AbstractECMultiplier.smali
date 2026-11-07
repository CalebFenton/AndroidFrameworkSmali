.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.super Ljava/lang/Object;
.source "AbstractECMultiplier.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist checkResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 33
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .line 13
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    .line 14
    .local v0, "sign":I
    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_22

    .line 19
    :cond_d
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;->multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 20
    .local v1, "positive":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    if-lez v0, :cond_19

    move-object v2, v1

    goto :goto_1d

    :cond_19
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 26
    .local v2, "result":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_1d
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;->checkResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 16
    .end local v1    # "positive":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v2    # "result":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_22
    :goto_22
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method protected abstract blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method
