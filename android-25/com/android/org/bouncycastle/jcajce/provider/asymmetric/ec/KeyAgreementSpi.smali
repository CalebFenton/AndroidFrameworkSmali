.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DH;
    }
.end annotation


# static fields
.field private static final converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field private agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

.field private kaAlgorithm:Ljava/lang/String;

.field private parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@7
    .line 56
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/BasicAgreement;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V
    .locals 0
    .param p1, "kaAlgorithm"    # Ljava/lang/String;
    .param p2, "agreement"    # Lcom/android/org/bouncycastle/crypto/BasicAgreement;
    .param p3, "kdf"    # Lcom/android/org/bouncycastle/crypto/DerivationFunction;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V

    #@3
    .line 77
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@5
    .line 78
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

    #@7
    .line 73
    return-void
.end method

.method private static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 254
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 256
    .local v0, "fullName":Ljava/lang/String;
    const/16 v1, 0x2e

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private initFromKey(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "parameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    instance-of v1, p1, Ljava/security/PrivateKey;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 241
    new-instance v1, Ljava/security/InvalidKeyException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, " key agreement requires "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 242
    const-class v3, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    #@1a
    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 242
    const-string/jumbo v3, " for initialisation"

    #@25
    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 245
    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    #@33
    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@39
    .line 246
    .local v0, "privKey":Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@3f
    .line 247
    instance-of v1, p2, Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    #@41
    if-eqz v1, :cond_1

    #@43
    nop

    #@44
    nop

    #@45
    .end local p2    # "parameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->getUserKeyingMaterial()[B

    #@48
    move-result-object v1

    #@49
    :goto_0
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->ukmParameters:[B

    #@4b
    .line 248
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

    #@4d
    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/crypto/BasicAgreement;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@50
    .line 180
    return-void

    #@51
    .line 247
    .restart local p2    # "parameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    const/4 v1, 0x0

    #@52
    goto :goto_0
.end method


# virtual methods
.method protected bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "r"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@6
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 92
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 94
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " not initialised."

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 97
    :cond_0
    if-nez p2, :cond_1

    #@23
    .line 99
    new-instance v2, Ljava/lang/IllegalStateException;

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, " can only be between two parties."

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v2

    #@3f
    .line 131
    :cond_1
    instance-of v2, p1, Ljava/security/PublicKey;

    #@41
    if-nez v2, :cond_2

    #@43
    .line 133
    new-instance v2, Ljava/security/InvalidKeyException;

    #@45
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    const-string/jumbo v4, " key agreement requires "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 134
    const-class v4, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    #@59
    invoke-static {v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 134
    const-string/jumbo v4, " for doPhase"

    #@64
    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v2

    #@70
    .line 137
    :cond_2
    check-cast p1, Ljava/security/PublicKey;

    #@72
    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@75
    move-result-object v1

    #@76
    .line 145
    .local v1, "pubKey":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

    #@78
    invoke-interface {v2, v1}, Lcom/android/org/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    #@7b
    move-result-object v2

    #@7c
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->result:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    .line 152
    return-object v3

    #@7f
    .line 147
    :catch_0
    move-exception v0

    #@80
    .line 148
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@82
    const-string/jumbo v3, "Invalid public key"

    #@85
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@88
    throw v2
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@4
    .line 174
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    if-eqz p2, :cond_0

    #@2
    instance-of v0, p2, Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 168
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@9
    .line 159
    return-void

    #@a
    .line 165
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@c
    const-string/jumbo v1, "No algorithm parameters supported"

    #@f
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method
