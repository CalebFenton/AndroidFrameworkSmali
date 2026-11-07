.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# static fields
.field private static blacklist lock:Ljava/lang/Object;

.field private static blacklist params:Ljava/util/Hashtable;


# instance fields
.field blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

.field blacklist initialised:Z

.field blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

.field blacklist random:Ljava/security/SecureRandom;

.field blacklist strength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    const-string v0, "DH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    .line 36
    const/16 v0, 0x800

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    .line 37
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    .line 43
    return-void
.end method

.method private blacklist convertParams(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
    .registers 9
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "dhParams"    # Ljavax/crypto/spec/DHParameterSpec;

    .line 96
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 8

    .line 101
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_7b

    .line 103
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 105
    .local v0, "paramStrength":Ljava/lang/Integer;
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 107
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_6d

    .line 111
    :cond_1d
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    .line 113
    .local v1, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    if-eqz v1, :cond_30

    .line 115
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->convertParams(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_6d

    .line 119
    :cond_30
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    :try_start_33
    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 125
    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_6c

    .line 130
    :cond_46
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 132
    .local v3, "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;
    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 134
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 136
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v3    # "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;
    :goto_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_33 .. :try_end_6d} :catchall_78

    .line 142
    .end local v1    # "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    :goto_6d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    goto :goto_7b

    .line 138
    .restart local v1    # "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    :catchall_78
    move-exception v3

    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v3

    .line 147
    .end local v0    # "paramStrength":Ljava/lang/Integer;
    .end local v1    # "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 148
    .local v0, "pair":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 149
    .local v1, "pub":Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 151
    .local v2, "priv":Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-direct {v4, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-direct {v5, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 4
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 49
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    .line 50
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    .line 52
    return-void
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 59
    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_24

    .line 63
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 67
    .local v0, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    :try_start_7
    invoke-direct {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->convertParams(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_d} :catch_19

    .line 72
    nop

    .line 74
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    .line 76
    return-void

    .line 69
    :catch_19
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v0    # "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_24
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a DHParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
