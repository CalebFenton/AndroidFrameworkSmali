.class public Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected final glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .locals 2
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "glvEndomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    #@3
    .line 14
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    #@8
    move-result-object v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Need curve with known group order"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 19
    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@16
    .line 20
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@18
    .line 12
    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 25
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_0

    #@c
    .line 27
    new-instance v5, Ljava/lang/IllegalStateException;

    #@e
    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    #@11
    throw v5

    #@12
    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    #@19
    move-result-object v3

    #@1a
    .line 31
    .local v3, "n":Ljava/math/BigInteger;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@1c
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1f
    move-result-object v6

    #@20
    invoke-interface {v5, v6}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@23
    move-result-object v1

    #@24
    .line 32
    .local v1, "ab":[Ljava/math/BigInteger;
    const/4 v5, 0x0

    #@25
    aget-object v0, v1, v5

    #@27
    .local v0, "a":Ljava/math/BigInteger;
    const/4 v5, 0x1

    #@28
    aget-object v2, v1, v5

    #@2a
    .line 34
    .local v2, "b":Ljava/math/BigInteger;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@2c
    invoke-interface {v5}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    #@2f
    move-result-object v4

    #@30
    .line 35
    .local v4, "pointMap":Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@32
    invoke-interface {v5}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_1

    #@38
    .line 37
    invoke-static {p1, v0, v4, v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3b
    move-result-object v5

    #@3c
    return-object v5

    #@3d
    .line 40
    :cond_1
    invoke-interface {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@40
    move-result-object v5

    #@41
    invoke-static {p1, v0, v5, v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@44
    move-result-object v5

    #@45
    return-object v5
.end method
