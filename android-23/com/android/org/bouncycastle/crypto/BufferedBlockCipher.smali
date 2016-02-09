.class public Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;
.source "BufferedBlockCipher.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field protected forEncryption:Z

.field protected partialBlockOkay:Z

.field protected pgpCFB:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@6
    .line 40
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@9
    move-result v2

    #@a
    new-array v2, v2, [B

    #@c
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@e
    .line 41
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@10
    .line 46
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 47
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2f

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@19
    move-result v2

    #@1a
    add-int/lit8 v0, v2, 0x1

    #@1c
    .line 49
    .local v0, "idx":I
    if-lez v0, :cond_1

    #@1e
    const-string/jumbo v2, "PGP"

    #@21
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@24
    move-result v2

    #@25
    :goto_0
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    #@27
    .line 51
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    #@29
    if-nez v2, :cond_0

    #@2b
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 53
    :cond_0
    const/4 v2, 0x1

    #@30
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    #@32
    .line 36
    :goto_1
    return-void

    #@33
    :cond_1
    move v2, v3

    #@34
    .line 49
    goto :goto_0

    #@35
    .line 57
    :cond_2
    if-lez v0, :cond_3

    #@37
    const-string/jumbo v2, "OpenPGP"

    #@3a
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@3d
    move-result v3

    #@3e
    :cond_3
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    #@40
    goto :goto_1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
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
    .line 264
    const/4 v0, 0x0

    #@1
    .line 266
    .local v0, "resultLen":I
    :try_start_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@3
    add-int/2addr v1, p2

    #@4
    array-length v2, p1

    #@5
    if-le v1, v2, :cond_0

    #@7
    .line 268
    new-instance v1, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@9
    const-string/jumbo v2, "output buffer too short for doFinal()"

    #@c
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 287
    :catchall_0
    move-exception v1

    #@11
    .line 288
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    #@14
    .line 287
    throw v1

    #@15
    .line 271
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 273
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 275
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@1f
    const-string/jumbo v2, "data not block size aligned"

    #@22
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@28
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@2a
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@2c
    const/4 v4, 0x0

    #@2d
    const/4 v5, 0x0

    #@2e
    invoke-interface {v1, v2, v4, v3, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@31
    .line 279
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@33
    .line 280
    const/4 v1, 0x0

    #@34
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@36
    .line 281
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@38
    const/4 v2, 0x0

    #@39
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    #@3f
    .line 284
    return v0
.end method

.method public getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 140
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 4
    .param p1, "len"    # I

    #@0
    .prologue
    .line 113
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@2
    add-int v1, p1, v2

    #@4
    .line 116
    .local v1, "total":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 118
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@a
    array-length v2, v2

    #@b
    rem-int v2, v1, v2

    #@d
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@f
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@12
    move-result v3

    #@13
    add-int/lit8 v3, v3, 0x2

    #@15
    sub-int v0, v2, v3

    #@17
    .line 125
    .local v0, "leftOver":I
    :goto_0
    sub-int v2, v1, v0

    #@19
    return v2

    #@1a
    .line 122
    .end local v0    # "leftOver":I
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@1c
    array-length v2, v2

    #@1d
    rem-int v0, v1, v2

    #@1f
    .restart local v0    # "leftOver":I
    goto :goto_0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    #@2
    .line 87
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    #@5
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@a
    .line 83
    return-void
.end method

.method public processByte(B[BI)I
    .locals 5
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
    const/4 v4, 0x0

    #@1
    .line 159
    const/4 v0, 0x0

    #@2
    .line 161
    .local v0, "resultLen":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@6
    add-int/lit8 v3, v2, 0x1

    #@8
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@a
    aput-byte p1, v1, v2

    #@c
    .line 163
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@e
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@10
    array-length v2, v2

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 165
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@15
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@17
    invoke-interface {v1, v2, v4, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@1a
    move-result v0

    #@1b
    .line 166
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@1d
    .line 169
    :cond_0
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
    .line 192
    if-gez p3, :cond_0

    #@3
    .line 194
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v5, "Can\'t have a negative input length!"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    #@f
    move-result v0

    #@10
    .line 198
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    #@13
    move-result v2

    #@14
    .line 200
    .local v2, "length":I
    if-lez v2, :cond_1

    #@16
    .line 202
    add-int v4, p5, v2

    #@18
    array-length v5, p4

    #@19
    if-le v4, v5, :cond_1

    #@1b
    .line 204
    new-instance v4, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@1d
    const-string/jumbo v5, "output buffer too short"

    #@20
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@23
    throw v4

    #@24
    .line 208
    :cond_1
    const/4 v3, 0x0

    #@25
    .line 209
    .local v3, "resultLen":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@27
    array-length v4, v4

    #@28
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@2a
    sub-int v1, v4, v5

    #@2c
    .line 211
    .local v1, "gapLen":I
    if-le p3, v1, :cond_2

    #@2e
    .line 213
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@30
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@32
    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@35
    .line 215
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@37
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@39
    invoke-interface {v4, v5, v7, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@3c
    move-result v4

    #@3d
    add-int/lit8 v3, v4, 0x0

    #@3f
    .line 217
    iput v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@41
    .line 218
    sub-int/2addr p3, v1

    #@42
    .line 219
    add-int/2addr p2, v1

    #@43
    .line 221
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@45
    array-length v4, v4

    #@46
    if-le p3, v4, :cond_2

    #@48
    .line 223
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@4a
    add-int v5, p5, v3

    #@4c
    invoke-interface {v4, p1, p2, p4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@4f
    move-result v4

    #@50
    add-int/2addr v3, v4

    #@51
    .line 225
    sub-int/2addr p3, v0

    #@52
    .line 226
    add-int/2addr p2, v0

    #@53
    goto :goto_0

    #@54
    .line 230
    :cond_2
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@56
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@58
    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5b
    .line 232
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@5d
    add-int/2addr v4, p3

    #@5e
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@60
    .line 234
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@62
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@64
    array-length v5, v5

    #@65
    if-ne v4, v5, :cond_3

    #@67
    .line 236
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@69
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@6b
    add-int v6, p5, v3

    #@6d
    invoke-interface {v4, v5, v7, p4, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@70
    move-result v4

    #@71
    add-int/2addr v3, v4

    #@72
    .line 237
    iput v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@74
    .line 240
    :cond_3
    return v3
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 301
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 303
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    #@9
    aput-byte v2, v1, v0

    #@b
    .line 301
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 306
    :cond_0
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    #@10
    .line 311
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@12
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@15
    .line 296
    return-void
.end method
