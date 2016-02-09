.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$Mode;,
        Lcom/android/org/conscrypt/OpenSSLCipher$Padding;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
    }
.end annotation


# instance fields
.field private blockSize:I

.field protected encodedKey:[B

.field private encrypting:Z

.field protected iv:[B

.field protected mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field private padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    #@3
    .line 77
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@5
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@7
    .line 82
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@b
    .line 105
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    #@3
    .line 77
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@5
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@7
    .line 82
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@b
    .line 109
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@d
    .line 110
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@f
    .line 111
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getCipherBlockSize()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    #@15
    .line 108
    return-void
.end method

.method private checkAndSetEncodedKey(ILjava/security/Key;)[B
    .locals 4
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 426
    if-eq p1, v2, :cond_0

    #@3
    const/4 v1, 0x3

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 427
    :cond_0
    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    #@8
    .line 434
    :goto_0
    instance-of v1, p2, Ljavax/crypto/SecretKey;

    #@a
    if-nez v1, :cond_4

    #@c
    .line 435
    new-instance v1, Ljava/security/InvalidKeyException;

    #@e
    const-string/jumbo v2, "Only SecretKey is supported"

    #@11
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 428
    :cond_1
    const/4 v1, 0x2

    #@16
    if-eq p1, v1, :cond_2

    #@18
    const/4 v1, 0x4

    #@19
    if-ne p1, v1, :cond_3

    #@1b
    .line 429
    :cond_2
    const/4 v1, 0x0

    #@1c
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    #@1e
    goto :goto_0

    #@1f
    .line 431
    :cond_3
    new-instance v1, Ljava/security/InvalidParameterException;

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Unsupported opmode "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 438
    :cond_4
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    #@3c
    move-result-object v0

    #@3d
    .line 439
    .local v0, "encodedKey":[B
    if-nez v0, :cond_5

    #@3f
    .line 440
    new-instance v1, Ljava/security/InvalidKeyException;

    #@41
    const-string/jumbo v2, "key.getEncoded() == null"

    #@44
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 442
    :cond_5
    array-length v1, v0

    #@49
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    #@4c
    .line 443
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    #@4e
    .line 444
    return-object v0
.end method


# virtual methods
.method protected abstract checkSupportedKeySize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected abstract doFinalInternal([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected engineDoFinal([BII[BI)I
    .locals 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    if-nez p4, :cond_0

    #@2
    .line 370
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "output == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 373
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    #@e
    move-result v6

    #@f
    .line 376
    .local v6, "maximumLen":I
    if-lez p3, :cond_1

    #@11
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move v2, p2

    #@14
    move v3, p3

    #@15
    move-object v4, p4

    #@16
    move v5, p5

    #@17
    .line 377
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    #@1a
    move-result v7

    #@1b
    .line 379
    .local v7, "bytesWritten":I
    add-int/2addr p5, v7

    #@1c
    .line 380
    sub-int/2addr v6, v7

    #@1d
    .line 385
    :goto_0
    invoke-virtual {p0, p4, p5, v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I

    #@20
    move-result v0

    #@21
    add-int/2addr v0, v7

    #@22
    return v0

    #@23
    .line 382
    .end local v7    # "bytesWritten":I
    :cond_1
    const/4 v7, 0x0

    #@24
    .restart local v7    # "bytesWritten":I
    goto :goto_0
.end method

.method protected engineDoFinal([BII)[B
    .locals 10
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
    const/4 v9, 0x0

    #@1
    .line 333
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    #@4
    move-result v6

    #@5
    .line 335
    .local v6, "maximumLen":I
    new-array v4, v6, [B

    #@7
    .line 338
    .local v4, "output":[B
    if-lez p3, :cond_0

    #@9
    .line 340
    const/4 v5, 0x0

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move v2, p2

    #@d
    move v3, p3

    #@e
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v7

    #@12
    .line 350
    .local v7, "bytesWritten":I
    :goto_0
    sub-int v0, v6, v7

    #@14
    :try_start_1
    invoke-virtual {p0, v4, v7, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    move-result v0

    #@18
    add-int/2addr v7, v0

    #@19
    .line 356
    array-length v0, v4

    #@1a
    if-ne v7, v0, :cond_1

    #@1c
    .line 357
    return-object v4

    #@1d
    .line 341
    .end local v7    # "bytesWritten":I
    :catch_0
    move-exception v8

    #@1e
    .line 343
    .local v8, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@20
    const-string/jumbo v1, "our calculated buffer was too small"

    #@23
    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    throw v0

    #@27
    .line 346
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    :cond_0
    const/4 v7, 0x0

    #@28
    .restart local v7    # "bytesWritten":I
    goto :goto_0

    #@29
    .line 351
    :catch_1
    move-exception v8

    #@2a
    .line 353
    .restart local v8    # "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@2c
    const-string/jumbo v1, "our calculated buffer was too small"

    #@2f
    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    throw v0

    #@33
    .line 358
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    :cond_1
    if-nez v7, :cond_2

    #@35
    .line 359
    sget-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@37
    return-object v0

    #@38
    .line 361
    :cond_2
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@3b
    move-result-object v0

    #@3c
    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 215
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    #@2
    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    #@2
    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 244
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    #@7
    array-length v3, v3

    #@8
    if-lez v3, :cond_0

    #@a
    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getBaseCipherName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@11
    move-result-object v2

    #@12
    .line 247
    .local v2, "params":Ljava/security/AlgorithmParameters;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    #@14
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 248
    return-object v2

    #@18
    .line 251
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    #@19
    .line 252
    .local v0, "e":Ljava/io/IOException;
    return-object v4

    #@1a
    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@1b
    .line 250
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v4

    #@1c
    .line 255
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    return-object v4
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 4
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
    .line 280
    if-eqz p3, :cond_0

    #@2
    .line 282
    :try_start_0
    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    #@4
    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    .line 291
    :goto_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@b
    .line 278
    return-void

    #@c
    .line 283
    :catch_0
    move-exception v0

    #@d
    .line 284
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@f
    .line 285
    const-string/jumbo v3, "Params must be convertible to IvParameterSpec"

    #@12
    .line 284
    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15
    throw v2

    #@16
    .line 288
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_0
    const/4 v1, 0x0

    #@17
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
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
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    #@3
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v1, v2, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 259
    return-void

    #@a
    .line 263
    :catch_0
    move-exception v0

    #@b
    .line 265
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
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
    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    #@3
    .line 273
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    #@5
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@8
    .line 271
    return-void
.end method

.method protected abstract engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "modeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    .line 186
    .local v1, "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    #@d
    .line 187
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@f
    .line 177
    return-void

    #@10
    .line 181
    .end local v1    # "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    :catch_0
    move-exception v0

    #@11
    .line 182
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "No such mode: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@2a
    .line 183
    .local v2, "newE":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2, v0}, Ljava/security/NoSuchAlgorithmException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2d
    .line 184
    throw v2
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 6
    .param p1, "paddingStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 195
    .local v3, "paddingStrUpper":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    .line 202
    .local v2, "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@d
    .line 203
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@f
    .line 191
    return-void

    #@10
    .line 196
    .end local v2    # "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    :catch_0
    move-exception v0

    #@11
    .line 197
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "No such padding: "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v1, v4}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@2a
    .line 199
    .local v1, "newE":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1, v0}, Ljavax/crypto/NoSuchPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2d
    .line 200
    throw v1
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 8
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    :try_start_0
    array-length v5, p1

    #@1
    const/4 v6, 0x0

    #@2
    invoke-virtual {p0, p1, v6, v5}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

    #@5
    move-result-object v3

    #@6
    .line 405
    .local v3, "encoded":[B
    const/4 v5, 0x1

    #@7
    if-ne p3, v5, :cond_0

    #@9
    .line 406
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@c
    move-result-object v4

    #@d
    .line 407
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    #@f
    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@12
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@15
    move-result-object v5

    #@16
    return-object v5

    #@17
    .line 408
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :cond_0
    const/4 v5, 0x2

    #@18
    if-ne p3, v5, :cond_1

    #@1a
    .line 409
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1d
    move-result-object v4

    #@1e
    .line 410
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@20
    invoke-direct {v5, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@23
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@26
    move-result-object v5

    #@27
    return-object v5

    #@28
    .line 411
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :cond_1
    const/4 v5, 0x3

    #@29
    if-ne p3, v5, :cond_2

    #@2b
    .line 412
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    #@2d
    invoke-direct {v5, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@30
    return-object v5

    #@31
    .line 414
    :cond_2
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "wrappedKeyType == "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v5
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    #@4b
    .line 416
    .end local v3    # "encoded":[B
    :catch_0
    move-exception v2

    #@4c
    .line 417
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v5, Ljava/security/InvalidKeyException;

    #@4e
    invoke-direct {v5, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@51
    throw v5

    #@52
    .line 420
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v0

    #@53
    .line 421
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    #@55
    invoke-direct {v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@58
    throw v5

    #@59
    .line 418
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    #@5a
    .line 419
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v5, Ljava/security/InvalidKeyException;

    #@5c
    invoke-direct {v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@5f
    throw v5
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    #@3
    move-result v6

    #@4
    .local v6, "maximumLen":I
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move-object v4, p4

    #@9
    move v5, p5

    #@a
    .line 327
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 10
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 296
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    #@4
    move-result v6

    #@5
    .line 300
    .local v6, "maximumLen":I
    if-lez v6, :cond_0

    #@7
    .line 301
    new-array v4, v6, [B

    #@9
    .line 308
    .local v4, "output":[B
    :goto_0
    const/4 v5, 0x0

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move v2, p2

    #@d
    move v3, p3

    #@e
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v7

    #@12
    .line 314
    .local v7, "bytesWritten":I
    array-length v0, v4

    #@13
    if-ne v0, v7, :cond_1

    #@15
    .line 315
    return-object v4

    #@16
    .line 303
    .end local v4    # "output":[B
    .end local v7    # "bytesWritten":I
    :cond_0
    sget-object v4, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@18
    .restart local v4    # "output":[B
    goto :goto_0

    #@19
    .line 309
    :catch_0
    move-exception v8

    #@1a
    .line 311
    .local v8, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "calculated buffer size was wrong: "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 316
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v7    # "bytesWritten":I
    :cond_1
    if-nez v7, :cond_2

    #@36
    .line 317
    sget-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@38
    return-object v0

    #@39
    .line 319
    :cond_2
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3
    move-result-object v1

    #@4
    .line 392
    .local v1, "encoded":[B
    array-length v3, v1

    #@5
    const/4 v4, 0x0

    #@6
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 393
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    #@c
    .line 394
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    #@e
    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    #@11
    .line 395
    .local v2, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@14
    .line 396
    throw v2
.end method

.method protected abstract getBaseCipherName()Ljava/lang/String;
.end method

.method protected abstract getCipherBlockSize()I
.end method

.method protected abstract getOutputSizeForFinal(I)I
.end method

.method protected abstract getOutputSizeForUpdate(I)I
.end method

.method protected getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    return-object v0
.end method

.method protected isEncrypting()Z
    .locals 1

    #@0
    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    #@2
    return v0
.end method

.method protected supportsVariableSizeIv()Z
    .locals 1

    #@0
    .prologue
    .line 173
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected supportsVariableSizeKey()Z
    .locals 1

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected abstract updateInternal([BII[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method
