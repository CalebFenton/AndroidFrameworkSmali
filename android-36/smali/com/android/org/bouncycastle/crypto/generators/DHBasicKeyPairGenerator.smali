.class public Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;
.super Ljava/lang/Object;
.source "DHBasicKeyPairGenerator.java"


# instance fields
.field private blacklist param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 5

    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 41
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    .line 43
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    .line 44
    invoke-virtual {v0, v1, p0}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 46
    new-instance v2, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public blacklist init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 5

    .line 33
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object p0

    sget-object v1, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v2, "DHBasicKeyGen"

    invoke-direct {v0, v2, p1, p0, v1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method
