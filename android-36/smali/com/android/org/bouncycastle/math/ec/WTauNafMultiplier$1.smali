.class Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;
.super Ljava/lang/Object;
.source "WTauNafMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# instance fields
.field final synthetic blacklist val$a:B

.field final synthetic blacklist val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)V
    .registers 3

    .line 78
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    iput-byte p2, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$a:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 3

    .line 81
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-eqz v0, :cond_5

    return-object p1

    .line 86
    :cond_5
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    iget-byte p0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$a:B

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V

    return-object p1
.end method
