.class public abstract Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$PKCS1;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$Raw;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field private encrypting:Z

.field private inputTooLarge:Z

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private padding:I

.field private usingPrivateKey:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "padding"    # I

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    #@3
    .line 81
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@6
    .line 84
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@8
    .line 83
    return-void
.end method

.method private engineInitInternal(ILjava/security/Key;)V
    .locals 8
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 155
    if-eq p1, v7, :cond_0

    #@4
    const/4 v5, 0x3

    #@5
    if-ne p1, v5, :cond_1

    #@7
    .line 156
    :cond_0
    iput-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    #@9
    .line 163
    :goto_0
    instance-of v5, p2, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@b
    if-eqz v5, :cond_4

    #@d
    move-object v0, p2

    #@e
    .line 164
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@10
    .line 165
    .local v0, "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    iput-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    #@12
    .line 166
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@15
    move-result-object v5

    #@16
    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@18
    .line 187
    .end local v0    # "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :goto_1
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@1a
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@1d
    move-result-object v5

    #@1e
    invoke-static {v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@21
    move-result v5

    #@22
    new-array v5, v5, [B

    #@24
    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@26
    .line 188
    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@28
    .line 189
    iput-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    #@2a
    .line 154
    return-void

    #@2b
    .line 157
    :cond_1
    const/4 v5, 0x2

    #@2c
    if-eq p1, v5, :cond_2

    #@2e
    const/4 v5, 0x4

    #@2f
    if-ne p1, v5, :cond_3

    #@31
    .line 158
    :cond_2
    iput-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    #@33
    goto :goto_0

    #@34
    .line 160
    :cond_3
    new-instance v5, Ljava/security/InvalidParameterException;

    #@36
    new-instance v6, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v7, "Unsupported opmode "

    #@3e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v5

    #@4e
    .line 167
    :cond_4
    instance-of v5, p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@50
    if-eqz v5, :cond_5

    #@52
    move-object v1, p2

    #@53
    .line 168
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@55
    .line 169
    .local v1, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    iput-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    #@57
    .line 170
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@5a
    move-result-object v5

    #@5b
    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@5d
    goto :goto_1

    #@5e
    .line 171
    .end local v1    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_5
    instance-of v5, p2, Ljava/security/interfaces/RSAPrivateKey;

    #@60
    if-eqz v5, :cond_6

    #@62
    move-object v2, p2

    #@63
    .line 172
    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    #@65
    .line 173
    .local v2, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    iput-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    #@67
    .line 174
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@6a
    move-result-object v5

    #@6b
    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@6d
    goto :goto_1

    #@6e
    .line 175
    .end local v2    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_6
    instance-of v5, p2, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@70
    if-eqz v5, :cond_7

    #@72
    move-object v3, p2

    #@73
    .line 176
    check-cast v3, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@75
    .line 177
    .local v3, "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    iput-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    #@77
    .line 178
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@7a
    move-result-object v5

    #@7b
    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@7d
    goto :goto_1

    #@7e
    .line 179
    .end local v3    # "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :cond_7
    instance-of v5, p2, Ljava/security/interfaces/RSAPublicKey;

    #@80
    if-eqz v5, :cond_8

    #@82
    move-object v4, p2

    #@83
    .line 180
    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    #@85
    .line 181
    .local v4, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    iput-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    #@87
    .line 182
    invoke-static {v4}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@8a
    move-result-object v5

    #@8b
    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@8d
    goto :goto_1

    #@8e
    .line 184
    .end local v4    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_8
    new-instance v5, Ljava/security/InvalidKeyException;

    #@90
    const-string/jumbo v6, "Need RSA private or public key"

    #@93
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@96
    throw v5
.end method

.method private keySizeBytes()I
    .locals 2

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "cipher is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@f
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private paddedBlockSizeBytes()I
    .locals 3

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    #@3
    move-result v0

    #@4
    .line 130
    .local v0, "paddedBlockSizeBytes":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@6
    const/4 v2, 0x1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 131
    add-int/lit8 v0, v0, -0x1

    #@b
    .line 132
    add-int/lit8 v0, v0, -0xa

    #@d
    .line 134
    :cond_0
    return v0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 5
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
    .line 298
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    #@3
    move-result-object v0

    #@4
    .line 300
    .local v0, "b":[B
    array-length v2, v0

    #@5
    add-int v1, p5, v2

    #@7
    .line 301
    .local v1, "lastOffset":I
    array-length v2, p4

    #@8
    if-le v1, v2, :cond_0

    #@a
    .line 302
    new-instance v2, Ljavax/crypto/ShortBufferException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "output buffer is too small "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    array-length v4, p4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, " < "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 306
    :cond_0
    array-length v2, v0

    #@31
    const/4 v3, 0x0

    #@32
    invoke-static {v0, v3, p4, p5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@35
    .line 307
    array-length v2, v0

    #@36
    return v2
.end method

.method protected engineDoFinal([BII)[B
    .locals 9
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
    const/4 v8, 0x0

    #@1
    .line 241
    if-eqz p1, :cond_0

    #@3
    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    #@6
    .line 245
    :cond_0
    iget-boolean v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 246
    new-instance v5, Ljavax/crypto/IllegalBlockSizeException;

    #@c
    new-instance v6, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v7, "input must be under "

    #@14
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@1a
    array-length v7, v7

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    const-string/jumbo v7, " bytes"

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-direct {v5, v6}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v5

    #@2e
    .line 250
    :cond_1
    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@30
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@32
    array-length v6, v6

    #@33
    if-eq v5, v6, :cond_4

    #@35
    .line 251
    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@37
    const/4 v6, 0x3

    #@38
    if-ne v5, v6, :cond_3

    #@3a
    .line 252
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@3c
    array-length v5, v5

    #@3d
    new-array v4, v5, [B

    #@3f
    .line 253
    .local v4, "tmpBuf":[B
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@41
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@43
    array-length v6, v6

    #@44
    iget v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@46
    sub-int/2addr v6, v7

    #@47
    iget v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@49
    invoke-static {v5, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4c
    .line 261
    :goto_0
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@4e
    array-length v5, v5

    #@4f
    new-array v2, v5, [B

    #@51
    .line 263
    .local v2, "output":[B
    iget-boolean v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    #@53
    if-eqz v5, :cond_6

    #@55
    .line 264
    iget-boolean v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    #@57
    if-eqz v5, :cond_5

    #@59
    .line 265
    array-length v5, v4

    #@5a
    .line 266
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@5c
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5f
    move-result-object v6

    #@60
    iget v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@62
    .line 265
    invoke-static {v5, v4, v2, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    #@65
    move-result v3

    #@66
    .line 286
    .local v3, "resultSize":I
    :goto_1
    iget-boolean v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    #@68
    if-nez v5, :cond_2

    #@6a
    array-length v5, v2

    #@6b
    if-eq v3, v5, :cond_2

    #@6d
    .line 287
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    #@70
    move-result-object v2

    #@71
    .line 290
    :cond_2
    iput v8, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@73
    .line 291
    return-object v2

    #@74
    .line 255
    .end local v2    # "output":[B
    .end local v3    # "resultSize":I
    .end local v4    # "tmpBuf":[B
    :cond_3
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@76
    iget v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@78
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    #@7b
    move-result-object v4

    #@7c
    .restart local v4    # "tmpBuf":[B
    goto :goto_0

    #@7d
    .line 258
    .end local v4    # "tmpBuf":[B
    :cond_4
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@7f
    .restart local v4    # "tmpBuf":[B
    goto :goto_0

    #@80
    .line 268
    .restart local v2    # "output":[B
    :cond_5
    array-length v5, v4

    #@81
    .line 269
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@83
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@86
    move-result-object v6

    #@87
    iget v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@89
    .line 268
    invoke-static {v5, v4, v2, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    #@8c
    move-result v3

    #@8d
    .restart local v3    # "resultSize":I
    goto :goto_1

    #@8e
    .line 273
    .end local v3    # "resultSize":I
    :cond_6
    :try_start_0
    iget-boolean v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    #@90
    if-eqz v5, :cond_7

    #@92
    .line 274
    array-length v5, v4

    #@93
    .line 275
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@95
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@98
    move-result-object v6

    #@99
    iget v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@9b
    .line 274
    invoke-static {v5, v4, v2, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    #@9e
    move-result v3

    #@9f
    .restart local v3    # "resultSize":I
    goto :goto_1

    #@a0
    .line 277
    .end local v3    # "resultSize":I
    :cond_7
    array-length v5, v4

    #@a1
    .line 278
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@a3
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@a6
    move-result-object v6

    #@a7
    iget v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@a9
    .line 277
    invoke-static {v5, v4, v2, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    #@ac
    move-result v3

    #@ad
    .restart local v3    # "resultSize":I
    goto :goto_1

    #@ae
    .line 280
    .end local v3    # "resultSize":I
    :catch_0
    move-exception v0

    #@af
    .line 281
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    #@b1
    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    #@b4
    .line 282
    .local v1, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@b7
    .line 283
    throw v1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 115
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    #@0
    .prologue
    .line 146
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 123
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3
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
    .line 211
    if-eqz p3, :cond_0

    #@2
    .line 212
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "unknown param type: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    .line 213
    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 216
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    #@27
    .line 210
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
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
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    #@3
    .line 193
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
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
    .line 200
    if-eqz p3, :cond_0

    #@2
    .line 201
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "unknown param type: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    .line 202
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 205
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    #@27
    .line 199
    return-void
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
    .line 89
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@2
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 90
    .local v0, "modeUpper":Ljava/lang/String;
    const-string/jumbo v1, "NONE"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    const-string/jumbo v1, "ECB"

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 91
    :cond_0
    return-void

    #@19
    .line 94
    :cond_1
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "mode not supported: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@2
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 100
    .local v0, "paddingUpper":Ljava/lang/String;
    const-string/jumbo v1, "PKCS1PADDING"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 101
    const/4 v1, 0x1

    #@10
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@12
    .line 102
    return-void

    #@13
    .line 104
    :cond_0
    const-string/jumbo v1, "NOPADDING"

    #@16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 105
    const/4 v1, 0x3

    #@1d
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    #@1f
    .line 106
    return-void

    #@20
    .line 109
    :cond_1
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "padding not supported: "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@39
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
    .line 326
    :try_start_0
    array-length v5, p1

    #@1
    const/4 v6, 0x0

    #@2
    invoke-virtual {p0, p1, v6, v5}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    #@5
    move-result-object v3

    #@6
    .line 327
    .local v3, "encoded":[B
    const/4 v5, 0x1

    #@7
    if-ne p3, v5, :cond_0

    #@9
    .line 328
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@c
    move-result-object v4

    #@d
    .line 329
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
    .line 330
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :cond_0
    const/4 v5, 0x2

    #@18
    if-ne p3, v5, :cond_1

    #@1a
    .line 331
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1d
    move-result-object v4

    #@1e
    .line 332
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
    .line 333
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :cond_1
    const/4 v5, 0x3

    #@29
    if-ne p3, v5, :cond_2

    #@2b
    .line 334
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    #@2d
    invoke-direct {v5, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@30
    return-object v5

    #@31
    .line 336
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
    .line 338
    .end local v3    # "encoded":[B
    :catch_0
    move-exception v2

    #@4c
    .line 339
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v5, Ljava/security/InvalidKeyException;

    #@4e
    invoke-direct {v5, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@51
    throw v5

    #@52
    .line 342
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v0

    #@53
    .line 343
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    #@55
    invoke-direct {v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@58
    throw v5

    #@59
    .line 340
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    #@5a
    .line 341
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v5, Ljava/security/InvalidKeyException;

    #@5c
    invoke-direct {v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@5f
    throw v5
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1
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
    .line 234
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    #@3
    .line 235
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 221
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@2
    add-int/2addr v0, p3

    #@3
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@5
    array-length v1, v1

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 222
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    #@b
    .line 223
    sget-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@d
    return-object v0

    #@e
    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    #@10
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@12
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@15
    .line 227
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@17
    add-int/2addr v0, p3

    #@18
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    #@1a
    .line 228
    sget-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@1c
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
    .line 313
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3
    move-result-object v1

    #@4
    .line 314
    .local v1, "encoded":[B
    array-length v3, v1

    #@5
    const/4 v4, 0x0

    #@6
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 315
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    #@c
    .line 316
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    #@e
    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    #@11
    .line 317
    .local v2, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@14
    .line 318
    throw v2
.end method
