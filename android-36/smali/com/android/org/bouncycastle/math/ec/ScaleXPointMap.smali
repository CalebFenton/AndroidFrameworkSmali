.class public Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;
.super Ljava/lang/Object;
.source "ScaleXPointMap.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECPointMap;


# instance fields
.field protected final blacklist scale:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;->scale:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method


# virtual methods
.method public blacklist map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 18
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;->scale:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
