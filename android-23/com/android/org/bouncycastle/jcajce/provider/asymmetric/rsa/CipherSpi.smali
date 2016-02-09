.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "CipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private final helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private privateKeyOnly:Z

.field private publicKeyOnly:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    #@4
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@6
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@b
    .line 51
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    #@d
    .line 52
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    #@f
    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@11
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@16
    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@18
    .line 56
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 3
    .param p1, "pSpec"    # Ljavax/crypto/spec/OAEPParameterSpec;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 61
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    #@4
    .line 46
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@6
    invoke-direct {v1}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@b
    .line 51
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    #@d
    .line 52
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    #@f
    .line 53
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@11
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@14
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@16
    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 62
    return-void

    #@1a
    .line 69
    :catch_0
    move-exception v0

    #@1b
    .line 70
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1d
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1
.end method

.method public constructor <init>(ZZLcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .param p1, "publicKeyOnly"    # Z
    .param p2, "privateKeyOnly"    # Z
    .param p3, "engine"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    #@4
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@6
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@b
    .line 51
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    #@d
    .line 52
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    #@f
    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@11
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@16
    .line 79
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    #@18
    .line 80
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    #@1a
    .line 81
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@1c
    .line 77
    return-void
.end method

.method private initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 5
    .param p1, "pSpec"    # Ljavax/crypto/spec/OAEPParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    #@6
    .line 89
    .local v1, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    #@d
    move-result-object v0

    #@e
    .line 91
    .local v0, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    if-nez v0, :cond_0

    #@10
    .line 93
    new-instance v2, Ljavax/crypto/NoSuchPaddingException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "no match on OAEP constructor for digest algorithm: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 96
    :cond_0
    new-instance v3, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    #@30
    new-instance v4, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@32
    invoke-direct {v4}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    #@35
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Ljavax/crypto/spec/PSource$PSpecified;

    #@3b
    invoke-virtual {v2}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    #@3e
    move-result-object v2

    #@3f
    invoke-direct {v3, v4, v0, v2}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    #@42
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@44
    .line 97
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@46
    .line 86
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 492
    if-eqz p1, :cond_0

    #@2
    .line 494
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-virtual {v4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@7
    .line 497
    :cond_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@9
    instance-of v4, v4, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 499
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    #@12
    move-result v4

    #@13
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@15
    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@18
    move-result v5

    #@19
    add-int/lit8 v5, v5, 0x1

    #@1b
    if-le v4, v5, :cond_2

    #@1d
    .line 501
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1f
    const-string/jumbo v5, "too much data for RSA block"

    #@22
    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@25
    throw v4

    #@26
    .line 506
    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@28
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    #@2b
    move-result v4

    #@2c
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2e
    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@31
    move-result v5

    #@32
    if-le v4, v5, :cond_2

    #@34
    .line 508
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@36
    const-string/jumbo v5, "too much data for RSA block"

    #@39
    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v4

    #@3d
    .line 516
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@3f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@42
    move-result-object v0

    #@43
    .line 518
    .local v0, "bytes":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@45
    array-length v5, v0

    #@46
    const/4 v6, 0x0

    #@47
    invoke-interface {v4, v0, v6, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    move-result-object v3

    #@4b
    .line 526
    .local v3, "out":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@4d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@50
    .line 529
    const/4 v2, 0x0

    #@51
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@52
    if-eq v2, v4, :cond_3

    #@54
    .line 531
    add-int v4, p5, v2

    #@56
    aget-byte v5, v3, v2

    #@58
    aput-byte v5, p4, v4

    #@5a
    .line 529
    add-int/lit8 v2, v2, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 521
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "out":[B
    :catch_0
    move-exception v1

    #@5e
    .line 522
    .local v1, "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    :try_start_1
    new-instance v4, Ljavax/crypto/BadPaddingException;

    #@60
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@67
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    .line 525
    .end local v1    # "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    :catchall_0
    move-exception v4

    #@69
    .line 526
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@6b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@6e
    .line 525
    throw v4

    #@6f
    .line 534
    .restart local v0    # "bytes":[B
    .restart local v2    # "i":I
    .restart local v3    # "out":[B
    :cond_3
    array-length v4, v3

    #@70
    return v4
.end method

.method protected engineDoFinal([BII)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    if-eqz p1, :cond_0

    #@2
    .line 452
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@7
    .line 455
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@9
    instance-of v2, v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 457
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    #@12
    move-result v2

    #@13
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@15
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@18
    move-result v3

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    if-le v2, v3, :cond_2

    #@1d
    .line 459
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1f
    const-string/jumbo v3, "too much data for RSA block"

    #@22
    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 464
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@28
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    #@2b
    move-result v2

    #@2c
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2e
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@31
    move-result v3

    #@32
    if-le v2, v3, :cond_2

    #@34
    .line 466
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@36
    const-string/jumbo v3, "too much data for RSA block"

    #@39
    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 472
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@3f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@42
    move-result-object v0

    #@43
    .line 474
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@45
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@48
    .line 476
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@4a
    array-length v3, v0

    #@4b
    const/4 v4, 0x0

    #@4c
    invoke-interface {v2, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    move-result-object v2

    #@50
    return-object v2

    #@51
    .line 479
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    #@52
    .line 480
    .local v1, "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v2, Ljavax/crypto/BadPaddingException;

    #@54
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2
.end method

.method protected engineGetBlockSize()I
    .locals 3

    #@0
    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 107
    :catch_0
    move-exception v0

    #@8
    .line 108
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v2, "RSA Cipher not initialised"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 4
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    .line 115
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateKey;

    #@2
    if-eqz v2, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 117
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    #@7
    .line 119
    .local v0, "k":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    #@e
    move-result v2

    #@f
    return v2

    #@10
    .line 121
    .end local v0    # "k":Ljava/security/interfaces/RSAPrivateKey;
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    #@12
    if-eqz v2, :cond_1

    #@14
    move-object v1, p1

    #@15
    .line 123
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    #@17
    .line 125
    .local v1, "k":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 128
    .end local v1    # "k":Ljava/security/interfaces/RSAPublicKey;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v3, "not an RSA key!"

    #@25
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2
.end method

.method protected engineGetOutputSize(I)I
    .locals 3
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 139
    :catch_0
    move-exception v0

    #@8
    .line 140
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v2, "RSA Cipher not initialised"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    #@0
    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 148
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@a
    const-string/jumbo v2, "OAEP"

    #@d
    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    #@13
    .line 153
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    #@15
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@17
    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    #@1c
    return-object v1

    #@1d
    .line 156
    :catch_0
    move-exception v0

    #@1e
    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@20
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
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

    #@0
    .prologue
    .line 357
    const/4 v1, 0x0

    #@1
    .line 359
    .local v1, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_0

    #@3
    .line 363
    :try_start_0
    const-class v2, Ljavax/crypto/spec/OAEPParameterSpec;

    #@5
    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 371
    .end local v1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    #@b
    .line 372
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@e
    .line 355
    return-void

    #@f
    .line 366
    .restart local v1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v0

    #@10
    .line 367
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "cannot recognise parameters: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v0}, Ljava/security/spec/InvalidParameterSpecException;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    const/4 v1, 0x0

    #@1
    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    #@3
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 379
    return-void

    #@7
    .line 386
    :catch_0
    move-exception v0

    #@8
    .line 388
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Eeeek! "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 10
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

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 255
    if-eqz p3, :cond_0

    #@3
    instance-of v6, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    #@5
    if-eqz v6, :cond_b

    #@7
    .line 257
    :cond_0
    instance-of v6, p2, Ljava/security/interfaces/RSAPublicKey;

    #@9
    if-eqz v6, :cond_3

    #@b
    .line 259
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    #@d
    if-eqz v6, :cond_1

    #@f
    if-ne p1, v9, :cond_1

    #@11
    .line 261
    new-instance v6, Ljava/security/InvalidKeyException;

    #@13
    .line 262
    const-string/jumbo v7, "mode 1 requires RSAPrivateKey"

    #@16
    .line 261
    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@19
    throw v6

    #@1a
    .line 265
    :cond_1
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    #@1c
    .end local p2    # "key":Ljava/security/Key;
    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@1f
    move-result-object v3

    #@20
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v4, v3

    #@21
    .line 282
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v4, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    if-eqz p3, :cond_a

    #@23
    move-object v5, p3

    #@24
    .line 284
    check-cast v5, Ljavax/crypto/spec/OAEPParameterSpec;

    #@26
    .line 286
    .local v5, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@28
    .line 288
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    const-string/jumbo v7, "MGF1"

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v6

    #@33
    if-nez v6, :cond_2

    #@35
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v6

    #@43
    if-eqz v6, :cond_6

    #@45
    .line 293
    :cond_2
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    #@48
    move-result-object v6

    #@49
    instance-of v6, v6, Ljava/security/spec/MGF1ParameterSpec;

    #@4b
    if-nez v6, :cond_7

    #@4d
    .line 295
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@4f
    const-string/jumbo v7, "unkown MGF parameters"

    #@52
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@55
    throw v6

    #@56
    .line 267
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v5    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    .restart local p2    # "key":Ljava/security/Key;
    :cond_3
    instance-of v6, p2, Ljava/security/interfaces/RSAPrivateKey;

    #@58
    if-eqz v6, :cond_5

    #@5a
    .line 269
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    #@5c
    if-eqz v6, :cond_4

    #@5e
    if-ne p1, v9, :cond_4

    #@60
    .line 271
    new-instance v6, Ljava/security/InvalidKeyException;

    #@62
    .line 272
    const-string/jumbo v7, "mode 2 requires RSAPublicKey"

    #@65
    .line 271
    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@68
    throw v6

    #@69
    .line 275
    :cond_4
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    #@6b
    .end local p2    # "key":Ljava/security/Key;
    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@6e
    move-result-object v3

    #@6f
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v4, v3

    #@70
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@71
    .line 279
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2    # "key":Ljava/security/Key;
    :cond_5
    new-instance v6, Ljava/security/InvalidKeyException;

    #@73
    const-string/jumbo v7, "unknown key type passed to RSA"

    #@76
    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@79
    throw v6

    #@7a
    .line 290
    .end local p2    # "key":Ljava/security/Key;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v5    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_6
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@7c
    const-string/jumbo v7, "unknown mask generation function specified"

    #@7f
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@82
    throw v6

    #@83
    .line 298
    :cond_7
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    invoke-static {v6}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    #@8a
    move-result-object v0

    #@8b
    .line 300
    .local v0, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    if-nez v0, :cond_8

    #@8d
    .line 302
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@8f
    new-instance v7, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v8, "no match on digest algorithm: "

    #@97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@9e
    move-result-object v8

    #@9f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v7

    #@a3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v7

    #@a7
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v6

    #@ab
    .line 305
    :cond_8
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    #@ae
    move-result-object v2

    #@af
    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    #@b1
    .line 306
    .local v2, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@b4
    move-result-object v6

    #@b5
    invoke-static {v6}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    #@b8
    move-result-object v1

    #@b9
    .line 308
    .local v1, "mgfDigest":Lcom/android/org/bouncycastle/crypto/Digest;
    if-nez v1, :cond_9

    #@bb
    .line 310
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@bd
    new-instance v7, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v8, "no match on MGF digest algorithm: "

    #@c5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v7

    #@c9
    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@cc
    move-result-object v8

    #@cd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v7

    #@d1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v7

    #@d5
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v6

    #@d9
    .line 313
    :cond_9
    new-instance v7, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    #@db
    new-instance v8, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@dd
    invoke-direct {v8}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    #@e0
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    #@e3
    move-result-object v6

    #@e4
    check-cast v6, Ljavax/crypto/spec/PSource$PSpecified;

    #@e6
    invoke-virtual {v6}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    #@e9
    move-result-object v6

    #@ea
    invoke-direct {v7, v8, v0, v1, v6}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    #@ed
    iput-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@ef
    .line 321
    .end local v0    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v1    # "mgfDigest":Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v2    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .end local v5    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_a
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@f1
    instance-of v6, v6, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@f3
    if-nez v6, :cond_d

    #@f5
    .line 323
    if-eqz p4, :cond_c

    #@f7
    .line 325
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@f9
    invoke-direct {v3, v4, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    #@fc
    .line 333
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@fe
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@101
    .line 335
    packed-switch p1, :pswitch_data_0

    #@104
    .line 346
    new-instance v6, Ljava/security/InvalidParameterException;

    #@106
    new-instance v7, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v8, "unknown opmode "

    #@10e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v7

    #@112
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v7

    #@116
    const-string/jumbo v8, " passed to RSA"

    #@119
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v7

    #@11d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v7

    #@121
    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@124
    throw v6

    #@125
    .line 318
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2    # "key":Ljava/security/Key;
    :cond_b
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@127
    new-instance v7, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string/jumbo v8, "unknown parameter type: "

    #@12f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v7

    #@133
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@136
    move-result-object v8

    #@137
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13a
    move-result-object v8

    #@13b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v7

    #@13f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v7

    #@143
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@146
    throw v6

    #@147
    .line 329
    .end local p2    # "key":Ljava/security/Key;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_c
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@149
    new-instance v6, Ljava/security/SecureRandom;

    #@14b
    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    #@14e
    invoke-direct {v3, v4, v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    #@151
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1

    #@152
    .line 339
    :pswitch_0
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@154
    invoke-interface {v6, v9, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@157
    .line 251
    :goto_2
    return-void

    #@158
    .line 343
    :pswitch_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@15a
    const/4 v7, 0x0

    #@15b
    invoke-interface {v6, v7, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@15e
    goto :goto_2

    #@15f
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_d
    move-object v3, v4

    #@160
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1

    #@161
    .line 335
    nop

    #@162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 169
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 171
    .local v0, "md":Ljava/lang/String;
    const-string/jumbo v1, "NONE"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    const-string/jumbo v1, "ECB"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 173
    :cond_0
    return-void

    #@19
    .line 176
    :cond_1
    const-string/jumbo v1, "1"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 178
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    #@24
    .line 179
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    #@26
    .line 180
    return-void

    #@27
    .line 182
    :cond_2
    const-string/jumbo v1, "2"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 184
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    #@32
    .line 185
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    #@34
    .line 186
    return-void

    #@35
    .line 189
    :cond_3
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "can\'t support mode "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 6
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 198
    .local v0, "pad":Ljava/lang/String;
    const-string/jumbo v1, "NOPADDING"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 200
    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@f
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    #@12
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@14
    .line 194
    :goto_0
    return-void

    #@15
    .line 202
    :cond_0
    const-string/jumbo v1, "PKCS1PADDING"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 204
    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    #@20
    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@22
    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    #@25
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    #@28
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2a
    goto :goto_0

    #@2b
    .line 212
    :cond_1
    const-string/jumbo v1, "OAEPWITHMD5ANDMGF1PADDING"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_2

    #@34
    .line 214
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    #@36
    const-string/jumbo v2, "MD5"

    #@39
    const-string/jumbo v3, "MGF1"

    #@3c
    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    #@3e
    const-string/jumbo v5, "MD5"

    #@41
    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    #@44
    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@46
    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    #@49
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    #@4c
    goto :goto_0

    #@4d
    .line 216
    :cond_2
    const-string/jumbo v1, "OAEPPADDING"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_3

    #@56
    .line 218
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    #@58
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    #@5b
    goto :goto_0

    #@5c
    .line 220
    :cond_3
    const-string/jumbo v1, "OAEPWITHSHA1ANDMGF1PADDING"

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v1

    #@63
    if-nez v1, :cond_4

    #@65
    const-string/jumbo v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_5

    #@6e
    .line 222
    :cond_4
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    #@70
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    #@73
    goto :goto_0

    #@74
    .line 224
    :cond_5
    const-string/jumbo v1, "OAEPWITHSHA224ANDMGF1PADDING"

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v1

    #@7b
    if-nez v1, :cond_6

    #@7d
    const-string/jumbo v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v1

    #@84
    if-eqz v1, :cond_7

    #@86
    .line 226
    :cond_6
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    #@88
    const-string/jumbo v2, "SHA-224"

    #@8b
    const-string/jumbo v3, "MGF1"

    #@8e
    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    #@90
    const-string/jumbo v5, "SHA-224"

    #@93
    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    #@96
    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@98
    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    #@9b
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    #@9e
    goto/16 :goto_0

    #@a0
    .line 228
    :cond_7
    const-string/jumbo v1, "OAEPWITHSHA256ANDMGF1PADDING"

    #@a3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v1

    #@a7
    if-nez v1, :cond_8

    #@a9
    const-string/jumbo v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v1

    #@b0
    if-eqz v1, :cond_9

    #@b2
    .line 230
    :cond_8
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    #@b4
    const-string/jumbo v2, "SHA-256"

    #@b7
    const-string/jumbo v3, "MGF1"

    #@ba
    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    #@bc
    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@be
    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    #@c1
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 232
    :cond_9
    const-string/jumbo v1, "OAEPWITHSHA384ANDMGF1PADDING"

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v1

    #@cd
    if-nez v1, :cond_a

    #@cf
    const-string/jumbo v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    #@d2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v1

    #@d6
    if-eqz v1, :cond_b

    #@d8
    .line 234
    :cond_a
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    #@da
    const-string/jumbo v2, "SHA-384"

    #@dd
    const-string/jumbo v3, "MGF1"

    #@e0
    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    #@e2
    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@e4
    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    #@e7
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 236
    :cond_b
    const-string/jumbo v1, "OAEPWITHSHA512ANDMGF1PADDING"

    #@ef
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f2
    move-result v1

    #@f3
    if-nez v1, :cond_c

    #@f5
    const-string/jumbo v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v1

    #@fc
    if-eqz v1, :cond_d

    #@fe
    .line 238
    :cond_c
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    #@100
    const-string/jumbo v2, "SHA-512"

    #@103
    const-string/jumbo v3, "MGF1"

    #@106
    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    #@108
    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@10a
    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    #@10d
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    #@110
    goto/16 :goto_0

    #@112
    .line 242
    :cond_d
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    #@114
    new-instance v2, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v2

    #@11d
    const-string/jumbo v3, " unavailable with RSA."

    #@120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v2

    #@124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v2

    #@128
    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@12b
    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@5
    .line 426
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@7
    instance-of v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 428
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@10
    move-result v0

    #@11
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@13
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@16
    move-result v1

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    if-le v0, v1, :cond_1

    #@1b
    .line 430
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1d
    const-string/jumbo v1, "too much data for RSA block"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@29
    move-result v0

    #@2a
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2c
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@2f
    move-result v1

    #@30
    if-le v0, v1, :cond_1

    #@32
    .line 437
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@34
    const-string/jumbo v1, "too much data for RSA block"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 441
    :cond_1
    const/4 v0, 0x0

    #@3c
    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@5
    .line 399
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@7
    instance-of v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 401
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@10
    move-result v0

    #@11
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@13
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@16
    move-result v1

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    if-le v0, v1, :cond_1

    #@1b
    .line 403
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1d
    const-string/jumbo v1, "too much data for RSA block"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    #@26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@29
    move-result v0

    #@2a
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2c
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@2f
    move-result v1

    #@30
    if-le v0, v1, :cond_1

    #@32
    .line 410
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@34
    const-string/jumbo v1, "too much data for RSA block"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 414
    :cond_1
    const/4 v0, 0x0

    #@3c
    return-object v0
.end method
