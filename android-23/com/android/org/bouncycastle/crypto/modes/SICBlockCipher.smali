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
    .line 34
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@3
    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5
    .line 37
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@d
    .line 38
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@f
    new-array v0, v0, [B

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@13
    .line 39
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@15
    new-array v0, v0, [B

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@19
    .line 40
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@1b
    new-array v0, v0, [B

    #@1d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    #@1f
    .line 41
    const/4 v0, 0x0

    #@20
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@22
    .line 32
    return-void
.end method

.method private adjustCounter(J)V
    .locals 17
    .param p1, "n"    # J

    #@0
    .prologue
    .line 195
    const-wide/16 v12, 0x0

    #@2
    cmp-long v12, p1, v12

    #@4
    if-ltz v12, :cond_3

    #@6
    .line 197
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
    div-long v10, v12, v14

    #@14
    .line 199
    .local v10, "numBlocks":J
    const-wide/16 v12, 0xff

    #@16
    cmp-long v12, v10, v12

    #@18
    if-lez v12, :cond_2

    #@1a
    .line 201
    move-wide v6, v10

    #@1b
    .line 203
    .local v6, "gap":J
    const/4 v5, 0x5

    #@1c
    .local v5, "i":I
    :goto_0
    const/4 v12, 0x1

    #@1d
    if-lt v5, v12, :cond_1

    #@1f
    .line 205
    mul-int/lit8 v12, v5, 0x8

    #@21
    const-wide/16 v14, 0x1

    #@23
    shl-long v2, v14, v12

    #@25
    .line 207
    .local v2, "diff":J
    :goto_1
    cmp-long v12, v6, v2

    #@27
    if-ltz v12, :cond_0

    #@29
    .line 209
    move-object/from16 v0, p0

    #@2b
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterPow2(I)V

    #@2e
    .line 211
    sub-long/2addr v6, v2

    #@2f
    goto :goto_1

    #@30
    .line 203
    :cond_0
    add-int/lit8 v5, v5, -0x1

    #@32
    goto :goto_0

    #@33
    .line 215
    .end local v2    # "diff":J
    :cond_1
    long-to-int v12, v6

    #@34
    move-object/from16 v0, p0

    #@36
    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter(I)V

    #@39
    .line 222
    .end local v5    # "i":I
    .end local v6    # "gap":J
    :goto_2
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
    mul-long/2addr v14, v10

    #@46
    sub-long/2addr v12, v14

    #@47
    long-to-int v12, v12

    #@48
    move-object/from16 v0, p0

    #@4a
    iput v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@4c
    .line 193
    :goto_3
    return-void

    #@4d
    .line 219
    :cond_2
    long-to-int v12, v10

    #@4e
    move-object/from16 v0, p0

    #@50
    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter(I)V

    #@53
    goto :goto_2

    #@54
    .line 226
    .end local v10    # "numBlocks":J
    :cond_3
    move-wide/from16 v0, p1

    #@56
    neg-long v12, v0

    #@57
    move-object/from16 v0, p0

    #@59
    iget v14, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@5b
    int-to-long v14, v14

    #@5c
    sub-long/2addr v12, v14

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget v14, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@61
    int-to-long v14, v14

    #@62
    div-long v10, v12, v14

    #@64
    .line 228
    .restart local v10    # "numBlocks":J
    const-wide/16 v12, 0xff

    #@66
    cmp-long v12, v10, v12

    #@68
    if-lez v12, :cond_6

    #@6a
    .line 230
    move-wide v6, v10

    #@6b
    .line 232
    .restart local v6    # "gap":J
    const/4 v5, 0x5

    #@6c
    .restart local v5    # "i":I
    :goto_4
    const/4 v12, 0x1

    #@6d
    if-lt v5, v12, :cond_5

    #@6f
    .line 234
    mul-int/lit8 v12, v5, 0x8

    #@71
    const-wide/16 v14, 0x1

    #@73
    shl-long v2, v14, v12

    #@75
    .line 236
    .restart local v2    # "diff":J
    :goto_5
    cmp-long v12, v6, v2

    #@77
    if-lez v12, :cond_4

    #@79
    .line 238
    move-object/from16 v0, p0

    #@7b
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterPow2(I)V

    #@7e
    .line 240
    sub-long/2addr v6, v2

    #@7f
    goto :goto_5

    #@80
    .line 232
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@82
    goto :goto_4

    #@83
    .line 244
    .end local v2    # "diff":J
    :cond_5
    const-wide/16 v8, 0x0

    #@85
    .local v8, "i":J
    :goto_6
    cmp-long v12, v8, v6

    #@87
    if-eqz v12, :cond_7

    #@89
    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounter()V

    #@8c
    .line 244
    const-wide/16 v12, 0x1

    #@8e
    add-long/2addr v8, v12

    #@8f
    goto :goto_6

    #@90
    .line 251
    .end local v5    # "i":I
    .end local v6    # "gap":J
    .end local v8    # "i":J
    :cond_6
    const-wide/16 v8, 0x0

    #@92
    .restart local v8    # "i":J
    :goto_7
    cmp-long v12, v8, v10

    #@94
    if-eqz v12, :cond_7

    #@96
    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounter()V

    #@99
    .line 251
    const-wide/16 v12, 0x1

    #@9b
    add-long/2addr v8, v12

    #@9c
    goto :goto_7

    #@9d
    .line 257
    :cond_7
    move-object/from16 v0, p0

    #@9f
    iget v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@a1
    int-to-long v12, v12

    #@a2
    add-long v12, v12, p1

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget v14, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@a8
    int-to-long v14, v14

    #@a9
    mul-long/2addr v14, v10

    #@aa
    add-long/2addr v12, v14

    #@ab
    long-to-int v4, v12

    #@ac
    .line 259
    .local v4, "gap":I
    if-ltz v4, :cond_8

    #@ae
    .line 261
    const/4 v12, 0x0

    #@af
    move-object/from16 v0, p0

    #@b1
    iput v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@b3
    goto :goto_3

    #@b4
    .line 265
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounter()V

    #@b7
    .line 266
    move-object/from16 v0, p0

    #@b9
    iget v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@bb
    add-int/2addr v12, v4

    #@bc
    move-object/from16 v0, p0

    #@be
    iput v12, v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@c0
    goto :goto_3
.end method

.method private decrementCounter()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 168
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@3
    aget-byte v2, v2, v3

    #@5
    if-nez v2, :cond_2

    #@7
    .line 170
    const/4 v1, 0x0

    #@8
    .line 172
    .local v1, "nonZero":Z
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@a
    array-length v2, v2

    #@b
    add-int/lit8 v0, v2, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    #@f
    .line 174
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@11
    aget-byte v2, v2, v0

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 176
    const/4 v1, 0x1

    #@16
    .line 172
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 180
    :cond_1
    if-nez v1, :cond_2

    #@1b
    .line 182
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v3, "attempt to reduce counter past zero."

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 187
    .end local v0    # "i":I
    .end local v1    # "nonZero":Z
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@26
    array-length v2, v2

    #@27
    add-int/lit8 v0, v2, -0x1

    #@29
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    #@2b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@2d
    aget-byte v3, v2, v0

    #@2f
    add-int/lit8 v3, v3, -0x1

    #@31
    int-to-byte v3, v3

    #@32
    aput-byte v3, v2, v0

    #@34
    const/4 v2, -0x1

    #@35
    if-ne v3, v2, :cond_3

    #@37
    add-int/lit8 v0, v0, -0x1

    #@39
    goto :goto_1

    #@3a
    .line 166
    :cond_3
    return-void
.end method

.method private decrementCounterPow2(I)V
    .locals 4
    .param p1, "pow2Div8"    # I

    #@0
    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@2
    aget-byte v2, v2, p1

    #@4
    if-nez v2, :cond_2

    #@6
    .line 143
    const/4 v1, 0x0

    #@7
    .line 145
    .local v1, "nonZero":Z
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@9
    array-length v2, v2

    #@a
    add-int/lit8 v3, p1, 0x1

    #@c
    sub-int v0, v2, v3

    #@e
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    #@10
    .line 147
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@12
    aget-byte v2, v2, v0

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 149
    const/4 v1, 0x1

    #@17
    .line 145
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 153
    :cond_1
    if-nez v1, :cond_2

    #@1c
    .line 155
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1e
    const-string/jumbo v3, "attempt to reduce counter past zero."

    #@21
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2

    #@25
    .line 160
    .end local v0    # "i":I
    .end local v1    # "nonZero":Z
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@27
    array-length v2, v2

    #@28
    add-int/lit8 v3, p1, 0x1

    #@2a
    sub-int v0, v2, v3

    #@2c
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    #@2e
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@30
    aget-byte v3, v2, v0

    #@32
    add-int/lit8 v3, v3, -0x1

    #@34
    int-to-byte v3, v3

    #@35
    aput-byte v3, v2, v0

    #@37
    const/4 v2, -0x1

    #@38
    if-ne v3, v2, :cond_3

    #@3a
    add-int/lit8 v0, v0, -0x1

    #@3c
    goto :goto_1

    #@3d
    .line 139
    :cond_3
    return-void
.end method

.method private incrementCounter()V
    .locals 3

    #@0
    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@2
    array-length v1, v1

    #@3
    add-int/lit8 v0, v1, -0x1

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@9
    aget-byte v2, v1, v0

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    int-to-byte v2, v2

    #@e
    aput-byte v2, v1, v0

    #@10
    if-nez v2, :cond_0

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    goto :goto_0

    #@15
    .line 130
    :cond_0
    return-void
.end method

.method private incrementCounter(I)V
    .locals 4
    .param p1, "offSet"    # I

    #@0
    .prologue
    .line 120
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
    .line 122
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
    .line 124
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
    .line 126
    const/4 v1, 0x1

    #@24
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterPow2(I)V

    #@27
    .line 118
    :cond_0
    return-void
.end method

.method private incrementCounterPow2(I)V
    .locals 3
    .param p1, "pow2Div8"    # I

    #@0
    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@2
    array-length v1, v1

    #@3
    add-int/lit8 v2, p1, 0x1

    #@5
    sub-int v0, v1, v2

    #@7
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@9
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
    if-nez v2, :cond_0

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    goto :goto_0

    #@17
    .line 109
    :cond_0
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
    .line 90
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 92
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@9
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    #@b
    invoke-interface {v1, v2, v4, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@e
    .line 94
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
    .line 97
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
    .line 99
    .local v0, "rv":B
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@29
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@2b
    array-length v2, v2

    #@2c
    if-ne v1, v2, :cond_1

    #@2e
    .line 101
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@30
    .line 103
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    #@33
    .line 106
    :cond_1
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 71
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
    .line 76
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
    .line 296
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@3
    array-length v3, v3

    #@4
    new-array v1, v3, [B

    #@6
    .line 298
    .local v1, "res":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@8
    array-length v4, v1

    #@9
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c
    .line 300
    array-length v3, v1

    #@d
    add-int/lit8 v0, v3, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    #@10
    if-lt v0, v3, :cond_1

    #@12
    .line 302
    aget-byte v3, v1, v0

    #@14
    and-int/lit16 v3, v3, 0xff

    #@16
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@18
    aget-byte v4, v4, v0

    #@1a
    and-int/lit16 v4, v4, 0xff

    #@1c
    sub-int v2, v3, v4

    #@1e
    .line 304
    .local v2, "v":I
    if-gez v2, :cond_0

    #@20
    .line 306
    add-int/lit8 v3, v0, -0x1

    #@22
    aget-byte v4, v1, v3

    #@24
    add-int/lit8 v4, v4, -0x1

    #@26
    int-to-byte v4, v4

    #@27
    aput-byte v4, v1, v3

    #@29
    .line 307
    add-int/lit16 v2, v2, 0x100

    #@2b
    .line 310
    :cond_0
    int-to-byte v3, v2

    #@2c
    aput-byte v3, v1, v0

    #@2e
    .line 300
    add-int/lit8 v0, v0, -0x1

    #@30
    goto :goto_0

    #@31
    .line 313
    .end local v2    # "v":I
    :cond_1
    array-length v3, v1

    #@32
    add-int/lit8 v3, v3, -0x8

    #@34
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@37
    move-result-wide v4

    #@38
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    #@3a
    int-to-long v6, v3

    #@3b
    mul-long/2addr v4, v6

    #@3c
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@3e
    int-to-long v6, v3

    #@3f
    add-long/2addr v4, v6

    #@40
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
    const/4 v4, 0x0

    #@1
    .line 49
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v1, p2

    #@6
    .line 51
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@8
    .line 52
    .local v1, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@b
    move-result-object v0

    #@c
    .line 53
    .local v0, "iv":[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@e
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@10
    array-length v3, v3

    #@11
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 56
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@17
    move-result-object v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 58
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@1c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x1

    #@21
    invoke-interface {v2, v4, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@24
    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    #@27
    .line 47
    return-void

    #@28
    .line 65
    .end local v0    # "iv":[B
    .end local v1    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v3, "SIC mode requires ParametersWithIV"

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
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
    .line 82
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
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    #@a
    .line 84
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
    .line 273
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    #@3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@5
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@7
    array-length v2, v2

    #@8
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 274
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@d
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@10
    .line 275
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    #@12
    .line 271
    return-void
.end method

.method public seekTo(J)J
    .locals 3
    .param p1, "position"    # J

    #@0
    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    #@3
    .line 291
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
    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    #@4
    .line 282
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    #@8
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    #@a
    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@d
    .line 284
    return-wide p1
.end method
