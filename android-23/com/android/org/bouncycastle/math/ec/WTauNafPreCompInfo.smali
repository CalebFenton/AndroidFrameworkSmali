.class public Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
.super Ljava/lang/Object;
.source "WTauNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 15
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@6
    .line 7
    return-void
.end method


# virtual methods
.method public getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2
    return-object v0
.end method

.method public setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)V
    .locals 0
    .param p1, "preComp"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@0
    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2
    .line 22
    return-void
.end method
