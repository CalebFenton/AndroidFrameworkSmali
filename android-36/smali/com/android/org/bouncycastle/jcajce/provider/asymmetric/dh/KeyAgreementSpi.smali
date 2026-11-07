.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;
.source "KeyAgreementSpi.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# instance fields
.field private blacklist g:Ljava/math/BigInteger;

.field private blacklist p:Ljava/math/BigInteger;

.field private blacklist result:[B

.field private blacklist x:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 55
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 56
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 74
    const-string v0, "Diffie-Hellman"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/BasicAgreement;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V
    .registers 4

    .line 106
    invoke-direct {p0, p1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V
    .registers 3

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method


# virtual methods
.method protected blacklist bigIntToBytes(Ljava/math/BigInteger;)[B
    .registers 2

    .line 119
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    .line 121
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method protected blacklist doCalcSecret()[B
    .registers 1

    .line 372
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    return-object p0
.end method

.method protected blacklist doInitFromKey(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4

    .line 257
    instance-of p3, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p3, :cond_47

    .line 261
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p2, :cond_26

    .line 265
    instance-of p3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz p3, :cond_1e

    .line 267
    check-cast p2, Ljavax/crypto/spec/DHParameterSpec;

    .line 269
    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    .line 270
    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    const/4 p2, 0x0

    .line 273
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->ukmParameters:[B

    goto :goto_3a

    .line 339
    :cond_1e
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "DHKeyAgreement only accepts DHParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 344
    :cond_26
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    .line 345
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    .line 348
    :goto_3a
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    return-void

    .line 259
    :cond_47
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "DHKeyAgreement requires DHPrivateKey for initialisation"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 7

    .line 129
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_88

    .line 134
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_80

    .line 138
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .line 140
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 145
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 146
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_70

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ONE:Ljava/math/BigInteger;

    .line 147
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_70

    .line 190
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_68

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    if-eqz p2, :cond_5e

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_5e
    new-instance p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    return-object p0

    .line 193
    :cond_68
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Shared key can\'t be 1"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_70
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Invalid DH PublicKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_78
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "DHPublicKey not for this KeyAgreement!"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_80
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "DHKeyAgreement doPhase requires DHPublicKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Diffie-Hellman not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGenerateSecret([BI)I
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_9

    .line 230
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret([BI)I

    move-result p0

    return p0

    .line 227
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Diffie-Hellman not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_1d

    .line 243
    const-string v0, "TlsPremasterSecret"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 245
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->trimZeroes([B)[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 248
    :cond_18
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    .line 239
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Diffie-Hellman not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGenerateSecret()[B
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_9

    .line 217
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret()[B

    move-result-object p0

    return-object p0

    .line 214
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Diffie-Hellman not initialised."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 3

    .line 357
    instance-of p2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p2, :cond_27

    .line 362
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 364
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    .line 365
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    .line 366
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:[B

    return-void

    .line 359
    :cond_27
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "DHKeyAgreement requires DHPrivateKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
