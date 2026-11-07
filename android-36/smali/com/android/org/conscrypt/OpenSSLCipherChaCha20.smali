.class public Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLCipherChaCha20.java"


# static fields
.field private static final blacklist BLOCK_SIZE_BYTES:I = 0x40

.field private static final blacklist NONCE_SIZE_BYTES:I = 0xc


# instance fields
.field private blacklist blockCounter:I

.field private blacklist currentBlockConsumedBytes:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 47
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 49
    return-void
.end method

.method private blacklist reset()V
    .registers 2

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 166
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 167
    return-void
.end method


# virtual methods
.method blacklist checkSupportedKeySize(I)V
    .registers 5
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 176
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 180
    return-void

    .line 177
    :cond_5
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes (must be 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->NONE:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_5

    .line 187
    return-void

    .line 185
    :cond_5
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Mode must be NONE"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 4
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, v0, :cond_5

    .line 194
    return-void

    .line 192
    :cond_5
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Must be NoPadding"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 143
    if-eqz p4, :cond_21

    .line 147
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->getOutputSizeForFinal(I)I

    move-result v6

    .line 150
    .local v6, "maximumLen":I
    if-lez p3, :cond_17

    .line 151
    nop

    .line 152
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
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->updateInternal([BII[BII)I

    move-result p1

    .line 153
    .local p1, "bytesWritten":I
    add-int p5, v5, p1

    .line 154
    .end local v5    # "outputOffset":I
    .restart local p5    # "outputOffset":I
    sub-int/2addr v6, p1

    goto :goto_1d

    .line 156
    .end local v1    # "input":[B
    .end local v2    # "inputOffset":I
    .end local v3    # "inputLen":I
    .end local v4    # "output":[B
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    :cond_17
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

    .line 159
    .end local v5    # "outputOffset":I
    .local p1, "bytesWritten":I
    .restart local p5    # "outputOffset":I
    :goto_1d
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->reset()V

    .line 161
    return p1

    .line 144
    .end local v1    # "input":[B
    .end local v2    # "inputOffset":I
    .end local v3    # "inputLen":I
    .end local v4    # "output":[B
    .end local v6    # "maximumLen":I
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    :cond_21
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
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->getOutputSizeForFinal(I)I

    move-result v7

    .line 114
    .local v7, "maximumLen":I
    new-array v5, v7, [B

    .line 117
    .local v5, "output":[B
    if-lez p3, :cond_1c

    .line 119
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
    :try_start_d
    invoke-virtual/range {v1 .. v7}, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->updateInternal([BII[BII)I

    move-result p1
    :try_end_11
    .catch Ljavax/crypto/ShortBufferException; {:try_start_d .. :try_end_11} :catch_12

    .line 123
    .local p1, "bytesWritten":I
    goto :goto_20

    .line 120
    .end local p1    # "bytesWritten":I
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 122
    .local p1, "e":Ljavax/crypto/ShortBufferException;
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "our calculated buffer was too small"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 125
    .end local v2    # "input":[B
    .end local v3    # "inputOffset":I
    .end local v4    # "inputLen":I
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    :cond_1c
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

    .line 128
    .local p1, "bytesWritten":I
    :goto_20
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->reset()V

    .line 130
    array-length p2, v5

    if-ne p1, p2, :cond_27

    .line 131
    return-object v5

    .line 132
    :cond_27
    if-nez p1, :cond_2c

    .line 133
    sget-object p2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object p2

    .line 135
    :cond_2c
    const/4 p2, 0x0

    invoke-static {v5, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    return-object p2
.end method

.method blacklist engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 54
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0xc

    if-eqz v0, :cond_1f

    .line 55
    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 56
    .local v0, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_17

    .line 59
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    .line 60
    .end local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_36

    .line 57
    .restart local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :cond_17
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "IV must be 12 bytes long"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :cond_1f
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 65
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    .line 66
    if-eqz p3, :cond_31

    .line 67
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_36

    .line 69
    :cond_31
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 72
    :goto_36
    return-void

    .line 62
    :cond_37
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IV must be specified when decrypting"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getBaseCipherName()Ljava/lang/String;
    .registers 2

    .line 171
    const-string v0, "ChaCha20"

    return-object v0
.end method

.method blacklist getCipherBlockSize()I
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getOutputSizeForFinal(I)I
    .registers 2
    .param p1, "inputLen"    # I

    .line 203
    return p1
.end method

.method blacklist getOutputSizeForUpdate(I)I
    .registers 2
    .param p1, "inputLen"    # I

    .line 208
    return p1
.end method

.method blacklist updateInternal([BII[BII)I
    .registers 23
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

    .line 77
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v3, p5

    array-length v4, v5

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_6f

    .line 80
    move/from16 v4, p3

    .line 81
    .local v4, "inputLenRemaining":I
    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    if-lez v6, :cond_55

    .line 84
    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    const/16 v7, 0x40

    rsub-int/lit8 v6, v6, 0x40

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 85
    .local v6, "len":I
    new-array v8, v7, [B

    .line 86
    .local v8, "singleBlock":[B
    new-array v10, v7, [B

    .line 87
    .local v10, "singleBlockOut":[B
    iget v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    move-object/from16 v11, p1

    invoke-static {v11, v1, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v13, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->encodedKey:[B

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    iget v15, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x40

    invoke-static/range {v8 .. v15}, Lcom/android/org/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 90
    iget v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    invoke-static {v10, v9, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 92
    iget v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    if-ge v9, v7, :cond_45

    .line 94
    return v6

    .line 96
    :cond_45
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 97
    add-int/2addr v1, v6

    .line 98
    .end local p2    # "inputOffset":I
    .local v1, "inputOffset":I
    add-int/2addr v3, v6

    .line 99
    .end local p5    # "outputOffset":I
    .local v3, "outputOffset":I
    sub-int/2addr v4, v6

    .line 100
    iget v7, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move v6, v3

    move v7, v4

    move v4, v1

    goto :goto_58

    .line 81
    .end local v1    # "inputOffset":I
    .end local v3    # "outputOffset":I
    .end local v6    # "len":I
    .end local v8    # "singleBlock":[B
    .end local v10    # "singleBlockOut":[B
    .restart local p2    # "inputOffset":I
    .restart local p5    # "outputOffset":I
    :cond_55
    move v6, v3

    move v7, v4

    move v4, v1

    .line 102
    .end local p2    # "inputOffset":I
    .end local p5    # "outputOffset":I
    .local v4, "inputOffset":I
    .local v6, "outputOffset":I
    .local v7, "inputLenRemaining":I
    :goto_58
    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->encodedKey:[B

    iget-object v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    iget v10, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 104
    rem-int/lit8 v1, v7, 0x40

    iput v1, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 105
    iget v1, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    div-int/lit8 v3, v7, 0x40

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 106
    return v2

    .line 78
    .end local v4    # "inputOffset":I
    .end local v6    # "outputOffset":I
    .end local v7    # "inputLenRemaining":I
    .restart local p2    # "inputOffset":I
    .restart local p5    # "outputOffset":I
    :cond_6f
    new-instance v4, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v5, "Insufficient output space"

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
