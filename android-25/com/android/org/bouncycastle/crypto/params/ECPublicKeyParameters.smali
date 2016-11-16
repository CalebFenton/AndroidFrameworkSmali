.class public Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;
.source "ECPublicKeyParameters.java"


# instance fields
.field Q:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 1
    .param p1, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@0
    .prologue
    .line 14
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@4
    .line 15
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->Q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a
    .line 12
    return-void
.end method


# virtual methods
.method public getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->Q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    return-object v0
.end method
