.class public Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.source "CTSBlockCipher.java"


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    #@3
    .line 26
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@12
    .line 33
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    #@18
    .line 35
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    #@1a
    mul-int/lit8 v0, v0, 0x2

    #@1c
    new-array v0, v0, [B

    #@1e
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@20
    .line 36
    const/4 v0, 0x0

    #@21
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@23
    .line 24
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 11
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 193
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@3
    add-int/2addr v7, p2

    #@4
    array-length v8, p1

    #@5
    if-le v7, v8, :cond_0

    #@7
    .line 195
    new-instance v7, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@9
    const-string/jumbo v8, "output buffer to small in doFinal"

    #@c
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@f
    throw v7

    #@10
    .line 198
    :cond_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@12
    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@15
    move-result v1

    #@16
    .line 199
    .local v1, "blockSize":I
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@18
    sub-int v5, v7, v1

    #@1a
    .line 200
    .local v5, "len":I
    new-array v0, v1, [B

    #@1c
    .line 202
    .local v0, "block":[B
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->forEncryption:Z

    #@1e
    if-eqz v7, :cond_6

    #@20
    .line 204
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@22
    if-ge v7, v1, :cond_1

    #@24
    .line 206
    new-instance v7, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@26
    const-string/jumbo v8, "need at least one block of input for CTS"

    #@29
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v7

    #@2d
    .line 209
    :cond_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2f
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@31
    invoke-interface {v7, v8, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@34
    .line 211
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@36
    if-le v7, v1, :cond_5

    #@38
    .line 213
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@3a
    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@3c
    array-length v7, v7

    #@3d
    if-eq v3, v7, :cond_2

    #@3f
    .line 215
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@41
    sub-int v8, v3, v1

    #@43
    aget-byte v8, v0, v8

    #@45
    aput-byte v8, v7, v3

    #@47
    .line 213
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 218
    :cond_2
    move v3, v1

    #@4b
    :goto_1
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@4d
    if-eq v3, v7, :cond_3

    #@4f
    .line 220
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@51
    aget-byte v8, v7, v3

    #@53
    sub-int v9, v3, v1

    #@55
    aget-byte v9, v0, v9

    #@57
    xor-int/2addr v8, v9

    #@58
    int-to-byte v8, v8

    #@59
    aput-byte v8, v7, v3

    #@5b
    .line 218
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 223
    :cond_3
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@60
    instance-of v7, v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@62
    if-eqz v7, :cond_4

    #@64
    .line 225
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@66
    check-cast v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@68
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@6b
    move-result-object v2

    #@6c
    .line 227
    .local v2, "c":Lcom/android/org/bouncycastle/crypto/BlockCipher;
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@6e
    invoke-interface {v2, v7, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@71
    .line 234
    .end local v2    # "c":Lcom/android/org/bouncycastle/crypto/BlockCipher;
    :goto_2
    add-int v7, p2, v1

    #@73
    invoke-static {v0, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@76
    .line 281
    .end local v3    # "i":I
    :goto_3
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@78
    .line 283
    .local v6, "offset":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    #@7b
    .line 285
    return v6

    #@7c
    .line 231
    .end local v6    # "offset":I
    .restart local v3    # "i":I
    :cond_4
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7e
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@80
    invoke-interface {v7, v8, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@83
    goto :goto_2

    #@84
    .line 238
    .end local v3    # "i":I
    :cond_5
    invoke-static {v0, v10, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@87
    goto :goto_3

    #@88
    .line 243
    :cond_6
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@8a
    if-ge v7, v1, :cond_7

    #@8c
    .line 245
    new-instance v7, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@8e
    const-string/jumbo v8, "need at least one block of input for CTS"

    #@91
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@94
    throw v7

    #@95
    .line 248
    :cond_7
    new-array v4, v1, [B

    #@97
    .line 250
    .local v4, "lastBlock":[B
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@99
    if-le v7, v1, :cond_a

    #@9b
    .line 252
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@9d
    instance-of v7, v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@9f
    if-eqz v7, :cond_8

    #@a1
    .line 254
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@a3
    check-cast v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@a5
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@a8
    move-result-object v2

    #@a9
    .line 256
    .restart local v2    # "c":Lcom/android/org/bouncycastle/crypto/BlockCipher;
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@ab
    invoke-interface {v2, v7, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@ae
    .line 263
    .end local v2    # "c":Lcom/android/org/bouncycastle/crypto/BlockCipher;
    :goto_4
    move v3, v1

    #@af
    .restart local v3    # "i":I
    :goto_5
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@b1
    if-eq v3, v7, :cond_9

    #@b3
    .line 265
    sub-int v7, v3, v1

    #@b5
    sub-int v8, v3, v1

    #@b7
    aget-byte v8, v0, v8

    #@b9
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@bb
    aget-byte v9, v9, v3

    #@bd
    xor-int/2addr v8, v9

    #@be
    int-to-byte v8, v8

    #@bf
    aput-byte v8, v4, v7

    #@c1
    .line 263
    add-int/lit8 v3, v3, 0x1

    #@c3
    goto :goto_5

    #@c4
    .line 260
    .end local v3    # "i":I
    :cond_8
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@c6
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@c8
    invoke-interface {v7, v8, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@cb
    goto :goto_4

    #@cc
    .line 268
    .restart local v3    # "i":I
    :cond_9
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@ce
    invoke-static {v7, v1, v0, v10, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d1
    .line 270
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@d3
    invoke-interface {v7, v0, v10, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@d6
    .line 271
    add-int v7, p2, v1

    #@d8
    invoke-static {v4, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@db
    goto :goto_3

    #@dc
    .line 275
    .end local v3    # "i":I
    :cond_a
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@de
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@e0
    invoke-interface {v7, v8, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@e3
    .line 277
    invoke-static {v0, v10, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e6
    goto :goto_3
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 72
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .param p1, "len"    # I

    #@0
    .prologue
    .line 50
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@2
    add-int v1, p1, v2

    #@4
    .line 51
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@6
    array-length v2, v2

    #@7
    rem-int v0, v1, v2

    #@9
    .line 53
    .local v0, "leftOver":I
    if-nez v0, :cond_0

    #@b
    .line 55
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@d
    array-length v2, v2

    #@e
    sub-int v2, v1, v2

    #@10
    return v2

    #@11
    .line 58
    :cond_0
    sub-int v2, v1, v0

    #@13
    return v2
.end method

.method public processByte(B[BI)I
    .locals 6
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 91
    const/4 v0, 0x0

    #@2
    .line 93
    .local v0, "resultLen":I
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@6
    array-length v2, v2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 95
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@d
    invoke-interface {v1, v2, v5, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@10
    move-result v0

    #@11
    .line 96
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@13
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    #@15
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@17
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    #@19
    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 98
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    #@1e
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@20
    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@22
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@24
    add-int/lit8 v3, v2, 0x1

    #@26
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@28
    aput-byte p1, v1, v2

    #@2a
    .line 103
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 126
    if-gez p3, :cond_0

    #@3
    .line 128
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v5, "Can\'t have a negative input length!"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    #@f
    move-result v0

    #@10
    .line 132
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    #@13
    move-result v2

    #@14
    .line 134
    .local v2, "length":I
    if-lez v2, :cond_1

    #@16
    .line 136
    add-int v4, p5, v2

    #@18
    array-length v5, p4

    #@19
    if-le v4, v5, :cond_1

    #@1b
    .line 138
    new-instance v4, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@1d
    const-string/jumbo v5, "output buffer too short"

    #@20
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@23
    throw v4

    #@24
    .line 142
    :cond_1
    const/4 v3, 0x0

    #@25
    .line 143
    .local v3, "resultLen":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@27
    array-length v4, v4

    #@28
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@2a
    sub-int v1, v4, v5

    #@2c
    .line 145
    .local v1, "gapLen":I
    if-le p3, v1, :cond_2

    #@2e
    .line 147
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@30
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@32
    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@35
    .line 149
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@37
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@39
    invoke-interface {v4, v5, v7, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@3c
    move-result v4

    #@3d
    add-int/lit8 v3, v4, 0x0

    #@3f
    .line 150
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@41
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@43
    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@46
    .line 152
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@48
    .line 154
    sub-int/2addr p3, v1

    #@49
    .line 155
    add-int/2addr p2, v1

    #@4a
    .line 157
    :goto_0
    if-le p3, v0, :cond_2

    #@4c
    .line 159
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@4e
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@50
    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@53
    .line 160
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@55
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@57
    add-int v6, p5, v3

    #@59
    invoke-interface {v4, v5, v7, p4, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@5c
    move-result v4

    #@5d
    add-int/2addr v3, v4

    #@5e
    .line 161
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@60
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@62
    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@65
    .line 163
    sub-int/2addr p3, v0

    #@66
    .line 164
    add-int/2addr p2, v0

    #@67
    goto :goto_0

    #@68
    .line 168
    :cond_2
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    #@6a
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@6c
    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6f
    .line 170
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@71
    add-int/2addr v4, p3

    #@72
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    #@74
    .line 172
    return v3
.end method
