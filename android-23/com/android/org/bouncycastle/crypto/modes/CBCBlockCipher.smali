.class public Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;
.super Ljava/lang/Object;
.source "CBCBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cbcNextV:[B

.field private cbcV:[B

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@6
    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@8
    .line 32
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@e
    .line 34
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@10
    new-array v0, v0, [B

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    #@14
    .line 35
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@16
    new-array v0, v0, [B

    #@18
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    #@1a
    .line 36
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@1c
    new-array v0, v0, [B

    #@1e
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    #@20
    .line 29
    return-void
.end method

.method private decryptBlock([BI[BI)I
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
    .line 225
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@2
    add-int/2addr v3, p2

    #@3
    array-length v4, p1

    #@4
    if-le v3, v4, :cond_0

    #@6
    .line 227
    new-instance v3, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@8
    const-string/jumbo v4, "input buffer too short"

    #@b
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 230
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    #@11
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@13
    const/4 v5, 0x0

    #@14
    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@17
    .line 232
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@19
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@1c
    move-result v1

    #@1d
    .line 237
    .local v1, "length":I
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@20
    if-ge v0, v3, :cond_1

    #@22
    .line 239
    add-int v3, p4, v0

    #@24
    aget-byte v4, p3, v3

    #@26
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    #@28
    aget-byte v5, v5, v0

    #@2a
    xor-int/2addr v4, v5

    #@2b
    int-to-byte v4, v4

    #@2c
    aput-byte v4, p3, v3

    #@2e
    .line 237
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 247
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    #@33
    .line 248
    .local v2, "tmp":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    #@35
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    #@37
    .line 249
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    #@39
    .line 251
    return v1
.end method

.method private encryptBlock([BI[BI)I
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
    const/4 v5, 0x0

    #@1
    .line 182
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@3
    add-int/2addr v2, p2

    #@4
    array-length v3, p1

    #@5
    if-le v2, v3, :cond_0

    #@7
    .line 184
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@9
    const-string/jumbo v3, "input buffer too short"

    #@c
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 191
    :cond_0
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@13
    if-ge v0, v2, :cond_1

    #@15
    .line 193
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    #@17
    aget-byte v3, v2, v0

    #@19
    add-int v4, p2, v0

    #@1b
    aget-byte v4, p1, v4

    #@1d
    xor-int/2addr v3, v4

    #@1e
    int-to-byte v3, v3

    #@1f
    aput-byte v3, v2, v0

    #@21
    .line 191
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@26
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    #@28
    invoke-interface {v2, v3, v5, p3, p4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@2b
    move-result v1

    #@2c
    .line 201
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    #@2e
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    #@30
    array-length v3, v3

    #@31
    invoke-static {p3, p4, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@34
    .line 203
    return v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "/CBC"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 64
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    #@3
    .line 66
    .local v2, "oldEncrypting":Z
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    #@5
    .line 68
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@7
    if-eqz v3, :cond_3

    #@9
    move-object v1, p2

    #@a
    .line 70
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@c
    .line 71
    .local v1, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@f
    move-result-object v0

    #@10
    .line 73
    .local v0, "iv":[B
    array-length v3, v0

    #@11
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    #@13
    if-eq v3, v4, :cond_0

    #@15
    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v4, "initialisation vector must be the same length as block size"

    #@1a
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 78
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    #@20
    array-length v4, v0

    #@21
    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@24
    .line 80
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    #@27
    .line 83
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@2a
    move-result-object v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 85
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@32
    move-result-object v4

    #@33
    invoke-interface {v3, p1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@36
    .line 62
    .end local v0    # "iv":[B
    .end local v1    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_1
    :goto_0
    return-void

    #@37
    .line 87
    .restart local v0    # "iv":[B
    .restart local v1    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_2
    if-eq v2, p1, :cond_1

    #@39
    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string/jumbo v4, "cannot change encrypting state without providing key."

    #@3e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 94
    .end local v0    # "iv":[B
    .end local v1    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    #@45
    .line 97
    if-eqz p2, :cond_4

    #@47
    .line 99
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@49
    invoke-interface {v3, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@4c
    goto :goto_0

    #@4d
    .line 101
    :cond_4
    if-eq v2, p1, :cond_1

    #@4f
    .line 103
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@51
    const-string/jumbo v4, "cannot change encrypting state without providing key."

    #@54
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v3
.end method

.method public processBlock([BI[BI)I
    .locals 1
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
    .line 148
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    #@c
    move-result v0

    #@d
    goto :goto_0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    #@3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    #@5
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    #@7
    array-length v2, v2

    #@8
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    #@d
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    #@10
    .line 160
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@12
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@15
    .line 155
    return-void
.end method
