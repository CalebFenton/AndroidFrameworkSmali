.class Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$1;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$confWidth:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$1;->val$confWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .registers 6
    .param p1, "existing"    # Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    .line 36
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 38
    .local v0, "existingWNaf":Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    :goto_9
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$1;->val$confWidth:I

    if-ne v2, v3, :cond_18

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 41
    return-object v0

    .line 44
    :cond_18
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 46
    .local v2, "result":Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 47
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$1;->val$confWidth:I

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setConfWidth(I)V

    .line 49
    if-eqz v0, :cond_43

    .line 51
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 52
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 53
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 54
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    .line 57
    :cond_43
    return-object v2
.end method
