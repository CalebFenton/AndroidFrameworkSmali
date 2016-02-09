.class public abstract Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.super Ljava/lang/Object;
.source "AbstractECMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 9
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v2

    #@4
    .line 10
    .local v2, "sign":I
    if-eqz v2, :cond_0

    #@6
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 15
    :cond_1
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p0, p1, v3}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;->multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1c
    move-result-object v0

    #@1d
    .line 16
    .local v0, "positive":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-lez v2, :cond_2

    #@1f
    move-object v1, v0

    #@20
    .line 22
    .local v1, "result":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@23
    move-result-object v3

    #@24
    return-object v3

    #@25
    .line 16
    .end local v1    # "result":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@28
    move-result-object v1

    #@29
    .restart local v1    # "result":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_0
.end method

.method protected abstract multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method
