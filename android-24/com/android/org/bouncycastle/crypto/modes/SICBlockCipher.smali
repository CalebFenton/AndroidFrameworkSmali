.class public Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.source "SICBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/SkippingStreamCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private counterOut:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@3
    .line 37
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@d
    .line 39
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@f
    new-array v0, v0, [B

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@13
    .line 40
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@15
    new-array v0, v0, [B

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@19
    .line 41
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@1b
    new-array v0, v0, [B

    #@1d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    #@1f
    .line 42
    const/4 v0, 0x0

    #@20
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@22
    .line 33
    return-void
.end method

.method private adjustCounter(J)V
    .locals 17
    .param p1, "n"    # J

    #@0
    .prologue
    .line 176
    const-wide/16 v12, 0x0

    #@2
    cmp-long v12, p1, v12

    #@4
    if-ltz v12, :cond_2

    #@6
    .line 178
    move-object/from16 v0, p0

    #@8
    iget v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@a
    int-to-long v12, v12

    #@b
    add-long v12, v12, p1

    #@d
    move-object/from16 v0, p0

    #@f
    iget v14, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@11
    int-to-long v14, v14

    #@12
    div-long v8, v12, v14

    #@14
    .line 180
    .local v8, "numBlocks":J
    move-wide v10, v8

    #@15
    .line 181
    .local v10, "rem":J
    const-wide/16 v12, 0xff

    #@17
    cmp-long v12, v8, v12

    #@19
    if-lez v12, :cond_1

    #@1b
    .line 183
    const/4 v5, 0x5

    #@1c
    .local v5, "i":I
    :goto_0
    const/4 v12, 0x1

    #@1d
    if-lt v5, v12, :cond_1

    #@1f
    .line 185
    mul-int/lit8 v12, v5, 0x8

    #@21
    const-wide/16 v14, 0x1

    #@23
    shl-long v2, v14, v12

    #@25
    .line 186
    .local v2, "diff":J
    :goto_1
    cmp-long v12, v10, v2

    #@27
    if-ltz v12, :cond_0

    #@29
    .line 188
    move-object/from16 v0, p0

    #@2b
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    #@2e
    .line 189
    sub-long/2addr v10, v2

    #@2f
    goto :goto_1

    #@30
    .line 183
    :cond_0
    add-int/lit8 v5, v5, -0x1

    #@32
    goto :goto_0

    #@33
    .line 194
    .end local v2    # "diff":J
    .end local v5    # "i":I
    :cond_1
    long-to-int v12, v10

    #@34
    move-object/from16 v0, p0

    #@36
    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter(I)V

    #@39
    .line 196
    move-object/from16 v0, p0

    #@3b
    iget v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@3d
    int-to-long v12, v12

    #@3e
    add-long v12, v12, p1

    #@40
    move-object/from16 v0, p0

    #@42
    iget v14, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@44
    int-to-long v14, v14

    #@45
    mul-long/2addr v14, v8

    #@46
    sub-long/2addr v12, v14

    #@47
    long-to-int v12, v12

    #@48
    move-object/from16 v0, p0

    #@4a
    iput v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@4c
    .line 174
    :goto_2
    return-void

    #@4d
    .line 200
    .end local v8    # "numBlocks":J
    .end local v10    # "rem":J
    :cond_2
    move-wide/from16 v0, p1

    #@4f
    neg-long v12, v0

    #@50
    move-object/from16 v0, p0

    #@52
    iget v14, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@54
    int-to-long v14, v14

    #@55
    sub-long/2addr v12, v14

    #@56
    move-object/from16 v0, p0

    #@58
    iget v14, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@5a
    int-to-long v14, v14

    #@5b
    div-long v8, v12, v14

    #@5d
    .line 202
    .restart local v8    # "numBlocks":J
    move-wide v10, v8

    #@5e
    .line 203
    .restart local v10    # "rem":J
    const-wide/16 v12, 0xff

    #@60
    cmp-long v12, v8, v12

    #@62
    if-lez v12, :cond_4

    #@64
    .line 205
    const/4 v5, 0x5

    #@65
    .restart local v5    # "i":I
    :goto_3
    const/4 v12, 0x1

    #@66
    if-lt v5, v12, :cond_4

    #@68
    .line 207
    mul-int/lit8 v12, v5, 0x8

    #@6a
    const-wide/16 v14, 0x1

    #@6c
    shl-long v2, v14, v12

    #@6e
    .line 208
    .restart local v2    # "diff":J
    :goto_4
    cmp-long v12, v10, v2

    #@70
    if-lez v12, :cond_3

    #@72
    .line 210
    move-object/from16 v0, p0

    #@74
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    #@77
    .line 211
    sub-long/2addr v10, v2

    #@78
    goto :goto_4

    #@79
    .line 205
    :cond_3
    add-int/lit8 v5, v5, -0x1

    #@7b
    goto :goto_3

    #@7c
    .line 216
    .end local v2    # "diff":J
    .end local v5    # "i":I
    :cond_4
    const-wide/16 v6, 0x0

    #@7e
    .local v6, "i":J
    :goto_5
    cmp-long v12, v6, v10

    #@80
    if-eqz v12, :cond_5

    #@82
    .line 218
    const/4 v12, 0x0

    #@83
    move-object/from16 v0, p0

    #@85
    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    #@88
    .line 216
    const-wide/16 v12, 0x1

    #@8a
    add-long/2addr v6, v12

    #@8b
    goto :goto_5

    #@8c
    .line 221
    :cond_5
    move-object/from16 v0, p0

    #@8e
    iget v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@90
    int-to-long v12, v12

    #@91
    add-long v12, v12, p1

    #@93
    move-object/from16 v0, p0

    #@95
    iget v14, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@97
    int-to-long v14, v14

    #@98
    mul-long/2addr v14, v8

    #@99
    add-long/2addr v12, v14

    #@9a
    long-to-int v4, v12

    #@9b
    .line 223
    .local v4, "gap":I
    if-ltz v4, :cond_6

    #@9d
    .line 225
    const/4 v12, 0x0

    #@9e
    move-object/from16 v0, p0

    #@a0
    iput v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@a2
    goto :goto_2

    #@a3
    .line 229
    :cond_6
    const/4 v12, 0x0

    #@a4
    move-object/from16 v0, p0

    #@a6
    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    #@a9
    .line 230
    move-object/from16 v0, p0

    #@ab
    iget v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@ad
    add-int/2addr v12, v4

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@b2
    goto :goto_2
.end method

.method private checkCounter()V
    .locals 3

    #@0
    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@2
    array-length v1, v1

    #@3
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 128
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@a
    array-length v1, v1

    #@b
    if-eq v0, v1, :cond_1

    #@d
    .line 130
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@f
    aget-byte v1, v1, v0

    #@11
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@13
    aget-byte v2, v2, v0

    #@15
    if-eq v1, v2, :cond_0

    #@17
    .line 132
    new-instance v1, Ljava/lang/IllegalStateException;

    #@19
    const-string/jumbo v2, "Counter in CTR/SIC mode out of range."

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 123
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private decrementCounterAt(I)V
    .locals 3
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@2
    array-length v1, v1

    #@3
    sub-int v0, v1, p1

    #@5
    .line 165
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@7
    if-ltz v0, :cond_1

    #@9
    .line 167
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@b
    aget-byte v2, v1, v0

    #@d
    add-int/lit8 v2, v2, -0x1

    #@f
    int-to-byte v2, v2

    #@10
    aput-byte v2, v1, v0

    #@12
    const/4 v1, -0x1

    #@13
    if-eq v2, v1, :cond_0

    #@15
    .line 169
    return-void

    #@16
    .line 162
    :cond_1
    return-void
.end method

.method private incrementCounter(I)V
    .locals 4
    .param p1, "offSet"    # I

    #@0
    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@2
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@4
    array-length v2, v2

    #@5
    add-int/lit8 v2, v2, -0x1

    #@7
    aget-byte v0, v1, v2

    #@9
    .line 154
    .local v0, "old":B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@d
    array-length v2, v2

    #@e
    add-int/lit8 v2, v2, -0x1

    #@10
    aget-byte v3, v1, v2

    #@12
    add-int/2addr v3, p1

    #@13
    int-to-byte v3, v3

    #@14
    aput-byte v3, v1, v2

    #@16
    .line 156
    if-eqz v0, :cond_0

    #@18
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@1a
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@1c
    array-length v2, v2

    #@1d
    add-int/lit8 v2, v2, -0x1

    #@1f
    aget-byte v1, v1, v2

    #@21
    if-ge v1, v0, :cond_0

    #@23
    .line 158
    const/4 v1, 0x1

    #@24
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    #@27
    .line 150
    :cond_0
    return-void
.end method

.method private incrementCounterAt(I)V
    .locals 3
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@2
    array-length v1, v1

    #@3
    sub-int v0, v1, p1

    #@5
    .line 141
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@7
    if-ltz v0, :cond_1

    #@9
    .line 143
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@b
    aget-byte v2, v1, v0

    #@d
    add-int/lit8 v2, v2, 0x1

    #@f
    int-to-byte v2, v2

    #@10
    aput-byte v2, v1, v0

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 5
    .param p1, "in"    # B
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
    .line 102
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 104
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@9
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    #@b
    invoke-interface {v1, v2, v4, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@e
    .line 106
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    #@10
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@12
    add-int/lit8 v3, v2, 0x1

    #@14
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@16
    aget-byte v1, v1, v2

    #@18
    xor-int/2addr v1, p1

    #@19
    int-to-byte v1, v1

    #@1a
    return v1

    #@1b
    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    #@1d
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@1f
    add-int/lit8 v3, v2, 0x1

    #@21
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@23
    aget-byte v1, v1, v2

    #@25
    xor-int/2addr v1, p1

    #@26
    int-to-byte v0, v1

    #@27
    .line 111
    .local v0, "rv":B
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@29
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@2b
    array-length v2, v2

    #@2c
    if-ne v1, v2, :cond_1

    #@2e
    .line 113
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@30
    .line 115
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    #@33
    .line 117
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    #@36
    .line 120
    :cond_1
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "/SIC"

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
    .line 88
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPosition()J
    .locals 8

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 263
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@3
    array-length v3, v3

    #@4
    new-array v1, v3, [B

    #@6
    .line 265
    .local v1, "res":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@8
    array-length v4, v1

    #@9
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c
    .line 267
    array-length v3, v1

    #@d
    add-int/lit8 v0, v3, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    #@10
    if-lt v0, v3, :cond_2

    #@12
    .line 270
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@14
    array-length v3, v3

    #@15
    if-ge v0, v3, :cond_1

    #@17
    .line 272
    aget-byte v3, v1, v0

    #@19
    and-int/lit16 v3, v3, 0xff

    #@1b
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@1d
    aget-byte v4, v4, v0

    #@1f
    and-int/lit16 v4, v4, 0xff

    #@21
    sub-int v2, v3, v4

    #@23
    .line 279
    .local v2, "v":I
    :goto_1
    if-gez v2, :cond_0

    #@25
    .line 281
    add-int/lit8 v3, v0, -0x1

    #@27
    aget-byte v4, v1, v3

    #@29
    add-int/lit8 v4, v4, -0x1

    #@2b
    int-to-byte v4, v4

    #@2c
    aput-byte v4, v1, v3

    #@2e
    .line 282
    add-int/lit16 v2, v2, 0x100

    #@30
    .line 285
    :cond_0
    int-to-byte v3, v2

    #@31
    aput-byte v3, v1, v0

    #@33
    .line 267
    add-int/lit8 v0, v0, -0x1

    #@35
    goto :goto_0

    #@36
    .line 276
    .end local v2    # "v":I
    :cond_1
    aget-byte v3, v1, v0

    #@38
    and-int/lit16 v2, v3, 0xff

    #@3a
    .restart local v2    # "v":I
    goto :goto_1

    #@3b
    .line 288
    .end local v2    # "v":I
    :cond_2
    array-length v3, v1

    #@3c
    add-int/lit8 v3, v3, -0x8

    #@3e
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@41
    move-result-wide v4

    #@42
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@44
    int-to-long v6, v3

    #@45
    mul-long/2addr v4, v6

    #@46
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@48
    int-to-long v6, v3

    #@49
    add-long/2addr v4, v6

    #@4a
    return-wide v4
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@2
    if-eqz v2, :cond_4

    #@4
    move-object v0, p2

    #@5
    .line 52
    nop

    #@6
    nop

    #@7
    .line 53
    .local v0, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@a
    move-result-object v2

    #@b
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@e
    move-result-object v2

    #@f
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@11
    .line 55
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@13
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@15
    array-length v3, v3

    #@16
    if-ge v2, v3, :cond_0

    #@18
    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "CTR/SIC mode requires IV no greater than: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    const-string/jumbo v4, " bytes."

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 60
    :cond_0
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@3d
    div-int/lit8 v2, v2, 0x2

    #@3f
    const/16 v3, 0x8

    #@41
    if-le v3, v2, :cond_1

    #@43
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@45
    div-int/lit8 v1, v2, 0x2

    #@47
    .line 62
    .local v1, "maxCounterSize":I
    :goto_0
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@49
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@4b
    array-length v3, v3

    #@4c
    sub-int/2addr v2, v3

    #@4d
    if-le v2, v1, :cond_2

    #@4f
    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "CTR/SIC mode requires IV of at least: "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@5f
    sub-int/2addr v4, v1

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    const-string/jumbo v4, " bytes."

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw v2

    #@73
    .line 60
    .end local v1    # "maxCounterSize":I
    :cond_1
    const/16 v1, 0x8

    #@75
    .restart local v1    # "maxCounterSize":I
    goto :goto_0

    #@76
    .line 68
    :cond_2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@79
    move-result-object v2

    #@7a
    if-eqz v2, :cond_3

    #@7c
    .line 70
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@81
    move-result-object v3

    #@82
    const/4 v4, 0x1

    #@83
    invoke-interface {v2, v4, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@86
    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    #@89
    .line 48
    return-void

    #@8a
    .line 77
    .end local v0    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "maxCounterSize":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8c
    const-string/jumbo v3, "CTR/SIC mode requires ParametersWithIV"

    #@8f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@92
    throw v2
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
    .line 94
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

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
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->processBytes([BII[BI)I

    #@a
    .line 96
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@c
    return v0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 237
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@3
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    #@6
    .line 238
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@8
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@a
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@c
    array-length v2, v2

    #@d
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10
    .line 239
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@12
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@15
    .line 240
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@17
    .line 235
    return-void
.end method

.method public seekTo(J)J
    .locals 3
    .param p1, "position"    # J

    #@0
    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    #@3
    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->skip(J)J

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "numberOfBytes"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    #@4
    .line 247
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    #@7
    .line 249
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    #@d
    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@10
    .line 251
    return-wide p1
.end method
