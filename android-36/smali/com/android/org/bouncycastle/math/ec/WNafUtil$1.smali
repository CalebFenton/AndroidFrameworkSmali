.class Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# instance fields
.field final synthetic blacklist val$confWidth:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$confWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 5

    .line 36
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 38
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$confWidth:I

    if-ne v1, v2, :cond_17

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    return-object p1

    .line 44
    :cond_17
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 46
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 47
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$confWidth:I

    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setConfWidth(I)V

    if-eqz p1, :cond_42

    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 52
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 54
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    :cond_42
    return-object v1
.end method
