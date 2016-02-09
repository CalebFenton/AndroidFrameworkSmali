.class public Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;
.super Ljava/lang/Object;
.source "ECDHBasicAgreement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "pubKey"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 44
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@3
    .line 45
    .local v1, "pub":Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6
    move-result-object v2

    #@7
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@9
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@14
    move-result-object v0

    #@15
    .line 47
    .local v0, "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 49
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v3, "Infinity is not a valid agreement value for ECDH"

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@2b
    move-result-object v2

    #@2c
    return-object v2
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    #@d
    move-result v0

    #@e
    add-int/lit8 v0, v0, 0x7

    #@10
    div-int/lit8 v0, v0, 0x8

    #@12
    return v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 33
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@2
    .end local p1    # "key":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@4
    .line 31
    return-void
.end method
