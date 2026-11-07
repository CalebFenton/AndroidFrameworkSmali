.class public Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.source "DefaultBufferedBlockCipher.java"


# instance fields
.field protected blacklist buf:[B

.field protected blacklist bufOff:I

.field protected blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field protected blacklist forEncryption:Z

.field protected blacklist mbCipher:Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

.field protected blacklist partialBlockOkay:Z

.field protected blacklist pgpCFB:Z


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 46
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    if-eqz v0, :cond_17

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    .line 49
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    goto :goto_22

    :cond_17
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    .line 54
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    :goto_22
    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 62
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lez v2, :cond_3d

    .line 65
    const-string v4, "PGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    move v4, v3

    goto :goto_3e

    :cond_3d
    move v4, v0

    :goto_3e
    iput-boolean v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-nez v4, :cond_55

    .line 67
    instance-of p1, p1, Lcom/android/org/bouncycastle/crypto/StreamCipher;

    if-eqz p1, :cond_47

    goto :goto_55

    :cond_47
    if-lez v2, :cond_52

    .line 73
    const-string p1, "OpenPGP"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_52

    move v0, v3

    :cond_52
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    return-void

    .line 69
    :cond_55
    :goto_55
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 6

    .line 311
    :try_start_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_2e

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 318
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v0, :cond_22

    .line 323
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v0, v2, v1, v2, v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 324
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 325
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 326
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    goto :goto_2a

    :catchall_20
    move-exception p1

    goto :goto_36

    .line 320
    :cond_22
    new-instance p1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "data not block size aligned"

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_20

    .line 333
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    return v1

    .line 313
    :cond_2e
    :try_start_2e
    new-instance p1, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short for doFinal()"

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_20

    .line 333
    :goto_36
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 334
    throw p1
.end method

.method public blacklist getBlockSize()I
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public blacklist getOutputSize(I)I
    .registers 3

    .line 162
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_15

    .line 164
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    :goto_13
    add-int/2addr p1, p0

    return p1

    .line 168
    :cond_15
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    goto :goto_13
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object p0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3

    .line 129
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 132
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_20

    .line 134
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_1a

    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    goto :goto_25

    .line 140
    :cond_1a
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length p0, p0

    rem-int v0, p1, p0

    goto :goto_25

    .line 145
    :cond_20
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length p0, p0

    rem-int v0, p1, p0

    :goto_25
    sub-int/2addr p1, v0

    return p1
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 3

    .line 101
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 105
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 14

    if-ltz p3, :cond_83

    .line 225
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 226
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_19

    add-int/2addr v1, p5

    .line 230
    array-length v2, p4

    if-gt v1, v2, :cond_11

    goto :goto_19

    .line 232
    :cond_11
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v2, v1

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int/2addr v2, v3

    const/4 v6, 0x0

    if-le p3, v2, :cond_65

    .line 241
    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v3, v6, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v7

    .line 245
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr v2, p2

    .line 249
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    if-eqz p2, :cond_53

    .line 251
    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p2

    div-int v3, p3, p2

    if-lez v3, :cond_51

    .line 255
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    add-int v5, p5, v7

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;->processBlocks([BII[BI)I

    move-result p2

    add-int/2addr v7, p2

    .line 257
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p2

    mul-int/2addr v3, p2

    sub-int/2addr p3, v3

    add-int/2addr v2, v3

    :cond_51
    move p2, v2

    goto :goto_66

    :cond_53
    move p2, v2

    .line 265
    :goto_54
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-le p3, v2, :cond_66

    .line 267
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    add-int v3, p5, v7

    invoke-interface {v2, p1, p2, p4, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v7, v2

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_54

    :cond_65
    move v7, v6

    .line 275
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 279
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length p3, p2

    if-ne p1, p3, :cond_82

    .line 281
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    add-int p3, p5, v7

    invoke-interface {p1, p2, v6, p4, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    add-int/2addr v7, p1

    .line 282
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    :cond_82
    return v7

    .line 222
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 346
    :goto_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 348
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 351
    :cond_c
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 356
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
