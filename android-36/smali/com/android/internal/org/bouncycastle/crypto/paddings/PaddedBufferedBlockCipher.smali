.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field blacklist padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "padding"    # Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 34
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 36
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 38
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 9
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 250
    .local v0, "blockSize":I
    const/4 v1, 0x0

    .line 252
    .local v1, "resultLen":I
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    .line 254
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_2c

    .line 256
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    array-length v4, p1

    if-gt v2, v4, :cond_21

    .line 263
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v4, v3, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 264
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    goto :goto_2c

    .line 258
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 260
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 269
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    add-int v5, p2, v1

    invoke-interface {v2, v4, v3, p1, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    goto :goto_66

    .line 275
    :cond_44
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_6c

    .line 277
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v4, v3, v5, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 278
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 289
    :try_start_54
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    move-result v2

    sub-int/2addr v1, v2

    .line 291
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_62
    .catchall {:try_start_54 .. :try_end_62} :catchall_67

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 296
    nop

    .line 299
    :goto_66
    return v1

    .line 295
    :catchall_67
    move-exception v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 296
    throw v2

    .line 282
    :cond_6c
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 284
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "last block incomplete in decryption"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getOutputSize(I)I
    .registers 6
    .param p1, "len"    # I

    .line 98
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 99
    .local v0, "total":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .line 101
    .local v1, "leftOver":I
    if-nez v1, :cond_14

    .line 103
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_13

    .line 105
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    add-int/2addr v2, v0

    return v2

    .line 108
    :cond_13
    return v0

    .line 111
    :cond_14
    sub-int v2, v0, v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v3, v3

    add-int/2addr v2, v3

    return v2
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 6
    .param p1, "len"    # I

    .line 125
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 126
    .local v0, "total":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .line 128
    .local v1, "leftOver":I
    if-nez v1, :cond_15

    .line 130
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 133
    :cond_15
    sub-int v2, v0, v1

    return v2
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 71
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1f

    .line 73
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 75
    .local v0, "p":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 77
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 78
    .end local v0    # "p":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_2a

    .line 81
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 85
    :goto_2a
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .registers 8
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "resultLen":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_13

    .line 156
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 157
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 160
    :cond_13
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 162
    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 13
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 185
    if-ltz p3, :cond_56

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 191
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 193
    .local v1, "length":I
    if-lez v1, :cond_1a

    .line 195
    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_12

    goto :goto_1a

    .line 197
    :cond_12
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    .line 202
    .local v2, "resultLen":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    .line 204
    .local v3, "gapLen":I
    if-le p3, v3, :cond_49

    .line 206
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 210
    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 211
    sub-int/2addr p3, v3

    .line 212
    add-int/2addr p2, v3

    .line 214
    :goto_38
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_49

    .line 216
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v2

    invoke-interface {v4, p1, p2, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 218
    sub-int/2addr p3, v0

    .line 219
    add-int/2addr p2, v0

    goto :goto_38

    .line 223
    :cond_49
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 227
    return v2

    .line 187
    .end local v0    # "blockSize":I
    .end local v1    # "length":I
    .end local v2    # "resultLen":I
    .end local v3    # "gapLen":I
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
