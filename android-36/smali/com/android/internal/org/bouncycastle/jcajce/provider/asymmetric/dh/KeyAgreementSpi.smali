.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;
.source "KeyAgreementSpi.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# instance fields
.field private blacklist g:Ljava/math/BigInteger;

.field private final blacklist mqvAgreement:Lcom/android/internal/org/bouncycastle/crypto/BasicAgreement;

.field private blacklist p:Ljava/math/BigInteger;

.field private blacklist result:[B

.field private blacklist x:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 55
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ONE:Ljava/math/BigInteger;

    .line 56
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 74
    const-string v0, "Diffie-Hellman"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/DerivationFunction;)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/BasicAgreement;Lcom/android/internal/org/bouncycastle/crypto/DerivationFunction;)V
    .registers 4
    .param p1, "kaAlgorithm"    # Ljava/lang/String;
    .param p2, "mqvAgreement"    # Lcom/android/internal/org/bouncycastle/crypto/BasicAgreement;
    .param p3, "kdf"    # Lcom/android/internal/org/bouncycastle/crypto/DerivationFunction;

    .line 106
    invoke-direct {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/DerivationFunction;)V

    .line 109
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->mqvAgreement:Lcom/android/internal/org/bouncycastle/crypto/BasicAgreement;

    .line 110
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/DerivationFunction;)V
    .registers 4
    .param p1, "kaAlgorithm"    # Ljava/lang/String;
    .param p2, "kdf"    # Lcom/android/internal/org/bouncycastle/crypto/DerivationFunction;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/DerivationFunction;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->mqvAgreement:Lcom/android/internal/org/bouncycastle/crypto/BasicAgreement;

    .line 85
    return-void
.end method

.method private blacklist generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .registers 11
    .param p1, "privKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 378
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_33

    .line 380
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    if-eqz v0, :cond_10

    .line 382
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    return-object v0

    .line 386
    :cond_10
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 388
    .local v0, "pub":Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    .line 389
    .local v1, "params":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 390
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    .line 389
    return-object v2

    .line 395
    .end local v0    # "pub":Ljavax/crypto/interfaces/DHPrivateKey;
    .end local v1    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :cond_33
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "private key not a DHPrivateKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    .registers 11
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 402
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_48

    .line 404
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    if-eqz v0, :cond_10

    .line 406
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    return-object v0

    .line 410
    :cond_10
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 412
    .local v0, "pub":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    .line 414
    .local v1, "params":Ljavax/crypto/spec/DHParameterSpec;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    if-eqz v2, :cond_2c

    .line 416
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v2

    .line 418
    :cond_2c
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 419
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    .line 418
    return-object v2

    .line 424
    .end local v0    # "pub":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v1    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :cond_48
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "public key not a DHPublicKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist bigIntToBytes(Ljava/math/BigInteger;)[B
    .registers 4
    .param p1, "r"    # Ljava/math/BigInteger;

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 121
    .local v0, "expectedLength":I
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v1

    return-object v1
.end method

.method protected blacklist doCalcSecret()[B
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    return-object v0
.end method

.method protected blacklist doInitFromKey(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 257
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_79

    .line 261
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 263
    .local v0, "privKey":Ljavax/crypto/interfaces/DHPrivateKey;
    if-eqz p2, :cond_56

    .line 265
    instance-of v1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_20

    .line 267
    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/DHParameterSpec;

    .line 269
    .local v1, "p":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    .line 270
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    .line 273
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ukmParameters:[B

    .line 274
    .end local v1    # "p":Ljavax/crypto/spec/DHParameterSpec;
    goto :goto_6a

    .line 325
    :cond_20
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    if-eqz v1, :cond_4e

    .line 327
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->kdf:Lcom/android/internal/org/bouncycastle/crypto/DerivationFunction;

    if-eqz v1, :cond_46

    .line 331
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    .line 332
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    .line 335
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->getUserKeyingMaterial()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ukmParameters:[B

    goto :goto_6a

    .line 329
    :cond_46
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "no KDF specified for UserKeyingMaterialSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_4e
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "DHKeyAgreement only accepts DHParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_56
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    .line 345
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    .line 348
    :goto_6a
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    .line 349
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    .line 350
    return-void

    .line 259
    .end local v0    # "privKey":Ljavax/crypto/interfaces/DHPrivateKey;
    :cond_79
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "DHKeyAgreement requires DHPrivateKey for initialisation"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 8
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_8e

    .line 134
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_86

    .line 138
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 140
    .local v0, "pubKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 145
    move-object v1, p1

    check-cast v1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    .line 146
    .local v1, "peerY":Ljava/math/BigInteger;
    if-eqz v1, :cond_76

    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_76

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ONE:Ljava/math/BigInteger;

    .line 147
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_76

    .line 190
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 191
    .local v2, "res":Ljava/math/BigInteger;
    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eqz v3, :cond_6e

    .line 196
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    .line 198
    if-eqz p2, :cond_64

    .line 200
    const/4 v3, 0x0

    return-object v3

    .line 203
    :cond_64
    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    return-object v3

    .line 193
    :cond_6e
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Shared key can\'t be 1"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    .end local v2    # "res":Ljava/math/BigInteger;
    :cond_76
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Invalid DH PublicKey"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v1    # "peerY":Ljava/math/BigInteger;
    :cond_7e
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "DHPublicKey not for this KeyAgreement!"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    .end local v0    # "pubKey":Ljavax/crypto/interfaces/DHPublicKey;
    :cond_86
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "DHKeyAgreement doPhase requires DHPublicKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_8e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGenerateSecret([BI)I
    .registers 5
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_9

    .line 230
    invoke-super {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret([BI)I

    move-result v0

    return v0

    .line 227
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_1d

    .line 243
    const-string v0, "TlsPremasterSecret"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 245
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->trimZeroes([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 248
    :cond_18
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGenerateSecret()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_9

    .line 217
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0

    .line 214
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 357
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_2a

    .line 362
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 364
    .local v0, "privKey":Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    .line 365
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    .line 366
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    .line 367
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    .line 368
    return-void

    .line 359
    .end local v0    # "privKey":Ljavax/crypto/interfaces/DHPrivateKey;
    :cond_2a
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "DHKeyAgreement requires DHPrivateKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
