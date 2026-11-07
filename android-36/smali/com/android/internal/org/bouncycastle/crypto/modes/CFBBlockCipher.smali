.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.source "CFBBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/CFBModeCipher;


# instance fields
.field private blacklist IV:[B

.field private blacklist blockSize:I

.field private blacklist byteCount:I

.field private blacklist cfbOutV:[B

.field private blacklist cfbV:[B

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist encrypting:Z

.field private blacklist inBuf:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 6
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "bitBlockSize"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 54
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-gt p2, v0, :cond_3a

    if-lt p2, v1, :cond_3a

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_3a

    .line 59
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 60
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    .line 62
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    .line 63
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    .line 64
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    .line 65
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    .line 66
    return-void

    .line 56
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CFB"

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

.method private blacklist decryptByte(B)B
    .registers 9
    .param p1, "in"    # B

    .line 165
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 170
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte p1, v0, v2

    .line 171
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 173
    .local v0, "rv":B
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_46

    .line 175
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 177
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v5, v5

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_46
    return v0
.end method

.method private blacklist encryptByte(B)B
    .registers 9
    .param p1, "in"    # B

    .line 144
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 149
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 150
    .local v0, "rv":B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte v0, v2, v3

    .line 152
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_46

    .line 154
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 156
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v5, v5

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    :cond_46
    return v0
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)Lcom/android/internal/org/bouncycastle/crypto/modes/CFBModeCipher;
    .registers 3
    .param p0, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p1, "blockSize"    # I

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    return-object v0
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .registers 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->encryptByte(B)B

    move-result v0

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->decryptByte(B)B

    move-result v0

    :goto_d
    return v0
.end method

.method public blacklist decryptBlock([BI[BI)I
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

    .line 262
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

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
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 264
    iget p1, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p1
.end method

.method public blacklist encryptBlock([BI[BI)I
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

    .line 238
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

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
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 240
    iget p1, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 191
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist getCurrentIV()[B
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
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

    .line 84
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    .line 86
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    .line 88
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 89
    .local v0, "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 91
    .local v2, "iv":[B
    array-length v3, v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_30

    .line 94
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v6, v2

    sub-int/2addr v4, v6

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v6, v2

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_2f

    .line 97
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    aput-byte v5, v4, v3

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .end local v3    # "i":I
    :cond_2f
    goto :goto_38

    .line 102
    :cond_30
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :goto_38
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 108
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 110
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 112
    .end local v0    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v2    # "iv":[B
    :cond_4a
    goto :goto_55

    .line 115
    :cond_4b
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 118
    if-eqz p2, :cond_55

    .line 120
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 123
    :cond_55
    :goto_55
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

    .line 214
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

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
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 216
    iget p1, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p1
.end method

.method public blacklist reset()V
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 285
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 287
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 288
    return-void
.end method
