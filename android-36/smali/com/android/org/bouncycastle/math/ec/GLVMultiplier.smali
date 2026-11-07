.class public Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final blacklist curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected final blacklist glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    if-eqz p1, :cond_10

    .line 19
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 25
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    return-void

    .line 21
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need curve with known group order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 35
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p2

    const/4 v0, 0x0

    .line 37
    aget-object v0, p2, v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    .line 39
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;->hasEfficientPointMap()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 41
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 44
    :cond_33
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 46
    invoke-static {p1, v0, p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 32
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
