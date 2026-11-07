.class public Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source "ECKeyPairGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field private final blacklist name:Ljava/lang/String;

.field blacklist params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

.field blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    const-string v0, "ECKeyGen"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->name:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected blacklist createBasePointMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .line 98
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public blacklist generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 10

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 63
    .local v0, "n":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 64
    .local v1, "nBitLength":I
    ushr-int/lit8 v2, v1, 0x2

    .line 69
    .local v2, "minWeight":I
    :goto_c
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 71
    .local v3, "d":Ljava/math/BigInteger;
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->isOutOfRangeD(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 73
    goto :goto_c

    .line 76
    :cond_19
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v4

    if-ge v4, v2, :cond_20

    .line 78
    goto :goto_c

    .line 84
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->createBasePointMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 86
    .local v4, "Q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v6, v4, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v7, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 8
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 50
    .local v0, "ecP":Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 51
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 53
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 54
    return-void
.end method

.method protected blacklist isOutOfRangeD(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 4
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "n"    # Ljava/math/BigInteger;

    .line 93
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_11

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
