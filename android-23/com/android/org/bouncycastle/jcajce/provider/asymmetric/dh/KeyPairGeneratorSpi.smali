.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static params:Ljava/util/Hashtable;


# instance fields
.field certainty:I

.field engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

.field initialised:Z

.field param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 24
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    #@7
    .line 25
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    #@e
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    const-string/jumbo v0, "DH"

    #@3
    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #@6
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    #@8
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    #@d
    .line 29
    const/16 v0, 0x400

    #@f
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    #@11
    .line 30
    const/16 v0, 0x14

    #@13
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->certainty:I

    #@15
    .line 31
    new-instance v0, Ljava/security/SecureRandom;

    #@17
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@1c
    .line 32
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    #@1f
    .line 34
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 66
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    #@3
    if-nez v6, :cond_0

    #@5
    .line 68
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    #@7
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v3

    #@b
    .line 70
    .local v3, "paramStrength":Ljava/lang/Integer;
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_1

    #@13
    .line 72
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    #@15
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v6

    #@19
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@1b
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@1d
    .line 107
    :goto_0
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    #@1f
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@21
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@24
    .line 109
    const/4 v6, 0x1

    #@25
    iput-boolean v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    #@27
    .line 112
    .end local v3    # "paramStrength":Ljava/lang/Integer;
    :cond_0
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    #@29
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    #@2c
    move-result-object v2

    #@2d
    .line 113
    .local v2, "pair":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@33
    .line 114
    .local v5, "pub":Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@39
    .line 116
    .local v4, "priv":Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    new-instance v6, Ljava/security/KeyPair;

    #@3b
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    #@3d
    invoke-direct {v7, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    #@40
    .line 117
    new-instance v8, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    #@42
    invoke-direct {v8, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;)V

    #@45
    .line 116
    invoke-direct {v6, v7, v8}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@48
    return-object v6

    #@49
    .line 76
    .end local v2    # "pair":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .end local v4    # "priv":Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .end local v5    # "pub":Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    .restart local v3    # "paramStrength":Ljava/lang/Integer;
    :cond_1
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@4b
    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    #@4d
    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;

    #@50
    move-result-object v0

    #@51
    .line 78
    .local v0, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    if-eqz v0, :cond_2

    #@53
    .line 80
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@55
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@57
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@59
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@60
    move-result-object v10

    #@61
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@64
    move-result v11

    #@65
    invoke-direct {v8, v9, v10, v12, v11}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@68
    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@6b
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@6d
    goto :goto_0

    #@6e
    .line 84
    :cond_2
    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    #@70
    monitor-enter v7

    #@71
    .line 88
    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    #@73
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_3

    #@79
    .line 90
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    #@7b
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v6

    #@7f
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@81
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    :goto_1
    monitor-exit v7

    #@84
    goto :goto_0

    #@85
    .line 95
    :cond_3
    :try_start_1
    new-instance v1, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;

    #@87
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    #@8a
    .line 97
    .local v1, "pGen":Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    #@8c
    iget v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->certainty:I

    #@8e
    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@90
    invoke-virtual {v1, v6, v8, v9}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    #@93
    .line 99
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@95
    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@97
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@9a
    move-result-object v9

    #@9b
    invoke-direct {v6, v8, v9}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@9e
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@a0
    .line 101
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    #@a2
    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@a4
    invoke-virtual {v6, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a7
    goto :goto_1

    #@a8
    .line 84
    .end local v1    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
    :catchall_0
    move-exception v6

    #@a9
    monitor-exit v7

    #@aa
    throw v6
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 43
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    #@2
    .line 44
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@4
    .line 41
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 54
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    const-string/jumbo v2, "parameter object not a DHParameterSpec"

    #@9
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 56
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    #@10
    .line 58
    .local v0, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@12
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@14
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@1f
    move-result v5

    #@20
    const/4 v6, 0x0

    #@21
    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@24
    invoke-direct {v1, p2, v2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@27
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@29
    .line 60
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    #@2b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    #@2d
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@30
    .line 61
    const/4 v1, 0x1

    #@31
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    #@33
    .line 50
    return-void
.end method
