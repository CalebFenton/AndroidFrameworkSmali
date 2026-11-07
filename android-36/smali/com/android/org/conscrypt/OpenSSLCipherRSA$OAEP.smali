.class public Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA512;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA384;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA256;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA224;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA1;
    }
.end annotation


# instance fields
.field private blacklist label:[B

.field private blacklist mgf1Md:J

.field private blacklist oaepMd:J

.field private blacklist oaepMdSizeBytes:I

.field private blacklist pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;


# direct methods
.method public constructor blacklist <init>(JI)V
    .registers 5
    .param p1, "defaultMd"    # J
    .param p3, "defaultMdSizeBytes"    # I

    .line 452
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    .line 453
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    .line 454
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    .line 455
    return-void
.end method

.method private blacklist readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 9
    .param p1, "spec"    # Ljavax/crypto/spec/OAEPParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 574
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "mgfAlgUpper":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 576
    .local v1, "mgfSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v2, "MGF1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 577
    const-string v2, "1.2.840.113549.1.1.8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    :cond_1e
    instance-of v2, v1, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz v2, :cond_75

    .line 583
    move-object v2, v1

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    .line 584
    .local v2, "mgf1spec":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "oaepAlgUpper":Ljava/lang/String;
    :try_start_2f
    invoke-static {v3}, Lcom/android/org/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    .line 587
    nop

    .line 588
    invoke-static {v3}, Lcom/android/org/conscrypt/EvpMdRef;->getDigestSizeBytesByJcaDigestAlgorithmStandardName(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    .line 589
    nop

    .line 590
    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 589
    invoke-static {v4}, Lcom/android/org/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J
    :try_end_47
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2f .. :try_end_47} :catch_6e

    .line 593
    nop

    .line 595
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v4

    .line 596
    .local v4, "pSource":Ljavax/crypto/spec/PSource;
    const-string v5, "PSpecified"

    invoke-virtual {v4}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    instance-of v5, v4, Ljavax/crypto/spec/PSource$PSpecified;

    if-eqz v5, :cond_66

    .line 601
    move-object v5, v4

    check-cast v5, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v5}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    .line 602
    return-void

    .line 598
    :cond_66
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "Only PSpecified accepted for PSource"

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 591
    .end local v4    # "pSource":Ljavax/crypto/spec/PSource;
    :catch_6e
    move-exception v4

    .line 592
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v5, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 579
    .end local v2    # "mgf1spec":Ljava/security/spec/MGF1ParameterSpec;
    .end local v3    # "oaepAlgUpper":Ljava/lang/String;
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_75
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Only MGF1 supported as mask generation function"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method blacklist doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 546
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->encrypting:Z

    if-eqz v1, :cond_11

    .line 547
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_encrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v1

    goto :goto_1b

    .line 548
    :cond_11
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_decrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v1

    :goto_1b
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    .line 550
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_2a

    .line 551
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V

    .line 554
    :cond_2a
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;->address:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    .line 556
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;->address:J

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_md(JJ)V

    .line 557
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;->address:J

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V

    .line 558
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    array-length v0, v0

    if-lez v0, :cond_56

    .line 559
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;->address:J

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_label(J[B)V

    .line 561
    :cond_56
    return-void
.end method

.method blacklist doCryptoOperation([B[B)I
    .registers 10
    .param p1, "tmpBuf"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 607
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->encrypting:Z

    if-eqz v0, :cond_12

    .line 608
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    const/4 v5, 0x0

    array-length v6, p1

    const/4 v3, 0x0

    move-object v4, p1

    move-object v2, p2

    .end local p1    # "tmpBuf":[B
    .end local p2    # "output":[B
    .local v2, "output":[B
    .local v4, "tmpBuf":[B
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_encrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result p1

    move-object v1, v2

    move-object v3, v4

    .end local v2    # "output":[B
    .end local v4    # "tmpBuf":[B
    .local v1, "output":[B
    .local v3, "tmpBuf":[B
    return p1

    .line 610
    .end local v1    # "output":[B
    .end local v3    # "tmpBuf":[B
    .restart local p1    # "tmpBuf":[B
    .restart local p2    # "output":[B
    :cond_12
    move-object v3, p1

    move-object v1, p2

    .end local p1    # "tmpBuf":[B
    .end local p2    # "output":[B
    .restart local v1    # "output":[B
    .restart local v3    # "tmpBuf":[B
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    const/4 v4, 0x0

    array-length v5, v3

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_decrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result p1

    return p1
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 9

    .line 459
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 460
    const/4 v0, 0x0

    return-object v0

    .line 464
    :cond_8
    :try_start_8
    const-string v0, "OAEP"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 467
    .local v0, "params":Ljava/security/AlgorithmParameters;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    if-nez v1, :cond_15

    .line 468
    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    .local v1, "pSrc":Ljavax/crypto/spec/PSource;
    goto :goto_1c

    .line 470
    .end local v1    # "pSrc":Ljavax/crypto/spec/PSource;
    :cond_15
    new-instance v1, Ljavax/crypto/spec/PSource$PSpecified;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    .line 473
    .restart local v1    # "pSrc":Ljavax/crypto/spec/PSource;
    :goto_1c
    new-instance v2, Ljavax/crypto/spec/OAEPParameterSpec;

    iget-wide v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    .line 474
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MGF1"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    .line 477
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 473
    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_37} :catch_41
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_8 .. :try_end_37} :catch_38

    .line 479
    return-object v0

    .line 483
    .end local v0    # "params":Ljava/security/AlgorithmParameters;
    .end local v1    # "pSrc":Ljavax/crypto/spec/PSource;
    :catch_38
    move-exception v0

    .line 484
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No providers of AlgorithmParameters.OAEP available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_41
    move-exception v0

    .line 482
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "OAEP not supported"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    throw v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 9
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

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    if-eqz p3, :cond_16

    .line 518
    :try_start_3
    const-class v1, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_b
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_3 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 522
    goto :goto_16

    .line 519
    :catch_d
    move-exception v1

    .line 520
    .local v1, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Only OAEP parameters are supported"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 525
    .end local v1    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_16
    :goto_16
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 526
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 503
    if-eqz p3, :cond_f

    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_7

    goto :goto_f

    .line 504
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only OAEPParameterSpec accepted in OAEP mode"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_f
    :goto_f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 509
    return-void
.end method

.method blacklist engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 531
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_1a

    .line 535
    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    .line 536
    :cond_d
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_12

    goto :goto_1e

    .line 537
    :cond_12
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only private keys may be used to decrypt"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_1a
    :goto_1a
    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_22

    .line 540
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 541
    return-void

    .line 533
    :cond_22
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only public keys may be used to encrypt"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 5
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 490
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "paddingUpper":Ljava/lang/String;
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 492
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->padding:I

    .line 493
    return-void

    .line 496
    :cond_12
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "Only OAEP padding is supported"

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist paddedBlockSizeBytes()I
    .registers 3

    .line 565
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->keySizeBytes()I

    move-result v0

    .line 569
    .local v0, "paddedBlockSizeBytes":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    return v1
.end method
