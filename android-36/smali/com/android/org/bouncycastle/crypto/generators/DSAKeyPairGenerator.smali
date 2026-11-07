.class public Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "DSAKeyPairGenerator.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 31
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    .line 75
    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 5

    .line 58
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x2

    .line 65
    :cond_6
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v0, :cond_6

    return-object v1
.end method


# virtual methods
.method public blacklist generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    .line 48
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-direct {v3, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public blacklist init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 5

    .line 38
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object p0

    sget-object v1, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v2, "DSAKeyGen"

    invoke-direct {v0, v2, p1, p0, v1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method
