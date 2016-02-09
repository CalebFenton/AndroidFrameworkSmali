.class public Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.source "CFBBlockCipher.java"


# instance fields
.field private IV:[B

.field private blockSize:I

.field private byteCount:I

.field private cfbOutV:[B

.field private cfbV:[B

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z

.field private inBuf:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "bitBlockSize"    # I

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@3
    .line 22
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@6
    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@8
    .line 40
    div-int/lit8 v0, p2, 0x8

    #@a
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@c
    .line 42
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@f
    move-result v0

    #@10
    new-array v0, v0, [B

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@14
    .line 43
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@17
    move-result v0

    #@18
    new-array v0, v0, [B

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@1c
    .line 44
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@1f
    move-result v0

    #@20
    new-array v0, v0, [B

    #@22
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    #@24
    .line 45
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@26
    new-array v0, v0, [B

    #@28
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    #@2a
    .line 35
    return-void
.end method

.method private decryptByte(B)B
    .locals 7
    .param p1, "in"    # B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 145
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 147
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@9
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    #@b
    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@e
    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    #@10
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@12
    aput-byte p1, v1, v2

    #@14
    .line 151
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    #@16
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@18
    add-int/lit8 v3, v2, 0x1

    #@1a
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@1c
    aget-byte v1, v1, v2

    #@1e
    xor-int/2addr v1, p1

    #@1f
    int-to-byte v0, v1

    #@20
    .line 153
    .local v0, "rv":B
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@22
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@24
    if-ne v1, v2, :cond_1

    #@26
    .line 155
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@28
    .line 157
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@2a
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@2c
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@2e
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@30
    array-length v4, v4

    #@31
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@33
    sub-int/2addr v4, v5

    #@34
    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@37
    .line 158
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    #@39
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@3b
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@3d
    array-length v3, v3

    #@3e
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@40
    sub-int/2addr v3, v4

    #@41
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@43
    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@46
    .line 161
    :cond_1
    return v0
.end method

.method private encryptByte(B)B
    .locals 7
    .param p1, "in"    # B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 124
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 126
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@9
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    #@b
    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@e
    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    #@10
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@12
    aget-byte v1, v1, v2

    #@14
    xor-int/2addr v1, p1

    #@15
    int-to-byte v0, v1

    #@16
    .line 130
    .local v0, "rv":B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    #@18
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@1a
    add-int/lit8 v3, v2, 0x1

    #@1c
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@1e
    aput-byte v0, v1, v2

    #@20
    .line 132
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@22
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@24
    if-ne v1, v2, :cond_1

    #@26
    .line 134
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@28
    .line 136
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@2a
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@2c
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@2e
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@30
    array-length v4, v4

    #@31
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@33
    sub-int/2addr v4, v5

    #@34
    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@37
    .line 137
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    #@39
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@3b
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@3d
    array-length v3, v3

    #@3e
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@40
    sub-int/2addr v3, v4

    #@41
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@43
    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@46
    .line 140
    :cond_1
    return v0
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encryptByte(B)B

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->decryptByte(B)B

    #@c
    move-result v0

    #@d
    goto :goto_0
.end method

.method public decryptBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    #@a
    .line 244
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@c
    return v0
.end method

.method public encryptBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    #@a
    .line 220
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@c
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "/CFB"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@18
    mul-int/lit8 v1, v1, 0x8

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 171
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@2
    return v0
.end method

.method public getCurrentIV()[B
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 64
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    #@4
    .line 66
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@6
    if-eqz v3, :cond_3

    #@8
    move-object v2, p2

    #@9
    .line 68
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@b
    .line 69
    .local v2, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@e
    move-result-object v1

    #@f
    .line 71
    .local v1, "iv":[B
    array-length v3, v1

    #@10
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@12
    array-length v4, v4

    #@13
    if-ge v3, v4, :cond_0

    #@15
    .line 74
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@17
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@19
    array-length v4, v4

    #@1a
    array-length v5, v1

    #@1b
    sub-int/2addr v4, v5

    #@1c
    array-length v5, v1

    #@1d
    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 75
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@23
    array-length v3, v3

    #@24
    array-length v4, v1

    #@25
    sub-int/2addr v3, v4

    #@26
    if-ge v0, v3, :cond_1

    #@28
    .line 77
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@2a
    aput-byte v6, v3, v0

    #@2c
    .line 75
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 82
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@31
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@33
    array-length v4, v4

    #@34
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@37
    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    #@3a
    .line 88
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@3d
    move-result-object v3

    #@3e
    if-eqz v3, :cond_2

    #@40
    .line 90
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@42
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@45
    move-result-object v4

    #@46
    invoke-interface {v3, v7, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@49
    .line 62
    .end local v1    # "iv":[B
    .end local v2    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_2
    :goto_1
    return-void

    #@4a
    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    #@4d
    .line 98
    if-eqz p2, :cond_2

    #@4f
    .line 100
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@51
    invoke-interface {v3, v7, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@54
    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    #@a
    .line 196
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    #@c
    return v0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 263
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    #@5
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    #@7
    array-length v2, v2

    #@8
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 264
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    #@d
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    #@10
    .line 265
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    #@12
    .line 267
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@14
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@17
    .line 261
    return-void
.end method
