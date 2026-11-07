.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "CTSBlockCipher.java"


# instance fields
.field private blacklist blockSize:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 28
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 29
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;

    if-nez v0, :cond_1b

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 36
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    .line 38
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 40
    return-void

    .line 31
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 12
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 196
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_d9

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 202
    .local v0, "blockSize":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v0

    .line 203
    .local v1, "len":I
    new-array v2, v0, [B

    .line 205
    .local v2, "block":[B
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->forEncryption:Z

    const-string v4, "need at least one block of input for CTS"

    const/4 v5, 0x0

    if-eqz v3, :cond_78

    .line 207
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_72

    .line 212
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 214
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-le v3, v0, :cond_6e

    .line 216
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .local v3, "i":I
    :goto_29
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v4, v4

    if-eq v3, v4, :cond_39

    .line 218
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    sub-int v6, v3, v0

    aget-byte v6, v2, v6

    aput-byte v6, v4, v3

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 221
    .end local v3    # "i":I
    :cond_39
    move v3, v0

    .restart local v3    # "i":I
    :goto_3a
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v3, v4, :cond_4d

    .line 223
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v6, v4, v3

    sub-int v7, v3, v0

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 226
    .end local v3    # "i":I
    :cond_4d
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    instance-of v3, v3, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    if-eqz v3, :cond_61

    .line 228
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    .line 230
    .local v3, "c":Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 231
    .end local v3    # "c":Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    goto :goto_68

    .line 234
    :cond_61
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 237
    :goto_68
    add-int v3, p2, v0

    invoke-static {v2, v5, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_cd

    .line 241
    :cond_6e
    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_cd

    .line 209
    :cond_72
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_78
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_d3

    .line 251
    new-array v3, v0, [B

    .line 253
    .local v3, "lastBlock":[B
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-le v4, v0, :cond_c3

    .line 255
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    instance-of v4, v4, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    if-eqz v4, :cond_96

    .line 257
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    .line 259
    .local v4, "c":Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 260
    .end local v4    # "c":Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    goto :goto_9d

    .line 263
    :cond_96
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 266
    :goto_9d
    move v4, v0

    .local v4, "i":I
    :goto_9e
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v4, v6, :cond_b3

    .line 268
    sub-int v6, v4, v0

    sub-int v7, v4, v0

    aget-byte v7, v2, v7

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v8, v8, v4

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    .line 271
    .end local v4    # "i":I
    :cond_b3
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v2, v5, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 274
    add-int v4, p2, v0

    invoke-static {v3, v5, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_cd

    .line 278
    :cond_c3
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 280
    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    .end local v3    # "lastBlock":[B
    :goto_cd
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 286
    .local v3, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    .line 288
    return v3

    .line 248
    .end local v3    # "offset":I
    :cond_d3
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    .end local v0    # "blockSize":I
    .end local v1    # "len":I
    .end local v2    # "block":[B
    :cond_d9
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer to small in doFinal"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .line 75
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 5
    .param p1, "len"    # I

    .line 53
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 54
    .local v0, "total":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .line 56
    .local v1, "leftOver":I
    if-nez v1, :cond_10

    .line 58
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v0, v2

    return v2

    .line 61
    :cond_10
    sub-int v2, v0, v1

    return v2
.end method

.method public blacklist processByte(B[BI)I
    .registers 10
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "resultLen":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_20

    .line 98
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 104
    :cond_20
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 106
    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 14
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

    .line 129
    if-ltz p3, :cond_6a

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 135
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 137
    .local v1, "length":I
    if-lez v1, :cond_1a

    .line 139
    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_12

    goto :goto_1a

    .line 141
    :cond_12
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    .line 146
    .local v2, "resultLen":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    .line 148
    .local v3, "gapLen":I
    if-le p3, v3, :cond_5d

    .line 150
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 153
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 157
    sub-int/2addr p3, v3

    .line 158
    add-int/2addr p2, v3

    .line 160
    :goto_3f
    if-le p3, v0, :cond_5d

    .line 162
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    add-int v7, p5, v2

    invoke-interface {v4, v5, v6, p4, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 164
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    sub-int/2addr p3, v0

    .line 167
    add-int/2addr p2, v0

    goto :goto_3f

    .line 171
    :cond_5d
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 175
    return v2

    .line 131
    .end local v0    # "blockSize":I
    .end local v1    # "length":I
    .end local v2    # "resultLen":I
    .end local v3    # "gapLen":I
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
