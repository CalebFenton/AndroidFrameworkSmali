.class public Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;
.super Ljava/lang/Object;
.source "WTauNafPreCompInfo.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected blacklist preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-void
.end method


# virtual methods
.method public blacklist getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v0
.end method

.method public blacklist setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V
    .registers 2
    .param p1, "preComp"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 24
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 25
    return-void
.end method
