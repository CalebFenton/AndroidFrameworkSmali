.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# static fields
.field private static blacklist lock:Ljava/lang/Object;

.field private static blacklist params:Ljava/util/Hashtable;


# instance fields
.field blacklist engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

.field blacklist initialised:Z

.field blacklist param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

.field blacklist random:Ljava/security/SecureRandom;

.field blacklist strength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    const-string v0, "DSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    const/16 v0, 0x400

    .line 42
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    .line 44
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 9

    .line 107
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_a8

    .line 109
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 113
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    goto/16 :goto_9b

    .line 117
    :cond_1e
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_21
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 123
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    goto :goto_9a

    :catchall_34
    move-exception p0

    goto :goto_a6

    .line 130
    :cond_36
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v2

    .line 139
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    const/16 v4, 0x400

    if-ne v3, v4, :cond_64

    .line 141
    new-instance v3, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 142
    const-string v5, "com.android.org.bouncycastle.dsa.FIPS186-2for1024bits"

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 144
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_88

    .line 148
    :cond_57
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/16 v7, 0xa0

    invoke-direct {v5, v4, v7, v2, v6}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    .line 149
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_88

    :cond_64
    if-le v3, v4, :cond_7c

    .line 154
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/16 v6, 0x100

    invoke-direct {v4, v3, v6, v2, v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    .line 155
    new-instance v3, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lcom/android/org/bouncycastle/crypto/SavableDigest;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 156
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_88

    .line 160
    :cond_7c
    new-instance v3, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 161
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 163
    :goto_88
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 165
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :goto_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_21 .. :try_end_9b} :catchall_34

    .line 170
    :goto_9b
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    goto :goto_a8

    .line 167
    :goto_a6
    :try_start_a6
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_34

    throw p0

    .line 174
    :cond_a8
    :goto_a8
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    .line 176
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 178
    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;)V

    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 7

    const/16 v0, 0x200

    if-lt p1, v0, :cond_4e

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_4e

    const/16 v0, 0x400

    if-ge p1, v0, :cond_10

    .line 56
    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_4e

    :cond_10
    if-lt p1, v0, :cond_16

    rem-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_4e

    :cond_16
    if-nez p2, :cond_1d

    .line 63
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    .line 66
    :cond_1d
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getDSADefaultParameters(I)Ljava/security/spec/DSAParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 70
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, p2, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 72
    iget-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    return-void

    .line 77
    :cond_46
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    .line 78
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    return-void

    .line 58
    :cond_4e
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be from 512 - 4096 and a multiple of 1024 above 1024"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 88
    instance-of v0, p1, Ljava/security/spec/DSAParameterSpec;

    if-eqz v0, :cond_2e

    .line 92
    check-cast p1, Ljava/security/spec/DSAParameterSpec;

    if-nez p2, :cond_d

    .line 96
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    .line 99
    :cond_d
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p2, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 101
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    return-void

    .line 90
    :cond_2e
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a DSAParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
