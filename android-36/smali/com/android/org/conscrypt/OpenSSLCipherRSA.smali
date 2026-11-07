.class public abstract Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$Raw;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$PKCS1;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;
    }
.end annotation


# instance fields
.field private blacklist buffer:[B

.field private blacklist bufferOffset:I

.field blacklist encrypting:Z

.field private blacklist inputTooLarge:Z

.field blacklist key:Lcom/android/org/conscrypt/OpenSSLKey;

.field blacklist padding:I

.field blacklist usingPrivateKey:Z


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "padding"    # I

    .line 93
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 94
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 95
    return-void
.end method


# virtual methods
.method blacklist doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method abstract blacklist doCryptoOperation([B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 11
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

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object v0

    .line 334
    .local v0, "b":[B
    array-length v1, v0

    add-int/2addr v1, p5

    .line 335
    .local v1, "lastOffset":I
    array-length v2, p4

    if-gt v1, v2, :cond_10

    .line 340
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    array-length v2, v0

    return v2

    .line 336
    :cond_10
    new-instance v2, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output buffer is too small "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 295
    if-eqz p1, :cond_5

    .line 296
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    .line 299
    :cond_5
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    if-nez v0, :cond_4b

    .line 304
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    .line 305
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    .line 306
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 307
    .local v0, "tmpBuf":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_34

    .line 309
    .end local v0    # "tmpBuf":[B
    :cond_29
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .restart local v0    # "tmpBuf":[B
    goto :goto_34

    .line 312
    .end local v0    # "tmpBuf":[B
    :cond_32
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    .line 315
    .restart local v0    # "tmpBuf":[B
    :goto_34
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 316
    .local v1, "output":[B
    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->doCryptoOperation([B[B)I

    move-result v3

    .line 317
    .local v3, "resultSize":I
    iget-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-nez v4, :cond_48

    array-length v4, v1

    if-eq v3, v4, :cond_48

    .line 318
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 321
    :cond_48
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    .line 322
    return-object v1

    .line 300
    .end local v0    # "tmpBuf":[B
    .end local v1    # "output":[B
    .end local v3    # "resultSize":I
    :cond_4b
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input must be under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_9

    .line 125
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    return v0

    .line 127
    :cond_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 2

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 221
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v0, :cond_10

    .line 222
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 224
    :cond_10
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_20

    .line 225
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 227
    :cond_20
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_30

    .line 228
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 230
    :cond_30
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v0, :cond_40

    .line 231
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 233
    :cond_40
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_50

    .line 234
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 236
    :cond_50
    if-nez p1, :cond_5a

    .line 237
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "RSA private or public key is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_5a
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Need RSA private or public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .line 132
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_9

    .line 133
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    return v0

    .line 135
    :cond_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 8
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

    .line 265
    if-nez p3, :cond_7

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 271
    return-void

    .line 266
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_6

    .line 248
    nop

    .line 249
    return-void

    .line 246
    :catch_6
    move-exception v0

    .line 247
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Algorithm parameters rejected when none supplied"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 8
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

    .line 254
    if-nez p3, :cond_6

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 260
    return-void

    .line 255
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2b

    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    goto :goto_2b

    .line 178
    :cond_8
    const/4 v2, 0x2

    if-eq p1, v2, :cond_28

    const/4 v2, 0x4

    if-ne p1, v2, :cond_f

    goto :goto_28

    .line 181
    :cond_f
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

    .line 179
    :cond_28
    :goto_28
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    goto :goto_2d

    .line 177
    :cond_2b
    :goto_2b
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    .line 184
    :goto_2d
    instance-of v2, p2, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v2, :cond_3d

    .line 185
    move-object v2, p2

    check-cast v2, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 186
    .local v2, "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 187
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 188
    .end local v2    # "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    goto :goto_7d

    :cond_3d
    instance-of v2, p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_4d

    .line 189
    move-object v2, p2

    check-cast v2, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 190
    .local v2, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 191
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 192
    .end local v2    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    goto :goto_7d

    :cond_4d
    instance-of v2, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_5d

    .line 193
    move-object v2, p2

    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    .line 194
    .local v2, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 195
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 196
    .end local v2    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    goto :goto_7d

    :cond_5d
    instance-of v1, p2, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v1, :cond_6d

    .line 197
    move-object v1, p2

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    .line 198
    .local v1, "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 199
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 200
    .end local v1    # "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    goto :goto_7d

    :cond_6d
    instance-of v1, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_93

    .line 201
    move-object v1, p2

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 202
    .local v1, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 203
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 204
    .end local v1    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    nop

    .line 212
    :goto_7d
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    .line 213
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    .line 214
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    .line 216
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 217
    return-void

    .line 205
    :cond_93
    if-nez p2, :cond_9d

    .line 206
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "RSA private or public key is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_9d
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Need RSA private or public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 99
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "modeUpper":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "ECB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_30

    .line 104
    :cond_17
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_30
    :goto_30
    return-void
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 6
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 109
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "paddingUpper":Ljava/lang/String;
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 111
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 112
    return-void

    .line 114
    :cond_12
    const-string v1, "NOPADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 115
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 116
    return-void

    .line 119
    :cond_1e
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "padding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

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

    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLCipherRSA;
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
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLCipherRSA;
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
    .registers 7
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

    .line 288
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 275
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_e

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    .line 277
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0

    .line 280
    :cond_e
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    .line 282
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0
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

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

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

.method blacklist isInitialized()Z
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist keySizeBytes()I
    .registers 3

    .line 148
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 151
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    return v0

    .line 149
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist paddedBlockSizeBytes()I
    .registers 4

    .line 139
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    .line 140
    .local v0, "paddedBlockSizeBytes":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 141
    add-int/lit8 v0, v0, -0x1

    .line 142
    add-int/lit8 v0, v0, -0xa

    .line 144
    :cond_d
    return v0
.end method
