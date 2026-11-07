.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.source "CBCBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;


# instance fields
.field private blacklist IV:[B

.field private blacklist blockSize:I

.field private blacklist cbcNextV:[B

.field private blacklist cbcV:[B

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist encrypting:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 45
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 47
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    .line 49
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    .line 50
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 51
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 52
    return-void
.end method

.method private blacklist decryptBlock([BI[BI)I
    .registers 10
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

    .line 232
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_31

    .line 237
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 244
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v1, v2, :cond_28

    .line 246
    add-int v2, p4, v1

    aget-byte v3, p3, v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 254
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 255
    .local v1, "tmp":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 256
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 258
    return v0

    .line 234
    .end local v0    # "length":I
    .end local v1    # "tmp":[B
    :cond_31
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist encryptBlock([BI[BI)I
    .registers 9
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

    .line 189
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_2c

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_1a

    .line 200
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v2, v1, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 203
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 208
    .local v0, "length":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v3, v3

    invoke-static {p3, p4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    return v0

    .line 191
    .end local v0    # "length":I
    :cond_2c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;
    .registers 2
    .param p0, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 34
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CBC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 81
    .local v0, "oldEncrypting":Z
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 83
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 85
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 86
    .local v1, "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 88
    .local v3, "iv":[B
    array-length v4, v3

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ne v4, v5, :cond_20

    .line 93
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v5, v3

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 96
    .end local v1    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    goto :goto_2d

    .line 90
    .restart local v1    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .restart local v3    # "iv":[B
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "initialisation vector must be the same length as block size"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v1    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_28
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 102
    :goto_2d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 105
    if-eqz p2, :cond_38

    .line 107
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_3a

    .line 109
    :cond_38
    if-ne v0, p1, :cond_3b

    .line 113
    :goto_3a
    return-void

    .line 111
    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot change encrypting state without providing key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 6
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

    .line 155
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    :goto_d
    return v0
.end method

.method public blacklist reset()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 168
    return-void
.end method
