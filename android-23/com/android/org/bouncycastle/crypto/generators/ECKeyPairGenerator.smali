.class public Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source "ECKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    #@0
    .prologue
    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    #@5
    return-object v0
.end method

.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    #@0
    .prologue
    .line 45
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@5
    move-result-object v3

    #@6
    .line 46
    .local v3, "n":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    #@9
    move-result v4

    #@a
    .line 47
    .local v4, "nBitLength":I
    ushr-int/lit8 v2, v4, 0x2

    #@c
    .line 52
    .local v2, "minWeight":I
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    #@e
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    #@10
    invoke-direct {v1, v4, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    #@13
    .line 54
    .local v1, "d":Ljava/math/BigInteger;
    sget-object v5, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->TWO:Ljava/math/BigInteger;

    #@15
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@18
    move-result v5

    #@19
    if-ltz v5, :cond_0

    #@1b
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@1e
    move-result v5

    #@1f
    if-gez v5, :cond_0

    #@21
    .line 65
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    #@24
    move-result v5

    #@25
    if-lt v5, v2, :cond_0

    #@27
    .line 73
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->createBasePointMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@2a
    move-result-object v5

    #@2b
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@2d
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@30
    move-result-object v6

    #@31
    invoke-interface {v5, v6, v1}, Lcom/android/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@34
    move-result-object v0

    #@35
    .line 75
    .local v0, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v5, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    #@37
    .line 76
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@39
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@3b
    invoke-direct {v6, v0, v7}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@3e
    .line 77
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@40
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@42
    invoke-direct {v7, v1, v8}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@45
    .line 75
    invoke-direct {v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    #@48
    return-object v5
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 2
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 28
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@3
    .line 30
    .local v0, "ecP":Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    #@9
    .line 31
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@f
    .line 33
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    #@11
    if-nez v1, :cond_0

    #@13
    .line 35
    new-instance v1, Ljava/security/SecureRandom;

    #@15
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@18
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    #@1a
    .line 26
    :cond_0
    return-void
.end method
