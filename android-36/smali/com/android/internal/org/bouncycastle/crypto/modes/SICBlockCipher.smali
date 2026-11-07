.class public Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.source "SICBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/CTRModeCipher;


# instance fields
.field private blacklist IV:[B

.field private final blacklist blockSize:I

.field private blacklist byteCount:I

.field private final blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist counter:[B

.field private blacklist counterOut:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 50
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 51
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 52
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 53
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    .line 54
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 56
    return-void
.end method

.method private blacklist adjustCounter(J)V
    .registers 14
    .param p1, "n"    # J

    .line 269
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xff

    const-wide/16 v4, 0x1

    if-ltz v0, :cond_3c

    .line 271
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v6, v0

    add-long/2addr v6, p1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    .line 273
    .local v6, "numBlocks":J
    move-wide v8, v6

    .line 274
    .local v8, "rem":J
    cmp-long v0, v8, v2

    if-lez v0, :cond_2b

    .line 276
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_19
    if-lt v0, v1, :cond_2b

    .line 278
    mul-int/lit8 v2, v0, 0x8

    shl-long v2, v4, v2

    .line 279
    .local v2, "diff":J
    :goto_1f
    cmp-long v10, v8, v2

    if-ltz v10, :cond_28

    .line 281
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    .line 282
    sub-long/2addr v8, v2

    goto :goto_1f

    .line 276
    .end local v2    # "diff":J
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 287
    .end local v0    # "i":I
    :cond_2b
    long-to-int v0, v8

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter(I)V

    .line 289
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v2, v2

    mul-long/2addr v2, v6

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 290
    .end local v6    # "numBlocks":J
    .end local v8    # "rem":J
    goto :goto_80

    .line 293
    :cond_3c
    neg-long v6, p1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    .line 295
    .restart local v6    # "numBlocks":J
    move-wide v8, v6

    .line 296
    .restart local v8    # "rem":J
    cmp-long v0, v8, v2

    if-lez v0, :cond_5d

    .line 298
    const/4 v0, 0x5

    .restart local v0    # "i":I
    :goto_4b
    if-lt v0, v1, :cond_5d

    .line 300
    mul-int/lit8 v2, v0, 0x8

    shl-long v2, v4, v2

    .line 301
    .restart local v2    # "diff":J
    :goto_51
    cmp-long v10, v8, v2

    if-lez v10, :cond_5a

    .line 303
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    .line 304
    sub-long/2addr v8, v2

    goto :goto_51

    .line 298
    .end local v2    # "diff":J
    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4b

    .line 309
    .end local v0    # "i":I
    :cond_5d
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_5f
    cmp-long v2, v0, v8

    const/4 v3, 0x0

    if-eqz v2, :cond_69

    .line 311
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    .line 309
    add-long/2addr v0, v4

    goto :goto_5f

    .line 314
    .end local v0    # "i":J
    :cond_69
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v4, v2

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v0, v0

    .line 316
    .local v0, "gap":I
    if-ltz v0, :cond_78

    .line 318
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_80

    .line 322
    :cond_78
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    .line 323
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 326
    .end local v0    # "gap":I
    .end local v6    # "numBlocks":J
    .end local v8    # "rem":J
    :goto_80
    return-void
.end method

.method private blacklist checkCounter()V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_23

    .line 197
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_23

    .line 199
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_1b

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 201
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Counter in CTR/SIC mode out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method private blacklist checkLastIncrement()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_24

    .line 212
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_1c

    goto :goto_24

    .line 214
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Counter in CTR/SIC mode out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist decrementCounterAt(I)V
    .registers 6
    .param p1, "pos"    # I

    .line 257
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    .line 258
    .local v0, "i":I
    :cond_4
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_14

    .line 260
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    if-eq v3, v1, :cond_4

    .line 262
    return-void

    .line 265
    :cond_14
    return-void
.end method

.method private blacklist incrementCounter()V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    .line 222
    .local v0, "i":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 224
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eqz v2, :cond_3

    .line 226
    nop

    .line 229
    :cond_13
    return-void
.end method

.method private blacklist incrementCounter(I)V
    .registers 7
    .param p1, "offSet"    # I

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    .line 247
    .local v0, "old":B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-byte v4, v1, v3

    add-int/2addr v4, p1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 249
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-byte v1, v1, v3

    if-ge v1, v0, :cond_24

    .line 251
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    .line 253
    :cond_24
    return-void
.end method

.method private blacklist incrementCounterAt(I)V
    .registers 5
    .param p1, "pos"    # I

    .line 233
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    .line 234
    .local v0, "i":I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 236
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eqz v2, :cond_4

    .line 238
    nop

    .line 241
    :cond_14
    return-void
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CTRModeCipher;
    .registers 2
    .param p0, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .registers 6
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 174
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->checkLastIncrement()V

    .line 176
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 178
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0

    .line 181
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 183
    .local v0, "rv":B
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    if-ne v2, v3, :cond_36

    .line 185
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 186
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    .line 189
    :cond_36
    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getPosition()J
    .registers 7

    .line 356
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 358
    .local v0, "res":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_f
    if-lt v1, v2, :cond_38

    .line 363
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v3, v3

    if-ge v1, v3, :cond_22

    .line 365
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v3, v4

    .local v3, "v":I
    goto :goto_26

    .line 369
    .end local v3    # "v":I
    :cond_22
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    .line 372
    .restart local v3    # "v":I
    :goto_26
    if-gez v3, :cond_32

    .line 374
    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v0, v4

    sub-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 375
    add-int/lit16 v3, v3, 0x100

    .line 378
    :cond_32
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    .line 360
    .end local v3    # "v":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 381
    .end local v1    # "i":I
    :cond_38
    array-length v1, v0

    add-int/lit8 v1, v1, -0x8

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 63
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_82

    .line 65
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 66
    .local v0, "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 68
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v2, v2

    const-string v3, " bytes."

    if-lt v1, v2, :cond_63

    .line 73
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-le v2, v1, :cond_26

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    div-int/lit8 v2, v1, 0x2

    .line 75
    .local v2, "maxCounterSize":I
    :cond_26
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v4, v4

    sub-int/2addr v1, v4

    if-gt v1, v2, :cond_43

    .line 81
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 83
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 86
    :cond_3e
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 87
    .end local v0    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v2    # "maxCounterSize":I
    nop

    .line 92
    return-void

    .line 77
    .restart local v0    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .restart local v2    # "maxCounterSize":I
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CTR/SIC mode requires IV of at least: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v2    # "maxCounterSize":I
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTR/SIC mode requires IV no greater than: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    .end local v0    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTR/SIC mode requires ParametersWithIV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 12
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

    .line 107
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-eqz v0, :cond_11

    .line 109
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v2, "in":[B
    .local v3, "inOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    .line 110
    iget p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p1

    .line 113
    .end local v2    # "in":[B
    .end local v3    # "inOff":I
    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_11
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .restart local v2    # "in":[B
    .restart local v3    # "inOff":I
    .restart local v5    # "out":[B
    .restart local v6    # "outOff":I
    iget p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int p2, v3, p1

    array-length p1, v2

    if-gt p2, p1, :cond_52

    .line 117
    iget p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int p4, v6, p1

    array-length p1, v5

    if-gt p4, p1, :cond_4a

    .line 122
    iget-object p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object p2, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object p3, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 123
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_2f
    iget p2, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge p1, p2, :cond_44

    .line 125
    add-int p4, v6, p1

    add-int p2, v3, p1

    aget-byte p2, v2, p2

    iget-object p3, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    aget-byte p3, p3, p1

    xor-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, v5, p4

    .line 123
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    .line 127
    .end local p1    # "i":I
    :cond_44
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    .line 128
    iget p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p1

    .line 119
    :cond_4a
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_52
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too small"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 134
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5b

    .line 138
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_53

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, p3, :cond_52

    .line 147
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    .line 149
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->checkLastIncrement()V

    .line 151
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v1, v3, v2, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 152
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    .local v1, "next":B
    goto :goto_4b

    .line 156
    .end local v1    # "next":B
    :cond_2f
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v3, v3, v4

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    .line 157
    .restart local v1    # "next":B
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v4, v4

    if-ne v3, v4, :cond_4b

    .line 159
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 160
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    .line 163
    :cond_4b
    :goto_4b
    add-int v2, p5, v0

    aput-byte v1, p4, v2

    .line 143
    .end local v1    # "next":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 166
    .end local v0    # "i":I
    :cond_52
    return p3

    .line 140
    :cond_53
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_5b
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too small"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 333
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 334
    return-void
.end method

.method public blacklist seekTo(J)J
    .registers 5
    .param p1, "position"    # J

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist skip(J)J
    .registers 7
    .param p1, "numberOfBytes"    # J

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    .line 340
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    .line 342
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 344
    return-wide p1
.end method
