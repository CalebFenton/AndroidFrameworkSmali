.class public Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
.super Ljava/lang/Object;
.source "FixedPointPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 12
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6
    .line 19
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    #@9
    .line 6
    return-void
.end method


# virtual methods
.method public getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 33
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    #@2
    return v0
.end method

.method public setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "preComp"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    .line 26
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    #@0
    .prologue
    .line 38
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    #@2
    .line 36
    return-void
.end method
