.class public Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;
.super Ljava/lang/Object;
.source "ScaleXPointMap.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECPointMap;


# instance fields
.field protected final scale:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 9
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;->scale:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    .line 7
    return-void
.end method


# virtual methods
.method public map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;->scale:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
