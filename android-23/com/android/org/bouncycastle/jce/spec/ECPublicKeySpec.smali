.class public Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;
.super Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;
.source "ECPublicKeySpec.java"


# instance fields
.field private q:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 1
    .param p1, "q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@0
    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    #@3
    .line 25
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 27
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@f
    .line 21
    :goto_0
    return-void

    #@10
    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@12
    goto :goto_0
.end method


# virtual methods
.method public getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    return-object v0
.end method
