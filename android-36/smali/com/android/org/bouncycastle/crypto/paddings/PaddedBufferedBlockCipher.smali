.class public Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field blacklist padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 36
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 38
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 8

    .line 249
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 252
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    .line 254
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    if-ne v1, v0, :cond_2b

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 256
    array-length v1, p1

    if-gt v0, v1, :cond_20

    .line 263
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 264
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    goto :goto_2c

    .line 258
    :cond_20
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 260
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    move v0, v2

    .line 267
    :goto_2c
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-interface {v1, v3, v4}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 269
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    add-int/2addr p2, v0

    invoke-interface {v1, v3, v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    add-int/2addr v0, p1

    .line 271
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    return v0

    .line 275
    :cond_43
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    if-ne v1, v0, :cond_68

    .line 277
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, v1, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 278
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 289
    :try_start_51
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v3}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    move-result v1

    sub-int/2addr v0, v1

    .line 291
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5f
    .catchall {:try_start_51 .. :try_end_5f} :catchall_63

    .line 295
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    return v0

    :catchall_63
    move-exception p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 296
    throw p1

    .line 282
    :cond_68
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 284
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "last block incomplete in decryption"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getOutputSize(I)I
    .registers 4

    .line 98
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v1, v0

    rem-int v1, p1, v1

    if-nez v1, :cond_11

    .line 103
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    if-eqz p0, :cond_10

    .line 105
    array-length p0, v0

    :goto_f
    add-int/2addr p1, p0

    :cond_10
    return p1

    :cond_11
    sub-int/2addr p1, v1

    .line 111
    array-length p0, v0

    goto :goto_f
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3

    .line 125
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 126
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v0, p0

    rem-int v0, p1, v0

    if-nez v0, :cond_12

    .line 130
    array-length p0, p0

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_12
    sub-int/2addr p1, v0

    return p1
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    .line 67
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 71
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1e

    .line 73
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 77
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void

    .line 81
    :cond_1e
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 83
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 11

    if-ltz p3, :cond_50

    .line 190
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 191
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_19

    add-int/2addr v1, p5

    .line 195
    array-length v2, p4

    if-gt v1, v2, :cond_11

    goto :goto_19

    .line 197
    :cond_11
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v2, v1

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-le p3, v2, :cond_43

    .line 206
    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v3, v4, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 210
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    move v4, v1

    .line 214
    :goto_32
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v1, v1

    if-le p3, v1, :cond_43

    .line 216
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    add-int v2, p5, v4

    invoke-interface {v1, p1, p2, p4, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v4, v1

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_32

    .line 223
    :cond_43
    iget-object p4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget p5, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    return v4

    .line 187
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
