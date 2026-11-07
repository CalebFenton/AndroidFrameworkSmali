.class public Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
.super Ljava/lang/Object;
.source "WTauNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected blacklist preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-void
.end method


# virtual methods
.method public blacklist getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object p0
.end method

.method public blacklist setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-void
.end method
