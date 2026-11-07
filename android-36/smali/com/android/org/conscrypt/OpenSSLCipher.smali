.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$Mode;,
        Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    }
.end annotation


# instance fields
.field private blacklist blockSize:I

.field blacklist encodedKey:[B

.field private blacklist encrypting:Z

.field blacklist iv:[B

.field blacklist mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field private blacklist padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 100
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 105
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 129
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 131
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 100
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 105
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 132
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 133
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 134
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getCipherBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    .line 135
    return-void
.end method

.method private blacklist checkAndSetEncodedKey(ILjava/security/Key;)[B
    .registers 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 396
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_2b

    .line 398
    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    goto :goto_27

    .line 401
    :cond_e
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opmode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_27
    :goto_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    goto :goto_2d

    .line 397
    :cond_2b
    :goto_2b
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    .line 404
    :goto_2d
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_46

    .line 408
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 409
    .local v0, "encodedKey":[B
    if-eqz v0, :cond_3e

    .line 412
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    .line 413
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    .line 414
    return-object v0

    .line 410
    :cond_3e
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key.getEncoded() == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    .end local v0    # "encodedKey":[B
    :cond_46
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only SecretKey is supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract blacklist checkSupportedKeySize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method abstract blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method abstract blacklist checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 227
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    return v0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    return-object v0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 383
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_1a

    .line 386
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 387
    .local v0, "encodedKey":[B
    if-eqz v0, :cond_12

    .line 390
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    .line 392
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    return v1

    .line 388
    :cond_12
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key.getEncoded() == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    .end local v0    # "encodedKey":[B
    :cond_1a
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only SecretKey is supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 4
    .param p1, "inputLen"    # I

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    array-length v0, v0

    if-lez v0, :cond_21

    .line 258
    :try_start_a
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getBaseCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 259
    .local v0, "params":Ljava/security/AlgorithmParameters;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_1c} :catch_1f
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_a .. :try_end_1c} :catch_1d

    .line 260
    return-object v0

    .line 263
    .end local v0    # "params":Ljava/security/AlgorithmParameters;
    :catch_1d
    move-exception v0

    .line 264
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    return-object v1

    .line 261
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1f
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v1

    .line 267
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_21
    return-object v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6
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

    .line 304
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 305
    .local v0, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 306
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    .line 287
    :try_start_3
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_9} :catch_b

    .line 291
    nop

    .line 292
    return-void

    .line 288
    :catch_b
    move-exception v0

    .line 290
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
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

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    .line 298
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 299
    return-void
.end method

.method abstract blacklist engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "modeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 193
    :try_start_0
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->getNormalized(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_b

    .line 198
    .local v0, "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    nop

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 200
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 201
    return-void

    .line 194
    .end local v0    # "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    :catch_b
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "newE":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1, v0}, Ljava/security/NoSuchAlgorithmException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 197
    throw v1
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 6
    .param p1, "paddingStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 207
    :try_start_0
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->getNormalized(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_b

    .line 213
    .local v0, "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    nop

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 215
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 216
    return-void

    .line 208
    .end local v0    # "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    :catch_b
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such padding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "newE":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1, v0}, Ljavax/crypto/NoSuchPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 212
    throw v1
.end method

.method protected whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 8
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 360
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

    move-result-object v0

    .line 361
    .local v0, "encoded":[B
    const/4 v1, 0x1

    if-ne p3, v1, :cond_17

    .line 362
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 363
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2

    .line 364
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :cond_17
    const/4 v1, 0x2

    if-ne p3, v1, :cond_28

    .line 365
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 366
    .restart local v1    # "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2

    .line 367
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :cond_28
    const/4 v1, 0x3

    if-ne p3, v1, :cond_31

    .line 368
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 370
    :cond_31
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrappedKeyType == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLCipher;
    .end local p1    # "wrappedKey":[B
    .end local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .end local p3    # "wrappedKeyType":I
    throw v1
    :try_end_4a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_4a} :catch_58
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_4a} :catch_51
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_4a} :catch_4a

    .line 376
    .end local v0    # "encoded":[B
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLCipher;
    .restart local p1    # "wrappedKey":[B
    .restart local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .restart local p3    # "wrappedKeyType":I
    :catch_4a
    move-exception v0

    .line 377
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 374
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_51
    move-exception v0

    .line 375
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 372
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_58
    move-exception v0

    .line 373
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 13
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

    .line 340
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v6

    .line 341
    .local v6, "maximumLen":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .local v1, "input":[B
    .local v2, "inputOffset":I
    .local v3, "inputLen":I
    .local v4, "output":[B
    .local v5, "outputOffset":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result p1

    return p1
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 310
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v7

    .line 314
    .local v7, "maximumLen":I
    if-lez v7, :cond_a

    .line 315
    new-array v0, v7, [B

    move-object v5, v0

    .local v0, "output":[B
    goto :goto_d

    .line 317
    .end local v0    # "output":[B
    :cond_a
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    move-object v5, v0

    .line 322
    .local v5, "output":[B
    :goto_d
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .local v2, "input":[B
    .local v3, "inputOffset":I
    .local v4, "inputLen":I
    :try_start_12
    invoke-virtual/range {v1 .. v7}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result p1
    :try_end_16
    .catch Ljavax/crypto/ShortBufferException; {:try_start_12 .. :try_end_16} :catch_26

    .line 326
    .local p1, "bytesWritten":I
    nop

    .line 328
    array-length p2, v5

    if-ne p2, p1, :cond_1b

    .line 329
    return-object v5

    .line 330
    :cond_1b
    if-nez p1, :cond_20

    .line 331
    sget-object p2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object p2

    .line 333
    :cond_20
    const/4 p2, 0x0

    invoke-static {v5, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    return-object p2

    .line 323
    .end local p1    # "bytesWritten":I
    :catch_26
    move-exception v0

    move-object p1, v0

    .line 325
    .local p1, "e":Ljavax/crypto/ShortBufferException;
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculated buffer size was wrong: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected whitelist test-api engineWrap(Ljava/security/Key;)[B
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 347
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 348
    .local v0, "encoded":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

    move-result-object v1
    :try_end_a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 349
    .end local v0    # "encoded":[B
    :catch_b
    move-exception v0

    .line 350
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 351
    .local v1, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 352
    throw v1
.end method

.method abstract blacklist getBaseCipherName()Ljava/lang/String;
.end method

.method abstract blacklist getCipherBlockSize()I
.end method

.method abstract blacklist getOutputSizeForFinal(I)I
.end method

.method abstract blacklist getOutputSizeForUpdate(I)I
.end method

.method blacklist getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method

.method protected blacklist getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 272
    if-eqz p1, :cond_12

    .line 274
    :try_start_2
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 275
    :catch_9
    move-exception v0

    .line 276
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Params must be convertible to IvParameterSpec"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 280
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist isEncrypting()Z
    .registers 2

    .line 418
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    return v0
.end method

.method blacklist supportsVariableSizeIv()Z
    .registers 2

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method blacklist supportsVariableSizeKey()Z
    .registers 2

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method abstract blacklist updateInternal([BII[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method
