.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# instance fields
.field certainty:I

.field engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

.field initialised:Z

.field param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "DSA"

    #@3
    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #@6
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    #@8
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    #@d
    .line 23
    const/16 v0, 0x400

    #@f
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    #@11
    .line 24
    const/16 v0, 0x14

    #@13
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->certainty:I

    #@15
    .line 25
    new-instance v0, Ljava/security/SecureRandom;

    #@17
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@1c
    .line 26
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    #@1f
    .line 28
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7

    #@0
    .prologue
    .line 65
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 67
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    #@6
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    #@9
    .line 69
    .local v0, "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    #@b
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->certainty:I

    #@d
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@f
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    #@12
    .line 70
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@14
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@16
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@19
    move-result-object v6

    #@1a
    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    #@1d
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@1f
    .line 71
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    #@21
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@23
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@26
    .line 72
    const/4 v4, 0x1

    #@27
    iput-boolean v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    #@29
    .line 75
    .end local v0    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :cond_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    #@2b
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    #@2e
    move-result-object v1

    #@2f
    .line 76
    .local v1, "pair":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    #@35
    .line 77
    .local v3, "pub":Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    #@3b
    .line 79
    .local v2, "priv":Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;
    new-instance v4, Ljava/security/KeyPair;

    #@3d
    new-instance v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    #@3f
    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;)V

    #@42
    .line 80
    new-instance v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    #@44
    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;)V

    #@47
    .line 79
    invoke-direct {v4, v5, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@4a
    return-object v4
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    const/16 v1, 0x400

    #@2
    .line 37
    const/16 v0, 0x200

    #@4
    if-lt p1, v0, :cond_0

    #@6
    const/16 v0, 0x1000

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 39
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    #@c
    const-string/jumbo v1, "strength must be from 512 - 4096 and a multiple of 1024 above 1024"

    #@f
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 37
    :cond_1
    if-ge p1, v1, :cond_2

    #@15
    rem-int/lit8 v0, p1, 0x40

    #@17
    if-nez v0, :cond_0

    #@19
    :cond_2
    if-lt p1, v1, :cond_3

    #@1b
    rem-int/lit16 v0, p1, 0x400

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 42
    :cond_3
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    #@21
    .line 43
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@23
    .line 35
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    instance-of v1, p1, Ljava/security/spec/DSAParameterSpec;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 53
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    const-string/jumbo v2, "parameter object not a DSAParameterSpec"

    #@9
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 55
    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    #@10
    .line 57
    .local v0, "dsaParams":Ljava/security/spec/DSAParameterSpec;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@12
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@14
    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    #@1f
    move-result-object v5

    #@20
    invoke-direct {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@23
    invoke-direct {v1, p2, v2}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    #@26
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@28
    .line 59
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    #@2a
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@2c
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@2f
    .line 60
    const/4 v1, 0x1

    #@30
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    #@32
    .line 49
    return-void
.end method
