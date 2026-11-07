.class Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;
.super Ljava/lang/Object;
.source "EndoUtil.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# instance fields
.field final synthetic blacklist val$endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field final synthetic blacklist val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 3

    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 57
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object p0

    if-ne p0, p2, :cond_10

    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->getMappedPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 3

    .line 39
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 41
    :goto_8
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;->checkExisting(Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p1

    .line 46
    :cond_11
    iget-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-interface {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;-><init>()V

    .line 49
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->setEndomorphism(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->setMappedPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    return-object v0
.end method
