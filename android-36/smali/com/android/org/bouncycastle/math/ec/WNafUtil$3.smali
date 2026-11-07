.class Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# instance fields
.field final synthetic blacklist val$fromWNaf:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

.field final synthetic blacklist val$includeNegated:Z

.field final synthetic blacklist val$pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;ZLcom/android/org/bouncycastle/math/ec/ECPointMap;)V
    .registers 4

    .line 599
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    iput-boolean p2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .registers 6

    if-eqz p1, :cond_20

    .line 653
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    if-lt v0, p2, :cond_20

    .line 654
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result p2

    if-eqz p2, :cond_20

    if-eqz p4, :cond_1e

    .line 655
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z
    .registers 3

    if-eqz p1, :cond_7

    .line 660
    array-length p0, p1

    if-lt p0, p2, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 10

    .line 602
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 604
    :goto_8
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    array-length v1, v1

    .line 607
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->checkExisting(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 609
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    return-object p1

    .line 617
    :cond_21
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 619
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPromotionCountdown()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 621
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 624
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    invoke-interface {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 625
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 628
    :cond_40
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 629
    array-length v2, v1

    new-array v3, v2, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v4, 0x0

    move v5, v4

    .line 630
    :goto_4b
    array-length v6, v1

    if-ge v5, v6, :cond_5b

    .line 632
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    aget-object v7, v1, v5

    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 634
    :cond_5b
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 635
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    .line 637
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    if-eqz p0, :cond_77

    .line 639
    new-array p0, v2, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    :goto_67
    if-ge v4, v2, :cond_74

    .line 642
    aget-object v0, v3, v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 644
    :cond_74
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    :cond_77
    return-object p1
.end method
