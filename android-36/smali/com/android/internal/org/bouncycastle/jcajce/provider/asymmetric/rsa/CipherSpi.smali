.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "CipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private blacklist bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist engineParams:Ljava/security/AlgorithmParameters;

.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private blacklist privateKeyOnly:Z

.field private blacklist publicKeyOnly:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 53
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 60
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    .line 65
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 5
    .param p1, "pSpec"    # Ljavax/crypto/spec/OAEPParameterSpec;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 53
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 60
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    .line 73
    :try_start_16
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    :try_end_19
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_16 .. :try_end_19} :catch_1b

    .line 78
    nop

    .line 79
    return-void

    .line 75
    :catch_1b
    move-exception v0

    .line 77
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(ZZLcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 5
    .param p1, "publicKeyOnly"    # Z
    .param p2, "privateKeyOnly"    # Z
    .param p3, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 85
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 53
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 60
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    .line 86
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 87
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 88
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 89
    return-void
.end method

.method private blacklist getOutput()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 551
    const-string/jumbo v0, "unable to decrypt block"

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->getBuf()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1
    :try_end_16
    .catch Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3 .. :try_end_16} :catch_30
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_16} :catch_29
    .catchall {:try_start_3 .. :try_end_16} :catchall_27

    .line 560
    .local v1, "output":[B
    nop

    .line 562
    if-eqz v1, :cond_20

    .line 567
    nop

    .line 571
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->erase()V

    .line 567
    return-object v1

    .line 564
    :cond_20
    :try_start_20
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    throw v2

    .line 571
    .end local v1    # "output":[B
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    :catchall_27
    move-exception v0

    goto :goto_37

    .line 557
    :catch_29
    move-exception v1

    .line 559
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    throw v2

    .line 553
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    :catch_30
    move-exception v1

    .line 555
    .local v1, "e":Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    throw v2
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_27

    .line 571
    .end local v1    # "e":Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    :goto_37
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->erase()V

    .line 572
    throw v0
.end method

.method private blacklist initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 7
    .param p1, "pSpec"    # Ljavax/crypto/spec/OAEPParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 96
    .local v0, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 98
    .local v1, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    if-eqz v1, :cond_29

    .line 103
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v4

    check-cast v4, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v4}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 104
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 105
    return-void

    .line 100
    :cond_29
    new-instance v2, Ljavax/crypto/NoSuchPaddingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 10
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_56

    .line 513
    if-eqz p1, :cond_f

    .line 515
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->write([BII)V

    .line 518
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string/jumbo v1, "too much data for RSA block"

    if-eqz v0, :cond_2f

    .line 520
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v0, v2, :cond_29

    goto :goto_3d

    .line 522
    :cond_29
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_50

    .line 533
    :goto_3d
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->getOutput()[B

    move-result-object v0

    .line 535
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    array-length v2, v0

    if-eq v1, v2, :cond_4e

    .line 537
    add-int v2, p5, v1

    aget-byte v3, v0, v1

    aput-byte v3, p4, v2

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 540
    .end local v1    # "i":I
    :cond_4e
    array-length v1, v0

    return v1

    .line 529
    .end local v0    # "out":[B
    :cond_50
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_56
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "output buffer too short for input."

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 477
    if-eqz p1, :cond_7

    .line 479
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->write([BII)V

    .line 482
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string/jumbo v1, "too much data for RSA block"

    if-eqz v0, :cond_27

    .line 484
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v0, v2, :cond_21

    goto :goto_35

    .line 486
    :cond_21
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_3a

    .line 497
    :goto_35
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->getOutput()[B

    move-result-object v0

    return-object v0

    .line 493
    :cond_3a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 4

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 113
    :catch_7
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 4
    .param p1, "key"    # Ljava/security/Key;

    .line 122
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_10

    .line 124
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 126
    .local v0, "k":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    return v1

    .line 128
    .end local v0    # "k":Ljava/security/interfaces/RSAPrivateKey;
    :cond_10
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_20

    .line 130
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 132
    .local v0, "k":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    return v1

    .line 135
    .end local v0    # "k":Ljava/security/interfaces/RSAPublicKey;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an RSA key!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 5
    .param p1, "inputLen"    # I

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 145
    :catch_7
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_25

    .line 155
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v0, :cond_25

    .line 159
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "OAEP"

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 160
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    .line 165
    goto :goto_25

    .line 162
    :catch_1a
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 10
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_29

    .line 390
    :try_start_3
    const-class v1, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1
    :try_end_9
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_3 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 395
    goto :goto_29

    .line 392
    :catch_b
    move-exception v1

    .line 394
    .local v1, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot recognise parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 398
    .end local v1    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_29
    :goto_29
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 399
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 400
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 8
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_7} :catch_9

    .line 416
    nop

    .line 417
    return-void

    .line 412
    :catch_9
    move-exception v0

    .line 415
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eeeek! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 14
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 282
    if-eqz p3, :cond_29

    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_7

    goto :goto_29

    .line 345
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown parameter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_29
    :goto_29
    instance-of v0, p2, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x1

    if-eqz v0, :cond_45

    .line 286
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    if-eqz v0, :cond_3d

    if-eq p1, v1, :cond_35

    goto :goto_3d

    .line 288
    :cond_35
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "mode 1 requires RSAPrivateKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_3d
    :goto_3d
    move-object v0, p2

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_5f

    .line 294
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_45
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_157

    .line 296
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    if-eqz v0, :cond_58

    if-eq p1, v1, :cond_50

    goto :goto_58

    .line 298
    :cond_50
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "mode 2 requires RSAPublicKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_58
    :goto_58
    move-object v0, p2

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 309
    .restart local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_5f
    if-eqz p3, :cond_108

    .line 311
    move-object v2, p3

    check-cast v2, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 313
    .local v2, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 315
    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MGF1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    goto :goto_8c

    .line 317
    :cond_83
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "unknown mask generation function specified"

    invoke-direct {v1, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_8c
    :goto_8c
    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    instance-of v3, v3, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz v3, :cond_ff

    .line 325
    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v3

    .line 327
    .local v3, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    if-eqz v3, :cond_e2

    .line 332
    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    check-cast v4, Ljava/security/spec/MGF1ParameterSpec;

    .line 333
    .local v4, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v4}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v5

    .line 335
    .local v5, "mgfDigest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    if-eqz v5, :cond_c5

    .line 340
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v8

    check-cast v8, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v8}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v8

    invoke-direct {v6, v7, v3, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 341
    .end local v2    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    .end local v3    # "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v4    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .end local v5    # "mgfDigest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    goto :goto_108

    .line 337
    .restart local v2    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    .restart local v3    # "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .restart local v4    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .restart local v5    # "mgfDigest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    :cond_c5
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no match on MGF digest algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    .end local v4    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .end local v5    # "mgfDigest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    :cond_e2
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no match on digest algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    .end local v3    # "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    :cond_ff
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "unkown MGF parameters"

    invoke-direct {v1, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    .end local v2    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_108
    :goto_108
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-nez v2, :cond_121

    .line 350
    if-eqz p4, :cond_117

    .line 352
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, v0, p4}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v0, v2

    goto :goto_121

    .line 356
    :cond_117
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v0, v2

    .line 360
    :cond_121
    :goto_121
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->reset()V

    .line 362
    packed-switch p1, :pswitch_data_160

    .line 373
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown opmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " passed to RSA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :pswitch_149
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 371
    goto :goto_156

    .line 366
    :pswitch_150
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 367
    nop

    .line 375
    :goto_156
    return-void

    .line 306
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_157
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "unknown key type passed to RSA"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_160
    .packed-switch 0x1
        :pswitch_150
        :pswitch_149
        :pswitch_150
        :pswitch_149
    .end packed-switch
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 176
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "md":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_4a

    .line 183
    :cond_15
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    .line 185
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 187
    return-void

    .line 189
    :cond_24
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 191
    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 192
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 193
    return-void

    .line 196
    :cond_31
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_4a
    :goto_4a
    return-void
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 8
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 203
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "pad":Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 207
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto/16 :goto_10b

    .line 209
    :cond_15
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 211
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto/16 :goto_10b

    .line 219
    :cond_2b
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MGF1"

    if-eqz v1, :cond_48

    .line 221
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    const-string v4, "MD5"

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v2, v3, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_10b

    .line 223
    :cond_48
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 225
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_10b

    .line 227
    :cond_57
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_106

    const-string v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    goto/16 :goto_106

    .line 231
    :cond_69
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f4

    const-string v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    goto/16 :goto_f4

    .line 235
    :cond_7b
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e5

    const-string v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    goto :goto_e5

    .line 239
    :cond_8c
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    const-string v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    goto :goto_d6

    .line 243
    :cond_9d
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c7

    const-string v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    goto :goto_c7

    .line 269
    :cond_ae
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unavailable with RSA."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_c7
    :goto_c7
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v5, "SHA-512"

    invoke-direct {v1, v5, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_10b

    .line 241
    :cond_d6
    :goto_d6
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v5, "SHA-384"

    invoke-direct {v1, v5, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_10b

    .line 237
    :cond_e5
    :goto_e5
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v5, "SHA-256"

    invoke-direct {v1, v5, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_10b

    .line 233
    :cond_f4
    :goto_f4
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    const-string v4, "SHA-224"

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v2, v3, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_10b

    .line 229
    :cond_106
    :goto_106
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    .line 271
    :goto_10b
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    .line 451
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->write([BII)V

    .line 453
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string/jumbo v1, "too much data for RSA block"

    if-eqz v0, :cond_25

    .line 455
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v0, v2, :cond_1f

    goto :goto_33

    .line 457
    :cond_1f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_35

    .line 468
    :goto_33
    const/4 v0, 0x0

    return v0

    .line 464
    :cond_35
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 424
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->write([BII)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string/jumbo v1, "too much data for RSA block"

    if-eqz v0, :cond_25

    .line 428
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v0, v2, :cond_1f

    goto :goto_33

    .line 430
    :cond_1f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_35

    .line 441
    :goto_33
    const/4 v0, 0x0

    return-object v0

    .line 437
    :cond_35
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
