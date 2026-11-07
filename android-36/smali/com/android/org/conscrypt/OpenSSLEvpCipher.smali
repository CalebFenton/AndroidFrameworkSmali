.class public abstract Lcom/android/org/conscrypt/OpenSSLEvpCipher;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLEvpCipher.java"


# instance fields
.field private blacklist calledUpdate:Z

.field private final blacklist cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

.field private blacklist modeBlockSize:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 6
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 41
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 42
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 58
    return-void
.end method

.method private blacklist reset()V
    .registers 7

    .line 269
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->encodedKey:[B

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->iv:[B

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v5

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 271
    return-void
.end method


# virtual methods
.method blacklist doFinalInternal([BII)I
    .registers 11
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 140
    move v0, p2

    .line 146
    .local v0, "initialOutputOffset":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    if-nez v1, :cond_d

    .line 147
    return v2

    .line 151
    :cond_d
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 153
    .local v1, "bytesLeft":I
    if-lt v1, p3, :cond_18

    .line 154
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v2, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v2

    .local v2, "writtenBytes":I
    goto :goto_28

    .line 156
    .end local v2    # "writtenBytes":I
    :cond_18
    new-array v3, p3, [B

    .line 157
    .local v3, "lastBlock":[B
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v4, v3, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v4

    .line 158
    .local v4, "writtenBytes":I
    if-gt v4, v1, :cond_2f

    .line 161
    if-lez v4, :cond_27

    .line 162
    invoke-static {v3, v2, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    .end local v3    # "lastBlock":[B
    :cond_27
    move v2, v4

    .end local v4    # "writtenBytes":I
    .restart local v2    # "writtenBytes":I
    :goto_28
    add-int/2addr p2, v2

    .line 167
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->reset()V

    .line 169
    sub-int v3, p2, v0

    return v3

    .line 159
    .end local v2    # "writtenBytes":I
    .restart local v3    # "lastBlock":[B
    .restart local v4    # "writtenBytes":I
    :cond_2f
    new-instance v2, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer is too short: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 13
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

    .line 211
    if-eqz p4, :cond_24

    .line 215
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getOutputSizeForFinal(I)I

    move-result v6

    .line 218
    .local v6, "maximumLen":I
    if-lez p3, :cond_17

    .line 219
    nop

    .line 220
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
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->updateInternal([BII[BII)I

    move-result p1

    .line 221
    .local p1, "bytesWritten":I
    add-int p5, v5, p1

    .line 222
    .end local v5    # "outputOffset":I
    .restart local p5    # "outputOffset":I
    sub-int/2addr v6, p1

    goto :goto_1e

    .line 224
    .end local v1    # "input":[B
    .end local v2    # "inputOffset":I
    .end local v3    # "inputLen":I
    .end local v4    # "output":[B
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    :cond_17
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
    .restart local v1    # "input":[B
    .restart local v2    # "inputOffset":I
    .restart local v3    # "inputLen":I
    .restart local v4    # "output":[B
    .restart local v5    # "outputOffset":I
    const/4 p1, 0x0

    .line 227
    .end local v5    # "outputOffset":I
    .local p1, "bytesWritten":I
    .restart local p5    # "outputOffset":I
    :goto_1e
    invoke-virtual {p0, v4, p5, v6}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->doFinalInternal([BII)I

    move-result p2

    add-int/2addr p2, p1

    return p2

    .line 212
    .end local v1    # "input":[B
    .end local v2    # "inputOffset":I
    .end local v3    # "inputLen":I
    .end local v4    # "output":[B
    .end local v6    # "maximumLen":I
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    :cond_24
    move-object v1, p1

    move v2, p2

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .restart local v1    # "input":[B
    .restart local v2    # "inputOffset":I
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "output == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 13
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getOutputSizeForFinal(I)I

    move-result v7

    .line 177
    .local v7, "maximumLen":I
    new-array v5, v7, [B

    .line 180
    .local v5, "output":[B
    const-string v8, "our calculated buffer was too small"

    if-lez p3, :cond_1c

    .line 182
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
    :try_start_f
    invoke-virtual/range {v1 .. v7}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->updateInternal([BII[BII)I

    move-result p1
    :try_end_13
    .catch Ljavax/crypto/ShortBufferException; {:try_start_f .. :try_end_13} :catch_14

    .line 186
    .local p1, "bytesWritten":I
    goto :goto_21

    .line 183
    .end local p1    # "bytesWritten":I
    :catch_14
    move-exception v0

    move-object p1, v0

    .line 185
    .local p1, "e":Ljavax/crypto/ShortBufferException;
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v8, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 188
    .end local v2    # "input":[B
    .end local v3    # "inputOffset":I
    .end local v4    # "inputLen":I
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    :cond_1c
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .restart local v2    # "input":[B
    .restart local v3    # "inputOffset":I
    .restart local v4    # "inputLen":I
    const/4 p1, 0x0

    .line 192
    .local p1, "bytesWritten":I
    :goto_21
    sub-int p2, v7, p1

    :try_start_23
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->doFinalInternal([BII)I

    move-result p2
    :try_end_27
    .catch Ljavax/crypto/ShortBufferException; {:try_start_23 .. :try_end_27} :catch_38

    add-int/2addr p1, p2

    .line 196
    nop

    .line 198
    array-length p2, v5

    if-ne p1, p2, :cond_2d

    .line 199
    return-object v5

    .line 200
    :cond_2d
    if-nez p1, :cond_32

    .line 201
    sget-object p2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object p2

    .line 203
    :cond_32
    const/4 p2, 0x0

    invoke-static {v5, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    return-object p2

    .line 193
    :catch_38
    move-exception v0

    move-object p2, v0

    .line 195
    .local p2, "e":Ljavax/crypto/ShortBufferException;
    new-instance p3, Ljava/lang/RuntimeException;

    invoke-direct {p3, v8, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method blacklist engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 20
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    instance-of v1, v7, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v7

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 67
    .local v1, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    .line 68
    .local v1, "iv":[B
    goto :goto_15

    .line 69
    .end local v1    # "iv":[B
    :cond_14
    const/4 v1, 0x0

    .line 72
    .restart local v1    # "iv":[B
    :goto_15
    array-length v2, v4

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    move-result-wide v2

    .line 74
    .local v2, "cipherType":J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_f9

    .line 79
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v14

    .line 81
    .local v14, "encrypting":Z
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    move-result v15

    .line 82
    .local v15, "expectedIvLength":I
    const-string v5, " mode"

    if-nez v1, :cond_61

    if-eqz v15, :cond_61

    .line 83
    if-eqz v14, :cond_42

    .line 88
    new-array v1, v15, [B

    .line 89
    if-eqz v8, :cond_3e

    .line 90
    invoke-virtual {v8, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_af

    .line 92
    :cond_3e
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_af

    .line 84
    :cond_42
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IV must be specified in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    :cond_61
    if-nez v15, :cond_85

    if-nez v1, :cond_66

    goto :goto_85

    .line 95
    :cond_66
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IV not used in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    :cond_85
    :goto_85
    if-eqz v1, :cond_af

    array-length v5, v1

    if-ne v5, v15, :cond_8b

    goto :goto_af

    .line 97
    :cond_8b
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected IV length of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " but was "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v9, v1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    :cond_af
    :goto_af
    move-object v5, v1

    .end local v1    # "iv":[B
    .local v5, "iv":[B
    iput-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->iv:[B

    .line 103
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->supportsVariableSizeKey()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 104
    iget-object v9, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v10, v2

    .end local v2    # "cipherType":J
    .local v10, "cipherType":J
    invoke-static/range {v9 .. v14}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 105
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    array-length v2, v4

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V

    .line 106
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    move-object/from16 v4, p1

    goto :goto_dd

    .line 108
    .end local v10    # "cipherType":J
    .restart local v2    # "cipherType":J
    :cond_d4
    move-wide v10, v2

    .end local v2    # "cipherType":J
    .restart local v10    # "cipherType":J
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object/from16 v4, p1

    move v6, v14

    .end local v10    # "cipherType":J
    .end local v14    # "encrypting":Z
    .restart local v2    # "cipherType":J
    .local v6, "encrypting":Z
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 112
    .end local v2    # "cipherType":J
    .end local v6    # "encrypting":Z
    .restart local v10    # "cipherType":J
    .restart local v14    # "encrypting":Z
    :goto_dd
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 113
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v2

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    const/4 v6, 0x0

    if-ne v2, v3, :cond_ea

    const/4 v2, 0x1

    goto :goto_eb

    :cond_ea
    move v2, v6

    :goto_eb
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V

    .line 114
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v1

    iput v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    .line 115
    iput-boolean v6, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 116
    return-void

    .line 75
    .end local v5    # "iv":[B
    .end local v10    # "cipherType":J
    .end local v14    # "encrypting":Z
    .end local v15    # "expectedIvLength":I
    .restart local v1    # "iv":[B
    .restart local v2    # "cipherType":J
    :cond_f9
    move-wide v10, v2

    .end local v2    # "cipherType":J
    .restart local v10    # "cipherType":J
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find name for key length = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and mode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method abstract blacklist getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method blacklist getOutputSizeForFinal(I)I
    .registers 7
    .param p1, "inputLen"    # I

    .line 232
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 233
    return p1

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v0

    .line 237
    .local v0, "buffered":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v1

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v1, v2, :cond_17

    .line 238
    add-int v1, v0, p1

    return v1

    .line 240
    :cond_17
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_final_used(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z

    move-result v1

    .line 242
    .local v1, "finalUsed":Z
    add-int v2, p1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    goto :goto_26

    :cond_25
    move v4, v3

    :goto_26
    add-int/2addr v2, v4

    .line 246
    .local v2, "totalLen":I
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v4, v2, v4

    if-nez v4, :cond_35

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_35

    .line 247
    :cond_34
    goto :goto_37

    :cond_35
    :goto_35
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    :goto_37
    add-int/2addr v2, v3

    .line 249
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v3, v2, v3

    sub-int v3, v2, v3

    return v3
.end method

.method blacklist getOutputSizeForUpdate(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getOutputSizeForFinal(I)I

    move-result v0

    return v0
.end method

.method blacklist updateInternal([BII[BII)I
    .registers 15
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 121
    move v0, p5

    .line 123
    .local v0, "intialOutputOffset":I
    array-length v1, p4

    sub-int/2addr v1, p5

    .line 124
    .local v1, "bytesLeft":I
    if-lt v1, p6, :cond_18

    .line 129
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v3, p4

    move v4, p5

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .local v3, "output":[B
    .local v4, "outputOffset":I
    .local v5, "input":[B
    .local v6, "inputOffset":I
    .local v7, "inputLen":I
    invoke-static/range {v2 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I

    move-result p1

    add-int p5, v4, p1

    .line 132
    .end local v4    # "outputOffset":I
    .restart local p5    # "outputOffset":I
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 134
    sub-int p1, p5, v0

    return p1

    .line 125
    .end local v3    # "output":[B
    .end local v5    # "input":[B
    .end local v6    # "inputOffset":I
    .end local v7    # "inputLen":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    :cond_18
    move-object v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .restart local v5    # "input":[B
    .restart local v6    # "inputOffset":I
    .restart local v7    # "inputLen":I
    new-instance p1, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "output buffer too small during update: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
