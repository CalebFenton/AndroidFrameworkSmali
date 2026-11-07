.class public Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final blacklist curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field protected final blacklist glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "glvEndomorphism"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 18
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    .line 19
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 24
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 25
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 26
    return-void

    .line 21
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need curve with known group order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 9
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .line 30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 35
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 36
    .local v0, "n":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 37
    .local v1, "ab":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .local v2, "a":Ljava/math/BigInteger;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 39
    .local v3, "b":Ljava/math/BigInteger;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 41
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 44
    :cond_33
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 46
    .local v4, "q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-static {p1, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 32
    .end local v0    # "n":Ljava/math/BigInteger;
    .end local v1    # "ab":[Ljava/math/BigInteger;
    .end local v2    # "a":Ljava/math/BigInteger;
    .end local v3    # "b":Ljava/math/BigInteger;
    .end local v4    # "q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
