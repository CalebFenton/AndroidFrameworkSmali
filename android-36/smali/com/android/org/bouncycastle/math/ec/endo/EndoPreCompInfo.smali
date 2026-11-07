.class public Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;
.super Ljava/lang/Object;
.source "EndoPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected blacklist endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist mappedPoint:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object p0
.end method

.method public blacklist getMappedPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object p0
.end method

.method public blacklist setEndomorphism(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-void
.end method

.method public blacklist setMappedPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method
