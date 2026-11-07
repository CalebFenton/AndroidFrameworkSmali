.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# static fields
.field private static blacklist lock:Ljava/lang/Object;

.field private static blacklist params:Ljava/util/Hashtable;


# instance fields
.field blacklist engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

.field blacklist initialised:Z

.field blacklist param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

.field blacklist random:Ljava/security/SecureRandom;

.field blacklist strength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    const-string v0, "DH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    const/16 v0, 0x800

    .line 36
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    .line 37
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method private blacklist convertParams(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
    .registers 7

    .line 96
    new-instance p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p2

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    return-object p0
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 7

    .line 101
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_78

    .line 103
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 107
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_6b

    .line 111
    :cond_1d
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->convertParams(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_6b

    .line 119
    :cond_30
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_33
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 125
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_6a

    :catchall_46
    move-exception p0

    goto :goto_76

    .line 130
    :cond_48
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 132
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 134
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 136
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_33 .. :try_end_6b} :catchall_46

    .line 142
    :goto_6b
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    goto :goto_78

    .line 138
    :goto_76
    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_46

    throw p0

    .line 147
    :cond_78
    :goto_78
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 149
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 151
    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 3

    .line 49
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    .line 50
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 59
    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_20

    .line 63
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    .line 67
    :try_start_6
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->convertParams(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_c} :catch_15

    .line 74
    iget-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    return-void

    :catch_15
    move-exception p0

    .line 71
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 61
    :cond_20
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a DHParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
