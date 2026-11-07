.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "DSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "g"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;

    .line 75
    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 5
    .param p0, "q"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 58
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x2

    .line 65
    .local v0, "minWeight":I
    :goto_6
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 66
    .local v1, "x":Ljava/math/BigInteger;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v0, :cond_19

    .line 68
    return-object v1

    .line 70
    .end local v1    # "x":Ljava/math/BigInteger;
    :cond_19
    goto :goto_6
.end method


# virtual methods
.method public blacklist generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 7

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 47
    .local v0, "dsaParams":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 48
    .local v1, "x":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 50
    .local v2, "y":Ljava/math/BigInteger;
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-direct {v4, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-direct {v5, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 7
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 40
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v4, "DSAKeyGen"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 41
    return-void
.end method
