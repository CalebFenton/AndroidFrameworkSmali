.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "CipherSpi.java"


# instance fields
.field private blacklist bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

.field private blacklist cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist engineParams:Ljava/security/AlgorithmParameters;

.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private blacklist privateKeyOnly:Z

.field private blacklist publicKeyOnly:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    .line 65
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method

.method private blacklist getOutput()[B
    .registers 6

    .line 551
    const-string v0, "unable to decrypt block"

    :try_start_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->getBuf()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1
    :try_end_15
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_15} :catch_28
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_15} :catch_26
    .catchall {:try_start_2 .. :try_end_15} :catchall_24

    if-eqz v1, :cond_1d

    .line 571
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->erase()V

    return-object v1

    .line 564
    :cond_1d
    :try_start_1d
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/util/BadBlockException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_24
    move-exception v0

    goto :goto_36

    :catch_26
    move-exception v1

    goto :goto_2a

    :catch_28
    move-exception v1

    goto :goto_30

    .line 559
    :goto_2a
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 555
    :goto_30
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_24

    .line 571
    :goto_36
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->erase()V

    .line 572
    throw v0
.end method

.method private blacklist initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 6

    .line 95
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 96
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 103
    new-instance v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v3}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 104
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void

    .line 100
    :cond_29
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 8

    .line 508
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_55

    if-eqz p1, :cond_f

    .line 515
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 518
    :cond_f
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of p1, p1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_2e

    .line 520
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-gt p1, p3, :cond_28

    goto :goto_3c

    .line 522
    :cond_28
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 527
    :cond_2e
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    if-gt p1, p3, :cond_4f

    .line 533
    :goto_3c
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->getOutput()[B

    move-result-object p0

    const/4 p1, 0x0

    .line 535
    :goto_41
    array-length p2, p0

    if-eq p1, p2, :cond_4d

    add-int p2, p5, p1

    .line 537
    aget-byte p3, p0, p1

    aput-byte p3, p4, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_41

    .line 540
    :cond_4d
    array-length p0, p0

    return p0

    .line 529
    :cond_4f
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 510
    :cond_55
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 5

    if-eqz p1, :cond_7

    .line 479
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 482
    :cond_7
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of p1, p1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_26

    .line 484
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-gt p1, p3, :cond_20

    goto :goto_34

    .line 486
    :cond_20
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 491
    :cond_26
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    if-gt p1, p3, :cond_39

    .line 497
    :goto_34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->getOutput()[B

    move-result-object p0

    return-object p0

    .line 493
    :cond_39
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    .line 115
    :catch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RSA Cipher not initialised"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 2

    .line 122
    instance-of p0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz p0, :cond_f

    .line 124
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 126
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    .line 128
    :cond_f
    instance-of p0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz p0, :cond_1e

    .line 130
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 132
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    .line 135
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not an RSA key!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 2

    .line 143
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result p0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    .line 147
    :catch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RSA Cipher not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_23

    .line 155
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v0, :cond_23

    .line 159
    :try_start_8
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "OAEP"

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 160
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_23

    :catch_18
    move-exception p0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6

    if-eqz p3, :cond_25

    .line 390
    :try_start_2
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_26

    :catch_9
    move-exception p0

    .line 394
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot recognise parameters: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/spec/InvalidParameterSpecException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_25
    const/4 v0, 0x0

    .line 398
    :goto_26
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 399
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x0

    .line 410
    :try_start_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    .line 415
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Eeeek! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 10

    if-eqz p3, :cond_26

    .line 282
    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_7

    goto :goto_26

    .line 345
    :cond_7
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown parameter type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :cond_26
    :goto_26
    instance-of v0, p2, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    .line 286
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    if-eqz v0, :cond_3a

    if-eq p1, v1, :cond_32

    goto :goto_3a

    .line 288
    :cond_32
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "mode 1 requires RSAPrivateKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_3a
    :goto_3a
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p2

    goto :goto_5a

    .line 294
    :cond_41
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_150

    .line 296
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    if-eqz v0, :cond_54

    if-eq p1, v1, :cond_4c

    goto :goto_54

    .line 298
    :cond_4c
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "mode 2 requires RSAPublicKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_54
    :goto_54
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p2

    :goto_5a
    if-eqz p3, :cond_fd

    .line 311
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 313
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 315
    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p3

    const-string v2, "MGF1"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_86

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7e

    goto :goto_86

    .line 317
    :cond_7e
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown mask generation function specified"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 320
    :cond_86
    :goto_86
    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    instance-of p3, p3, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz p3, :cond_f5

    .line 325
    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p3

    if-eqz p3, :cond_da

    .line 332
    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    .line 333
    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v3

    if-eqz v3, :cond_bf

    .line 340
    new-instance v2, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v4, p3, v3, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto :goto_fd

    .line 337
    :cond_bf
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no match on MGF digest algorithm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_da
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no match on digest algorithm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 322
    :cond_f5
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unkown MGF parameters"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    :cond_fd
    :goto_fd
    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of p3, p3, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-nez p3, :cond_116

    if-eqz p4, :cond_10c

    .line 352
    new-instance p3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {p3, p2, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    :goto_10a
    move-object p2, p3

    goto :goto_116

    .line 356
    :cond_10c
    new-instance p3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    goto :goto_10a

    .line 360
    :cond_116
    :goto_116
    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-eq p1, v1, :cond_14a

    const/4 p3, 0x2

    if-eq p1, p3, :cond_143

    const/4 p3, 0x3

    if-eq p1, p3, :cond_14a

    const/4 p3, 0x4

    if-ne p1, p3, :cond_127

    goto :goto_143

    .line 373
    :cond_127
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown opmode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " passed to RSA"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 370
    :cond_143
    :goto_143
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void

    .line 366
    :cond_14a
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0, v1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void

    .line 306
    :cond_150
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown key type passed to RSA"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 6

    .line 176
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_48

    .line 183
    :cond_15
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    .line 185
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    return-void

    .line 189
    :cond_24
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 191
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 192
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    return-void

    .line 196
    :cond_31
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t support mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    :goto_48
    return-void
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 6

    .line 203
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 207
    new-instance p1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void

    .line 209
    :cond_14
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 211
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void

    .line 219
    :cond_29
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MGF1"

    if-eqz v1, :cond_45

    .line 221
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "MD5"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-void

    .line 223
    :cond_45
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 225
    sget-object p1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-void

    .line 227
    :cond_53
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_100

    const-string v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    goto/16 :goto_100

    .line 231
    :cond_65
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ee

    const-string v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    goto/16 :goto_ee

    .line 235
    :cond_77
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    const-string v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    goto :goto_df

    .line 239
    :cond_88
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    const-string v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    goto :goto_d0

    .line 243
    :cond_99
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    const-string v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    goto :goto_c1

    .line 269
    :cond_aa
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unavailable with RSA."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_c1
    :goto_c1
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-512"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-void

    .line 241
    :cond_d0
    :goto_d0
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-384"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-void

    .line 237
    :cond_df
    :goto_df
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-256"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-void

    .line 233
    :cond_ee
    :goto_ee
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-224"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-void

    .line 229
    :cond_100
    :goto_100
    sget-object p1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-void
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 6

    .line 451
    iget-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 453
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of p1, p1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_24

    .line 455
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    if-gt p1, p0, :cond_1e

    goto :goto_32

    .line 457
    :cond_1e
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 462
    :cond_24
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p0

    if-gt p1, p0, :cond_34

    :goto_32
    const/4 p0, 0x0

    return p0

    .line 464
    :cond_34
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 426
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of p1, p1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_24

    .line 428
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    if-gt p1, p0, :cond_1e

    goto :goto_32

    .line 430
    :cond_1e
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 435
    :cond_24
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p0

    if-gt p1, p0, :cond_34

    :goto_32
    const/4 p0, 0x0

    return-object p0

    .line 437
    :cond_34
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
