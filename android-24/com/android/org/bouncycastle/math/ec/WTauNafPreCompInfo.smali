.class public Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
.super Ljava/lang/Object;
.source "WTauNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 13
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@6
    .line 7
    return-void
.end method


# virtual methods
.method public getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 1

    #@0
    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@2
    return-object v0
.end method

.method public setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V
    .locals 0
    .param p1, "preComp"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@0
    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@2
    .line 20
    return-void
.end method
