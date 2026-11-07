.class public Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected blacklist confWidth:I

.field protected blacklist preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field protected blacklist preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field volatile blacklist promotionCountdown:I

.field protected blacklist twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field protected blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 11
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 25
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 31
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 33
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return-void
.end method


# virtual methods
.method blacklist decrementPromotionCountdown()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    .line 40
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    :cond_8
    return v0
.end method

.method public blacklist getConfWidth()I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    return p0
.end method

.method public blacklist getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object p0
.end method

.method public blacklist getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object p0
.end method

.method blacklist getPromotionCountdown()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    return p0
.end method

.method public blacklist getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object p0
.end method

.method public blacklist getWidth()I
    .registers 1

    .line 102
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return p0
.end method

.method public blacklist isPromoted()Z
    .registers 1

    .line 57
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    if-gtz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setConfWidth(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    return-void
.end method

.method public blacklist setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method public blacklist setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method blacklist setPromotionCountdown(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    return-void
.end method

.method public blacklist setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method public blacklist setWidth(I)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return-void
.end method
