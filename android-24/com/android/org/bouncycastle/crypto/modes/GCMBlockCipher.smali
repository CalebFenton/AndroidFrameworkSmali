.class public Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final MAX_INPUT_SIZE:J = 0xfffffffe0L


# instance fields
.field private H:[B

.field private J0:[B

.field private S:[B

.field private S_at:[B

.field private S_atPre:[B

.field private atBlock:[B

.field private atBlockPos:I

.field private atLength:J

.field private atLengthPre:J

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private macBlock:[B

.field private macSize:I

.field private multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private nonce:[B

.field private totalLength:J


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    #@4
    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "m"    # Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x10

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    .line 68
    const-string/jumbo v1, "cipher required with a block size of 16."

    #@10
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 71
    :cond_0
    if-nez p2, :cond_1

    #@16
    .line 74
    new-instance p2, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    #@18
    .end local p2    # "m":Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;
    invoke-direct {p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    #@1b
    .line 77
    .restart local p2    # "m":Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;
    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@1d
    .line 78
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@1f
    .line 63
    return-void
.end method

.method private gCTRBlock([B[BI)V
    .locals 6
    .param p1, "block"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    #@0
    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    #@3
    move-result-object v0

    #@4
    .line 515
    .local v0, "tmp":[B
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@7
    .line 516
    const/4 v1, 0x0

    #@8
    const/16 v2, 0x10

    #@a
    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d
    .line 518
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@f
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@11
    if-eqz v2, :cond_0

    #@13
    .end local v0    # "tmp":[B
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    #@16
    .line 520
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@18
    const-wide/16 v4, 0x10

    #@1a
    add-long/2addr v2, v4

    #@1b
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@1d
    .line 511
    return-void

    #@1e
    .restart local v0    # "tmp":[B
    :cond_0
    move-object v0, p1

    #@1f
    .line 518
    goto :goto_0
.end method

.method private gCTRPartial([BII[BI)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 525
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    #@4
    move-result-object v0

    #@5
    .line 527
    .local v0, "tmp":[B
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    #@8
    .line 528
    invoke-static {v0, v3, p4, p5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 530
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@d
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@f
    if-eqz v2, :cond_0

    #@11
    .end local v0    # "tmp":[B
    :goto_0
    invoke-direct {p0, v1, v0, v3, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    #@14
    .line 532
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@16
    int-to-long v4, p3

    #@17
    add-long/2addr v2, v4

    #@18
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@1a
    .line 523
    return-void

    #@1b
    .restart local v0    # "tmp":[B
    :cond_0
    move-object v0, p1

    #@1c
    .line 530
    goto :goto_0
.end method

.method private gHASH([B[BI)V
    .locals 4
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "len"    # I

    #@0
    .prologue
    .line 537
    const/4 v1, 0x0

    #@1
    .local v1, "pos":I
    :goto_0
    if-ge v1, p3, :cond_0

    #@3
    .line 539
    sub-int v2, p3, v1

    #@5
    const/16 v3, 0x10

    #@7
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@a
    move-result v0

    #@b
    .line 540
    .local v0, "num":I
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    #@e
    .line 537
    add-int/lit8 v1, v1, 0x10

    #@10
    goto :goto_0

    #@11
    .line 535
    .end local v0    # "num":I
    :cond_0
    return-void
.end method

.method private gHASHBlock([B[B)V
    .locals 1
    .param p1, "Y"    # [B
    .param p2, "b"    # [B

    #@0
    .prologue
    .line 546
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@3
    .line 547
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@5
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    #@8
    .line 544
    return-void
.end method

.method private gHASHPartial([B[BII)V
    .locals 1
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 552
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    #@3
    .line 553
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@5
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    #@8
    .line 550
    return-void
.end method

.method private getNextCounterBlock()[B
    .locals 9

    #@0
    .prologue
    const/16 v8, 0xf

    #@2
    const/16 v7, 0xe

    #@4
    const/16 v6, 0xd

    #@6
    const/16 v5, 0xc

    #@8
    const/4 v4, 0x0

    #@9
    .line 559
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@b
    aget-byte v2, v2, v8

    #@d
    and-int/lit16 v2, v2, 0xff

    #@f
    add-int/lit8 v0, v2, 0x1

    #@11
    .local v0, "c":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@13
    int-to-byte v3, v0

    #@14
    aput-byte v3, v2, v8

    #@16
    ushr-int/lit8 v0, v0, 0x8

    #@18
    .line 560
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@1a
    aget-byte v2, v2, v7

    #@1c
    and-int/lit16 v2, v2, 0xff

    #@1e
    add-int/2addr v0, v2

    #@1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@21
    int-to-byte v3, v0

    #@22
    aput-byte v3, v2, v7

    #@24
    ushr-int/lit8 v0, v0, 0x8

    #@26
    .line 561
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@28
    aget-byte v2, v2, v6

    #@2a
    and-int/lit16 v2, v2, 0xff

    #@2c
    add-int/2addr v0, v2

    #@2d
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@2f
    int-to-byte v3, v0

    #@30
    aput-byte v3, v2, v6

    #@32
    ushr-int/lit8 v0, v0, 0x8

    #@34
    .line 562
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@36
    aget-byte v2, v2, v5

    #@38
    and-int/lit16 v2, v2, 0xff

    #@3a
    add-int/2addr v0, v2

    #@3b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@3d
    int-to-byte v3, v0

    #@3e
    aput-byte v3, v2, v5

    #@40
    .line 564
    const/16 v2, 0x10

    #@42
    new-array v1, v2, [B

    #@44
    .line 566
    .local v1, "tmp":[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@46
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@48
    invoke-interface {v2, v3, v4, v1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@4b
    .line 567
    return-object v1
.end method

.method private getTotalInputSizeAfterNewInput(I)J
    .locals 4
    .param p1, "newInputLen"    # I

    #@0
    .prologue
    .line 214
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@6
    int-to-long v2, v2

    #@7
    add-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method private initCipher()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/16 v5, 0x10

    #@4
    const/4 v4, 0x0

    #@5
    .line 271
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@7
    cmp-long v0, v0, v6

    #@9
    if-lez v0, :cond_0

    #@b
    .line 273
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@d
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@f
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 274
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@14
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@16
    .line 278
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@18
    if-lez v0, :cond_1

    #@1a
    .line 280
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@1c
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@1e
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@20
    invoke-direct {p0, v0, v1, v4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    #@23
    .line 281
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@25
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@27
    int-to-long v2, v2

    #@28
    add-long/2addr v0, v2

    #@29
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@2b
    .line 284
    :cond_1
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@2d
    cmp-long v0, v0, v6

    #@2f
    if-lez v0, :cond_2

    #@31
    .line 286
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@33
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@35
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@38
    .line 269
    :cond_2
    return-void
.end method

.method private outputBlock([BI)V
    .locals 5
    .param p1, "output"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 336
    array-length v0, p1

    #@2
    add-int/lit8 v1, p2, 0x10

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 338
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@8
    const-string/jumbo v1, "Output buffer too short"

    #@b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 340
    :cond_0
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@11
    const-wide/16 v2, 0x0

    #@13
    cmp-long v0, v0, v2

    #@15
    if-nez v0, :cond_1

    #@17
    .line 342
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    #@1a
    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@1c
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([B[BI)V

    #@1f
    .line 345
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 347
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@25
    .line 334
    :goto_0
    return-void

    #@26
    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@28
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@2a
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@2c
    const/16 v3, 0x10

    #@2e
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    .line 352
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@33
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@35
    goto :goto_0
.end method

.method private reset(Z)V
    .locals 6
    .param p1, "clearMac"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/16 v1, 0x10

    #@5
    const/4 v2, 0x0

    #@6
    .line 482
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@8
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@b
    .line 484
    new-array v0, v1, [B

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@f
    .line 485
    new-array v0, v1, [B

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@13
    .line 486
    new-array v0, v1, [B

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@17
    .line 487
    new-array v0, v1, [B

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@1b
    .line 488
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@1d
    .line 489
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@1f
    .line 490
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@21
    .line 491
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@23
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@29
    .line 492
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@2b
    .line 493
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@2d
    .line 495
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 497
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@33
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    #@36
    .line 500
    :cond_0
    if-eqz p1, :cond_1

    #@38
    .line 502
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@3a
    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .line 507
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@40
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@42
    array-length v1, v1

    #@43
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    #@46
    .line 480
    :cond_2
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    .line 359
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@2
    const-wide/16 v4, 0x0

    #@4
    cmp-long v0, v0, v4

    #@6
    if-nez v0, :cond_0

    #@8
    .line 361
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    #@b
    .line 364
    :cond_0
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@d
    .line 366
    .local v3, "extra":I
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 368
    array-length v0, p1

    #@12
    add-int v1, p2, v3

    #@14
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@16
    add-int/2addr v1, v2

    #@17
    if-ge v0, v1, :cond_3

    #@19
    .line 370
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@1b
    const-string/jumbo v1, "Output buffer too short"

    #@1e
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 375
    :cond_1
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@24
    if-ge v3, v0, :cond_2

    #@26
    .line 377
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@28
    const-string/jumbo v1, "data too short"

    #@2b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 379
    :cond_2
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@31
    sub-int/2addr v3, v0

    #@32
    .line 381
    array-length v0, p1

    #@33
    add-int v1, p2, v3

    #@35
    if-ge v0, v1, :cond_3

    #@37
    .line 383
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@39
    const-string/jumbo v1, "Output buffer too short"

    #@3c
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 387
    :cond_3
    if-lez v3, :cond_4

    #@42
    .line 389
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@44
    const/4 v2, 0x0

    #@45
    move-object v0, p0

    #@46
    move-object v4, p1

    #@47
    move v5, p2

    #@48
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRPartial([BII[BI)V

    #@4b
    .line 392
    :cond_4
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@4d
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@4f
    int-to-long v4, v2

    #@50
    add-long/2addr v0, v4

    #@51
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@53
    .line 394
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@55
    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@57
    cmp-long v0, v0, v4

    #@59
    if-lez v0, :cond_8

    #@5b
    .line 404
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@5d
    if-lez v0, :cond_5

    #@5f
    .line 406
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@61
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@63
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@65
    const/4 v4, 0x0

    #@66
    invoke-direct {p0, v0, v1, v4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    #@69
    .line 410
    :cond_5
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@6b
    const-wide/16 v4, 0x0

    #@6d
    cmp-long v0, v0, v4

    #@6f
    if-lez v0, :cond_6

    #@71
    .line 412
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@73
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@75
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@78
    .line 416
    :cond_6
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@7a
    const-wide/16 v4, 0x8

    #@7c
    mul-long/2addr v0, v4

    #@7d
    const-wide/16 v4, 0x7f

    #@7f
    add-long/2addr v0, v4

    #@80
    const/4 v2, 0x7

    #@81
    ushr-long v8, v0, v2

    #@83
    .line 419
    .local v8, "c":J
    const/16 v0, 0x10

    #@85
    new-array v6, v0, [B

    #@87
    .line 420
    .local v6, "H_c":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@89
    if-nez v0, :cond_7

    #@8b
    .line 422
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;

    #@8d
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;-><init>()V

    #@90
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@92
    .line 423
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@94
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@96
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    #@99
    .line 425
    :cond_7
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@9b
    invoke-interface {v0, v8, v9, v6}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    #@9e
    .line 428
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@a0
    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    #@a3
    .line 431
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@a5
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@a7
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@aa
    .line 435
    .end local v6    # "H_c":[B
    .end local v8    # "c":J
    :cond_8
    const/16 v0, 0x10

    #@ac
    new-array v7, v0, [B

    #@ae
    .line 436
    .local v7, "X":[B
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@b0
    const-wide/16 v4, 0x8

    #@b2
    mul-long/2addr v0, v4

    #@b3
    const/4 v2, 0x0

    #@b4
    invoke-static {v0, v1, v7, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@b7
    .line 437
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@b9
    const-wide/16 v4, 0x8

    #@bb
    mul-long/2addr v0, v4

    #@bc
    const/16 v2, 0x8

    #@be
    invoke-static {v0, v1, v7, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@c1
    .line 439
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@c3
    invoke-direct {p0, v0, v7}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    #@c6
    .line 442
    const/16 v0, 0x10

    #@c8
    new-array v12, v0, [B

    #@ca
    .line 443
    .local v12, "tag":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@cc
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@ce
    const/4 v2, 0x0

    #@cf
    const/4 v4, 0x0

    #@d0
    invoke-interface {v0, v1, v2, v12, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@d3
    .line 444
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@d5
    invoke-static {v12, v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@d8
    .line 446
    move v11, v3

    #@d9
    .line 449
    .local v11, "resultLen":I
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@db
    new-array v0, v0, [B

    #@dd
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@df
    .line 450
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@e1
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@e3
    const/4 v2, 0x0

    #@e4
    const/4 v4, 0x0

    #@e5
    invoke-static {v12, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e8
    .line 452
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@ea
    if-eqz v0, :cond_a

    #@ec
    .line 455
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@ee
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@f0
    add-int/2addr v1, p2

    #@f1
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@f3
    const/4 v4, 0x0

    #@f4
    invoke-static {v0, v4, p1, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f7
    .line 456
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@f9
    add-int/2addr v11, v0

    #@fa
    .line 469
    :cond_9
    const/4 v0, 0x0

    #@fb
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    #@fe
    .line 471
    return v11

    #@ff
    .line 461
    :cond_a
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@101
    new-array v10, v0, [B

    #@103
    .line 462
    .local v10, "msgMac":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@105
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@107
    const/4 v2, 0x0

    #@108
    invoke-static {v0, v3, v10, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10b
    .line 463
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@10d
    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@110
    move-result v0

    #@111
    if-nez v0, :cond_9

    #@113
    .line 465
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@115
    const-string/jumbo v1, "mac check in GCM failed"

    #@118
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@11b
    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "/GCM"

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

.method public getMac()[B
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    #@0
    .prologue
    .line 200
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@2
    add-int v0, p1, v1

    #@4
    .line 202
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 204
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@a
    add-int/2addr v1, v0

    #@b
    return v1

    #@c
    .line 207
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@e
    if-ge v0, v1, :cond_1

    #@10
    const/4 v1, 0x0

    #@11
    :goto_0
    return v1

    #@12
    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@14
    sub-int v1, v0, v1

    #@16
    goto :goto_0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    #@0
    .prologue
    .line 220
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@2
    add-int v0, p1, v1

    #@4
    .line 221
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@6
    if-nez v1, :cond_1

    #@8
    .line 223
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 225
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 227
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@10
    sub-int/2addr v0, v1

    #@11
    .line 229
    :cond_1
    rem-int/lit8 v1, v0, 0x10

    #@13
    sub-int v1, v0, v1

    #@15
    return v1
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 11
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@2
    .line 99
    const/4 v6, 0x0

    #@3
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@5
    .line 103
    instance-of v6, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@7
    if-eqz v6, :cond_3

    #@9
    move-object v4, p2

    #@a
    .line 105
    nop

    #@b
    nop

    #@c
    .line 107
    .local v4, "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    #@f
    move-result-object v6

    #@10
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@12
    .line 108
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    #@15
    move-result-object v6

    #@16
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@18
    .line 110
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    #@1b
    move-result v3

    #@1c
    .line 111
    .local v3, "macSizeBits":I
    const/16 v6, 0x20

    #@1e
    if-lt v3, v6, :cond_0

    #@20
    const/16 v6, 0x80

    #@22
    if-le v3, v6, :cond_1

    #@24
    .line 113
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v7, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v8, "Invalid value for MAC size: "

    #@2e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v6

    #@3e
    .line 111
    :cond_1
    rem-int/lit8 v6, v3, 0x8

    #@40
    if-nez v6, :cond_0

    #@42
    .line 116
    div-int/lit8 v6, v3, 0x8

    #@44
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@46
    .line 117
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@49
    move-result-object v2

    #@4a
    .line 133
    .end local v3    # "macSizeBits":I
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    .local v2, "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_0
    if-eqz p1, :cond_5

    #@4c
    const/16 v1, 0x10

    #@4e
    .line 134
    .local v1, "bufLength":I
    :goto_1
    new-array v6, v1, [B

    #@50
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@52
    .line 136
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@54
    if-eqz v6, :cond_2

    #@56
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@58
    array-length v6, v6

    #@59
    const/4 v7, 0x1

    #@5a
    if-ge v6, v7, :cond_6

    #@5c
    .line 138
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5e
    const-string/jumbo v7, "IV must be at least 1 byte"

    #@61
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v6

    #@65
    .line 119
    .end local v1    # "bufLength":I
    .end local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_3
    instance-of v6, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@67
    if-eqz v6, :cond_4

    #@69
    move-object v5, p2

    #@6a
    .line 121
    nop

    #@6b
    nop

    #@6c
    .line 123
    .local v5, "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@6f
    move-result-object v6

    #@70
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@72
    .line 124
    const/4 v6, 0x0

    #@73
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@75
    .line 125
    const/16 v6, 0x10

    #@77
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@79
    .line 126
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@7c
    move-result-object v2

    #@7d
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@7f
    .restart local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_0

    #@80
    .line 130
    .end local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .end local v5    # "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@82
    const-string/jumbo v7, "invalid parameters passed to GCM"

    #@85
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@88
    throw v6

    #@89
    .line 133
    .restart local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_5
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@8b
    add-int/lit8 v1, v6, 0x10

    #@8d
    goto :goto_1

    #@8e
    .line 145
    .restart local v1    # "bufLength":I
    :cond_6
    if-eqz v2, :cond_9

    #@90
    .line 147
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@92
    const/4 v7, 0x1

    #@93
    invoke-interface {v6, v7, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@96
    .line 149
    const/16 v6, 0x10

    #@98
    new-array v6, v6, [B

    #@9a
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@9c
    .line 150
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@9e
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@a0
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@a2
    const/4 v9, 0x0

    #@a3
    const/4 v10, 0x0

    #@a4
    invoke-interface {v6, v7, v9, v8, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@a7
    .line 153
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@a9
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@ab
    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    #@ae
    .line 154
    const/4 v6, 0x0

    #@af
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@b1
    .line 161
    :cond_7
    const/16 v6, 0x10

    #@b3
    new-array v6, v6, [B

    #@b5
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@b7
    .line 163
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@b9
    array-length v6, v6

    #@ba
    const/16 v7, 0xc

    #@bc
    if-ne v6, v7, :cond_a

    #@be
    .line 165
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@c0
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@c2
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@c4
    array-length v8, v8

    #@c5
    const/4 v9, 0x0

    #@c6
    const/4 v10, 0x0

    #@c7
    invoke-static {v6, v9, v7, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@ca
    .line 166
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@cc
    const/4 v7, 0x1

    #@cd
    const/16 v8, 0xf

    #@cf
    aput-byte v7, v6, v8

    #@d1
    .line 176
    :goto_2
    const/16 v6, 0x10

    #@d3
    new-array v6, v6, [B

    #@d5
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@d7
    .line 177
    const/16 v6, 0x10

    #@d9
    new-array v6, v6, [B

    #@db
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@dd
    .line 178
    const/16 v6, 0x10

    #@df
    new-array v6, v6, [B

    #@e1
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@e3
    .line 179
    const/16 v6, 0x10

    #@e5
    new-array v6, v6, [B

    #@e7
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@e9
    .line 180
    const/4 v6, 0x0

    #@ea
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@ec
    .line 181
    const-wide/16 v6, 0x0

    #@ee
    iput-wide v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@f0
    .line 182
    const-wide/16 v6, 0x0

    #@f2
    iput-wide v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@f4
    .line 183
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@f6
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@f9
    move-result-object v6

    #@fa
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@fc
    .line 184
    const/4 v6, 0x0

    #@fd
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@ff
    .line 185
    const-wide/16 v6, 0x0

    #@101
    iput-wide v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@103
    .line 187
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@105
    if-eqz v6, :cond_8

    #@107
    .line 189
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@109
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@10b
    array-length v7, v7

    #@10c
    const/4 v8, 0x0

    #@10d
    invoke-virtual {p0, v6, v8, v7}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    #@110
    .line 96
    :cond_8
    return-void

    #@111
    .line 156
    :cond_9
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@113
    if-nez v6, :cond_7

    #@115
    .line 158
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@117
    const-string/jumbo v7, "Key must be specified in initial init"

    #@11a
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11d
    throw v6

    #@11e
    .line 170
    :cond_a
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@120
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@122
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@124
    array-length v8, v8

    #@125
    invoke-direct {p0, v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    #@128
    .line 171
    const/16 v6, 0x10

    #@12a
    new-array v0, v6, [B

    #@12c
    .line 172
    .local v0, "X":[B
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@12e
    array-length v6, v6

    #@12f
    int-to-long v6, v6

    #@130
    const-wide/16 v8, 0x8

    #@132
    mul-long/2addr v6, v8

    #@133
    const/16 v8, 0x8

    #@135
    invoke-static {v6, v7, v0, v8}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@138
    .line 173
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@13a
    invoke-direct {p0, v6, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    #@13d
    goto :goto_2
.end method

.method public processAADByte(B)V
    .locals 4
    .param p1, "in"    # B

    #@0
    .prologue
    .line 235
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    #@4
    move-result-wide v0

    #@5
    const-wide v2, 0xfffffffe0L

    #@a
    cmp-long v0, v0, v2

    #@c
    if-lez v0, :cond_0

    #@e
    .line 236
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@10
    const-string/jumbo v1, "Input exceeded 68719476704 bytes"

    #@13
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@19
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@1b
    aput-byte p1, v0, v1

    #@1d
    .line 240
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@23
    const/16 v1, 0x10

    #@25
    if-ne v0, v1, :cond_1

    #@27
    .line 243
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@29
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@2b
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    #@2e
    .line 244
    const/4 v0, 0x0

    #@2f
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@31
    .line 245
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@33
    const-wide/16 v2, 0x10

    #@35
    add-long/2addr v0, v2

    #@36
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@38
    .line 232
    :cond_1
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 252
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    #@3
    move-result-wide v2

    #@4
    const-wide v4, 0xfffffffe0L

    #@9
    cmp-long v1, v2, v4

    #@b
    if-lez v1, :cond_0

    #@d
    .line 253
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@f
    const-string/jumbo v2, "Input exceeded 68719476704 bytes"

    #@12
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 256
    :cond_0
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    #@19
    .line 258
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@1b
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@1d
    add-int v3, p2, v0

    #@1f
    aget-byte v3, p1, v3

    #@21
    aput-byte v3, v1, v2

    #@23
    .line 259
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@29
    const/16 v2, 0x10

    #@2b
    if-ne v1, v2, :cond_1

    #@2d
    .line 262
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@2f
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@31
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    #@34
    .line 263
    const/4 v1, 0x0

    #@35
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@37
    .line 264
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@39
    const-wide/16 v4, 0x10

    #@3b
    add-long/2addr v2, v4

    #@3c
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@3e
    .line 256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 249
    :cond_2
    return-void
.end method

.method public processByte(B[BI)I
    .locals 4
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    #@4
    move-result-wide v0

    #@5
    const-wide v2, 0xfffffffe0L

    #@a
    cmp-long v0, v0, v2

    #@c
    if-lez v0, :cond_0

    #@e
    .line 295
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@10
    const-string/jumbo v1, "Input exceeded 68719476704 bytes"

    #@13
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@19
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@1b
    aput-byte p1, v0, v1

    #@1d
    .line 299
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@23
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@25
    array-length v1, v1

    #@26
    if-ne v0, v1, :cond_1

    #@28
    .line 301
    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    #@2b
    .line 302
    const/16 v0, 0x10

    #@2d
    return v0

    #@2e
    .line 304
    :cond_1
    const/4 v0, 0x0

    #@2f
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    #@3
    move-result-wide v2

    #@4
    const-wide v4, 0xfffffffe0L

    #@9
    cmp-long v2, v2, v4

    #@b
    if-lez v2, :cond_0

    #@d
    .line 312
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@f
    const-string/jumbo v3, "Input exceeded 68719476704 bytes"

    #@12
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 315
    :cond_0
    array-length v2, p1

    #@17
    add-int v3, p2, p3

    #@19
    if-ge v2, v3, :cond_1

    #@1b
    .line 317
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@1d
    const-string/jumbo v3, "Input buffer too short"

    #@20
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 319
    :cond_1
    const/4 v1, 0x0

    #@25
    .line 321
    .local v1, "resultLen":I
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    #@28
    .line 323
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@2a
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@2c
    add-int v4, p2, v0

    #@2e
    aget-byte v4, p1, v4

    #@30
    aput-byte v4, v2, v3

    #@32
    .line 324
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@34
    add-int/lit8 v2, v2, 0x1

    #@36
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@38
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@3a
    array-length v3, v3

    #@3b
    if-ne v2, v3, :cond_2

    #@3d
    .line 326
    add-int v2, p5, v1

    #@3f
    invoke-direct {p0, p4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    #@42
    .line 327
    add-int/lit8 v1, v1, 0x10

    #@44
    .line 321
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 331
    :cond_3
    return v1
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 476
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    #@4
    .line 474
    return-void
.end method
