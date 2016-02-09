.class public Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@8
    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "padding"    # Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5
    .line 34
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@7
    .line 36
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@a
    move-result v0

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@f
    .line 37
    const/4 v0, 0x0

    #@10
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@12
    .line 31
    return-void
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
    const/4 v5, 0x0

    #@1
    .line 247
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@3
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@6
    move-result v0

    #@7
    .line 248
    .local v0, "blockSize":I
    const/4 v1, 0x0

    #@8
    .line 250
    .local v1, "resultLen":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    #@a
    if-eqz v2, :cond_2

    #@c
    .line 252
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@e
    if-ne v2, v0, :cond_1

    #@10
    .line 254
    mul-int/lit8 v2, v0, 0x2

    #@12
    add-int/2addr v2, p2

    #@13
    array-length v3, p1

    #@14
    if-le v2, v3, :cond_0

    #@16
    .line 256
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    #@19
    .line 258
    new-instance v2, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@1b
    const-string/jumbo v3, "output buffer too short"

    #@1e
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@24
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@26
    invoke-interface {v2, v3, v5, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@29
    move-result v1

    #@2a
    .line 262
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@2c
    .line 265
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@2e
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@30
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@32
    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    #@35
    .line 267
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@37
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@39
    add-int v4, p2, v1

    #@3b
    invoke-interface {v2, v3, v5, p1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@3e
    move-result v2

    #@3f
    add-int/2addr v1, v2

    #@40
    .line 269
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    #@43
    .line 297
    :goto_0
    return v1

    #@44
    .line 273
    :cond_2
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@46
    if-ne v2, v0, :cond_3

    #@48
    .line 275
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@4a
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@4c
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@4e
    invoke-interface {v2, v3, v5, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@51
    move-result v1

    #@52
    .line 276
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@54
    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@56
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@58
    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    #@5b
    move-result v2

    #@5c
    sub-int/2addr v1, v2

    #@5d
    .line 289
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@5f
    const/4 v3, 0x0

    #@60
    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    .line 293
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    #@66
    goto :goto_0

    #@67
    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    #@6a
    .line 282
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@6c
    const-string/jumbo v3, "last block incomplete in decryption"

    #@6f
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@72
    throw v2

    #@73
    .line 292
    :catchall_0
    move-exception v2

    #@74
    .line 293
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    #@77
    .line 292
    throw v2
.end method

.method public getOutputSize(I)I
    .locals 4
    .param p1, "len"    # I

    #@0
    .prologue
    .line 96
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@2
    add-int v1, p1, v2

    #@4
    .line 97
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@6
    array-length v2, v2

    #@7
    rem-int v0, v1, v2

    #@9
    .line 99
    .local v0, "leftOver":I
    if-nez v0, :cond_1

    #@b
    .line 101
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 103
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@11
    array-length v2, v2

    #@12
    add-int/2addr v2, v1

    #@13
    return v2

    #@14
    .line 106
    :cond_0
    return v1

    #@15
    .line 109
    :cond_1
    sub-int v2, v1, v0

    #@17
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@19
    array-length v3, v3

    #@1a
    add-int/2addr v2, v3

    #@1b
    return v2
.end method

.method public getUpdateOutputSize(I)I
    .locals 4
    .param p1, "len"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 123
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@3
    add-int v1, p1, v2

    #@5
    .line 124
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@7
    array-length v2, v2

    #@8
    rem-int v0, v1, v2

    #@a
    .line 126
    .local v0, "leftOver":I
    if-nez v0, :cond_0

    #@c
    .line 128
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@e
    array-length v2, v2

    #@f
    sub-int v2, v1, v2

    #@11
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 131
    :cond_0
    sub-int v2, v1, v0

    #@18
    return v2
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    #@2
    .line 67
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    #@5
    .line 69
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@7
    if-eqz v1, :cond_0

    #@9
    move-object v0, p2

    #@a
    .line 71
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@c
    .line 73
    .local v0, "p":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    #@15
    .line 75
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@17
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@1e
    .line 63
    .end local v0    # "p":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_0
    return-void

    #@1f
    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@21
    const/4 v2, 0x0

    #@22
    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    #@25
    .line 81
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@27
    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@2a
    goto :goto_0
.end method

.method public processByte(B[BI)I
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 150
    const/4 v0, 0x0

    #@2
    .line 152
    .local v0, "resultLen":I
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@6
    array-length v2, v2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@d
    invoke-interface {v1, v2, v3, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@10
    move-result v0

    #@11
    .line 155
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@13
    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@15
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@17
    add-int/lit8 v3, v2, 0x1

    #@19
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@1b
    aput-byte p1, v1, v2

    #@1d
    .line 160
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 7
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
    const/4 v6, 0x0

    #@1
    .line 183
    if-gez p3, :cond_0

    #@3
    .line 185
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v5, "Can\'t have a negative input length!"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getBlockSize()I

    #@f
    move-result v0

    #@10
    .line 189
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    #@13
    move-result v2

    #@14
    .line 191
    .local v2, "length":I
    if-lez v2, :cond_1

    #@16
    .line 193
    add-int v4, p5, v2

    #@18
    array-length v5, p4

    #@19
    if-le v4, v5, :cond_1

    #@1b
    .line 195
    new-instance v4, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@1d
    const-string/jumbo v5, "output buffer too short"

    #@20
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@23
    throw v4

    #@24
    .line 199
    :cond_1
    const/4 v3, 0x0

    #@25
    .line 200
    .local v3, "resultLen":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@27
    array-length v4, v4

    #@28
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@2a
    sub-int v1, v4, v5

    #@2c
    .line 202
    .local v1, "gapLen":I
    if-le p3, v1, :cond_2

    #@2e
    .line 204
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@30
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@32
    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@35
    .line 206
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@37
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@39
    invoke-interface {v4, v5, v6, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@3c
    move-result v4

    #@3d
    add-int/lit8 v3, v4, 0x0

    #@3f
    .line 208
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@41
    .line 209
    sub-int/2addr p3, v1

    #@42
    .line 210
    add-int/2addr p2, v1

    #@43
    .line 212
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@45
    array-length v4, v4

    #@46
    if-le p3, v4, :cond_2

    #@48
    .line 214
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@4a
    add-int v5, p5, v3

    #@4c
    invoke-interface {v4, p1, p2, p4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@4f
    move-result v4

    #@50
    add-int/2addr v3, v4

    #@51
    .line 216
    sub-int/2addr p3, v0

    #@52
    .line 217
    add-int/2addr p2, v0

    #@53
    goto :goto_0

    #@54
    .line 221
    :cond_2
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    #@56
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@58
    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5b
    .line 223
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@5d
    add-int/2addr v4, p3

    #@5e
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    #@60
    .line 225
    return v3
.end method
