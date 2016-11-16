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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 7
    .param p1, "pubKey"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 48
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@2
    .end local p1    # "pubKey":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5
    move-result-object v3

    #@6
    .line 49
    .local v3, "peerPoint":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@8
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@f
    move-result-object v2

    #@10
    .line 50
    .local v2, "myCurve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_0

    #@16
    .line 51
    new-instance v5, Ljava/lang/IllegalStateException;

    #@18
    const-string/jumbo v6, "Infinity is not a valid public key for ECDH"

    #@1b
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v5

    #@1f
    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@26
    move-result-object v5

    #@27
    .line 55
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@2e
    move-result-object v6

    #@2f
    .line 54
    invoke-virtual {v2, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 60
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@39
    move-result-object v5

    #@3a
    .line 61
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@41
    move-result-object v6

    #@42
    .line 60
    invoke-virtual {v2, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@45
    move-result-object v4

    #@46
    .line 62
    .local v4, "pubPoint":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@48
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@53
    move-result-object v0

    #@54
    .line 65
    .local v0, "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@57
    move-result v5

    #@58
    if-eqz v5, :cond_1

    #@5a
    .line 67
    new-instance v5, Ljava/lang/IllegalStateException;

    #@5c
    const-string/jumbo v6, "Infinity is not a valid agreement value for ECDH"

    #@5f
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v5

    #@63
    .line 56
    .end local v0    # "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v4    # "pubPoint":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :catch_0
    move-exception v1

    #@64
    .line 57
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalStateException;

    #@66
    const-string/jumbo v6, "The peer public key must be on the curve for ECDH"

    #@69
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v5

    #@6d
    .line 70
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v4    # "pubPoint":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@74
    move-result-object v5

    #@75
    return-object v5
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

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
    .line 36
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@2
    .end local p1    # "key":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@4
    .line 34
    return-void
.end method
