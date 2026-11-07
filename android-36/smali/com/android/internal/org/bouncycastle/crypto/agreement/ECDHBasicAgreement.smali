.class public Lcom/android/internal/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;
.super Ljava/lang/Object;
.source "ECDHBasicAgreement.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist calculateAgreement(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .registers 10
    .param p1, "pubKey"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 53
    .local v0, "pub":Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    .line 54
    .local v1, "params":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 59
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    .line 62
    .local v2, "d":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 63
    .local v3, "Q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v4

    if-nez v4, :cond_6a

    .line 68
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    .line 69
    .local v4, "h":Ljava/math/BigInteger;
    sget-object v5, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 71
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getHInv()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 72
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->referenceMultiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 75
    :cond_4b
    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 76
    .local v5, "P":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v6

    if-nez v6, :cond_62

    .line 81
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    return-object v6

    .line 78
    :cond_62
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Infinity is not a valid agreement value for ECDH"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 65
    .end local v4    # "h":Ljava/math/BigInteger;
    .end local v5    # "P":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_6a
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Infinity is not a valid public key for ECDH"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    .end local v2    # "d":Ljava/math/BigInteger;
    .end local v3    # "Q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_72
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ECDH public key has wrong domain parameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 41
    const-string v0, "ECDH"

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 42
    return-void
.end method
