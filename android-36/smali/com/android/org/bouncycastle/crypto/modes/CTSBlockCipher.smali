.class public Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "CTSBlockCipher.java"


# instance fields
.field private blacklist blockSize:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 29
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;

    if-nez v0, :cond_19

    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 36
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 p1, p1, 0x2

    .line 38
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    return-void

    .line 31
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 12

    .line 196
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_c4

    .line 201
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 202
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int v2, v1, v0

    .line 203
    new-array v3, v0, [B

    .line 205
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    const-string v5, "need at least one block of input for CTS"

    const/4 v6, 0x0

    if-eqz v4, :cond_6e

    if-lt v1, v0, :cond_68

    .line 212
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v4, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 214
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    if-le v1, v0, :cond_64

    .line 216
    :goto_26
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v5, v4

    if-eq v1, v5, :cond_34

    sub-int v5, v1, v0

    .line 218
    aget-byte v5, v3, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_34
    move v1, v0

    .line 221
    :goto_35
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    if-eq v1, v4, :cond_48

    .line 223
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    aget-byte v5, v4, v1

    sub-int v7, v1, v0

    aget-byte v7, v3, v7

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 226
    :cond_48
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    instance-of v4, v1, Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    if-eqz v4, :cond_5a

    .line 228
    check-cast v1, Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    .line 230
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v4, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_5f

    .line 234
    :cond_5a
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v4, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_5f
    add-int/2addr p2, v0

    .line 237
    invoke-static {v3, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b8

    .line 241
    :cond_64
    invoke-static {v3, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b8

    .line 209
    :cond_68
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    if-lt v1, v0, :cond_be

    .line 251
    new-array v4, v0, [B

    if-le v1, v0, :cond_ae

    .line 255
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    instance-of v5, v1, Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    if-eqz v5, :cond_86

    .line 257
    check-cast v1, Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    .line 259
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v5, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_8b

    .line 263
    :cond_86
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v5, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_8b
    move v1, v0

    .line 266
    :goto_8c
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    if-eq v1, v5, :cond_9f

    sub-int v5, v1, v0

    .line 268
    aget-byte v7, v3, v5

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    aget-byte v8, v8, v1

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 271
    :cond_9f
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-static {v1, v0, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, v3, v6, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr p2, v0

    .line 274
    invoke-static {v4, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b8

    .line 278
    :cond_ae
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 280
    invoke-static {v3, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    :goto_b8
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 286
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    return p1

    .line 248
    :cond_be
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :cond_c4
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer to small in doFinal"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getOutputSize(I)I
    .registers 2

    .line 75
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p0

    return p1
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3

    .line 53
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 54
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v0, p0

    rem-int v0, p1, v0

    if-nez v0, :cond_d

    .line 58
    array-length p0, p0

    sub-int/2addr p1, p0

    return p1

    :cond_d
    sub-int/2addr p1, v0

    return p1
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 12

    if-ltz p3, :cond_60

    .line 134
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 135
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_19

    add-int/2addr v1, p5

    .line 139
    array-length v2, p4

    if-gt v1, v2, :cond_11

    goto :goto_19

    .line 141
    :cond_11
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v2, v1

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-le p3, v2, :cond_53

    .line 150
    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v3, v4, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 153
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-static {v3, v0, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_36
    if-le p3, v0, :cond_52

    .line 162
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    add-int v5, p5, v1

    invoke-interface {v2, v3, v4, p4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 164
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-static {v2, v0, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_36

    :cond_52
    move v4, v1

    .line 171
    :cond_53
    iget-object p4, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget p5, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    return v4

    .line 131
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
