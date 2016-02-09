.class public Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.source "OFBBlockCipher.java"


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "blockSize"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@3
    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5
    .line 37
    div-int/lit8 v0, p2, 0x8

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    #@9
    .line 39
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@c
    move-result v0

    #@d
    new-array v0, v0, [B

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@11
    .line 40
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@14
    move-result v0

    #@15
    new-array v0, v0, [B

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    #@19
    .line 41
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@1c
    move-result v0

    #@1d
    new-array v0, v0, [B

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    #@21
    .line 32
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 7
    .param p1, "in"    # B
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
    .line 161
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 163
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    #@9
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    #@b
    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@e
    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    #@10
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    #@12
    add-int/lit8 v3, v2, 0x1

    #@14
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    #@16
    aget-byte v1, v1, v2

    #@18
    xor-int/2addr v1, p1

    #@19
    int-to-byte v0, v1

    #@1a
    .line 168
    .local v0, "rv":B
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    #@1c
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    #@1e
    if-ne v1, v2, :cond_1

    #@20
    .line 170
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    #@22
    .line 172
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    #@24
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    #@26
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    #@28
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    #@2a
    array-length v4, v4

    #@2b
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    #@2d
    sub-int/2addr v4, v5

    #@2e
    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    .line 173
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    #@33
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    #@35
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    #@37
    array-length v3, v3

    #@38
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    #@3a
    sub-int/2addr v3, v4

    #@3b
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    #@3d
    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@40
    .line 176
    :cond_1
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "/OFB"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

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
    .line 118
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    #@2
    return v0
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
    .line 60
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@4
    if-eqz v3, :cond_3

    #@6
    move-object v2, p2

    #@7
    .line 62
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@9
    .line 63
    .local v2, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@c
    move-result-object v1

    #@d
    .line 65
    .local v1, "iv":[B
    array-length v3, v1

    #@e
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@10
    array-length v4, v4

    #@11
    if-ge v3, v4, :cond_0

    #@13
    .line 68
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@15
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@17
    array-length v4, v4

    #@18
    array-length v5, v1

    #@19
    sub-int/2addr v4, v5

    #@1a
    array-length v5, v1

    #@1b
    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 69
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@21
    array-length v3, v3

    #@22
    array-length v4, v1

    #@23
    sub-int/2addr v3, v4

    #@24
    if-ge v0, v3, :cond_1

    #@26
    .line 71
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@28
    aput-byte v6, v3, v0

    #@2a
    .line 69
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 76
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@2f
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@31
    array-length v4, v4

    #@32
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@35
    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    #@38
    .line 82
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@3b
    move-result-object v3

    #@3c
    if-eqz v3, :cond_2

    #@3e
    .line 84
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@40
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@43
    move-result-object v4

    #@44
    invoke-interface {v3, v7, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@47
    .line 58
    .end local v1    # "iv":[B
    .end local v2    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_2
    :goto_1
    return-void

    #@48
    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    #@4b
    .line 92
    if-eqz p2, :cond_2

    #@4d
    .line 94
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@4f
    invoke-interface {v3, v7, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@52
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
    .line 141
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

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
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->processBytes([BII[BI)I

    #@a
    .line 143
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    #@c
    return v0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    #@5
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    #@7
    array-length v2, v2

    #@8
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 153
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    #@d
    .line 155
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@f
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@12
    .line 150
    return-void
.end method
