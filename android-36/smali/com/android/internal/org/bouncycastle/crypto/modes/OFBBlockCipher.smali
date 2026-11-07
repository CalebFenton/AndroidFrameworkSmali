.class public Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.source "OFBBlockCipher.java"


# instance fields
.field private blacklist IV:[B

.field private final blacklist blockSize:I

.field private blacklist byteCount:I

.field private final blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist ofbOutV:[B

.field private blacklist ofbV:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 6
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "bitBlockSize"    # I

    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 38
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-gt p2, v0, :cond_31

    if-lt p2, v1, :cond_31

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_31

    .line 43
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 44
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    .line 46
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    .line 47
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    .line 48
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    .line 49
    return-void

    .line 40
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0FB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .registers 9
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 168
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 173
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 175
    .local v0, "rv":B
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_40

    .line 177
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    .line 179
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v5, v5

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    :cond_40
    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 10
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    .line 69
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 70
    .local v0, "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 72
    .local v2, "iv":[B
    array-length v3, v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2e

    .line 75
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v6, v2

    sub-int/2addr v4, v6

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v6, v2

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_2d

    .line 78
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    aput-byte v5, v4, v3

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .end local v3    # "i":I
    :cond_2d
    goto :goto_36

    .line 83
    :cond_2e
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :goto_36
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 91
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 93
    .end local v0    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v2    # "iv":[B
    :cond_48
    goto :goto_53

    .line 96
    :cond_49
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 99
    if-eqz p2, :cond_53

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 104
    :cond_53
    :goto_53
    return-void
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 148
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v1, "in":[B
    .local v2, "inOff":I
    .local v4, "out":[B
    .local v5, "outOff":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->processBytes([BII[BI)I

    .line 150
    iget p1, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return p1
.end method

.method public blacklist reset()V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 163
    return-void
.end method
