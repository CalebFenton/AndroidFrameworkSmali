.class Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;
.super Ljava/lang/Object;
.source "EndoUtil.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field final synthetic blacklist val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Z
    .registers 4
    .param p1, "existingEndo"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;
    .param p2, "endomorphism"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 56
    if-eqz p1, :cond_10

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->getEndomorphism()Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v0

    if-ne v0, p2, :cond_10

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->getMappedPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 56
    :goto_11
    return v0
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .registers 6
    .param p1, "existing"    # Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    .line 39
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 41
    .local v0, "existingEndo":Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;
    :goto_9
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 43
    return-object v0

    .line 46
    :cond_12
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 48
    .local v1, "mappedPoint":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;-><init>()V

    .line 49
    .local v2, "result":Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)V

    .line 50
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->setMappedPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 51
    return-object v2
.end method
