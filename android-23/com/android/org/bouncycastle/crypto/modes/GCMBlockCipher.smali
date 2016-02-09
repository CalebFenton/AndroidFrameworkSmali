.class public Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10


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
    .line 55
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    #@4
    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "m"    # Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x10

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    .line 63
    const-string/jumbo v1, "cipher required with a block size of 16."

    #@10
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 66
    :cond_0
    if-nez p2, :cond_1

    #@16
    .line 69
    new-instance p2, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    #@18
    .end local p2    # "m":Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;
    invoke-direct {p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    #@1b
    .line 72
    .restart local p2    # "m":Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;
    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@1d
    .line 73
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@1f
    .line 58
    return-void
.end method

.method private gCTRBlock([B[BI)V
    .locals 6
    .param p1, "block"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    #@0
    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    #@3
    move-result-object v0

    #@4
    .line 477
    .local v0, "tmp":[B
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@7
    .line 478
    const/4 v1, 0x0

    #@8
    const/16 v2, 0x10

    #@a
    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d
    .line 480
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
    .line 482
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@18
    const-wide/16 v4, 0x10

    #@1a
    add-long/2addr v2, v4

    #@1b
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@1d
    .line 473
    return-void

    #@1e
    .restart local v0    # "tmp":[B
    :cond_0
    move-object v0, p1

    #@1f
    .line 480
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
    .line 487
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    #@4
    move-result-object v0

    #@5
    .line 489
    .local v0, "tmp":[B
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    #@8
    .line 490
    invoke-static {v0, v3, p4, p5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 492
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
    .line 494
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@16
    int-to-long v4, p3

    #@17
    add-long/2addr v2, v4

    #@18
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@1a
    .line 485
    return-void

    #@1b
    .restart local v0    # "tmp":[B
    :cond_0
    move-object v0, p1

    #@1c
    .line 492
    goto :goto_0
.end method

.method private gHASH([B[BI)V
    .locals 4
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "len"    # I

    #@0
    .prologue
    .line 499
    const/4 v1, 0x0

    #@1
    .local v1, "pos":I
    :goto_0
    if-ge v1, p3, :cond_0

    #@3
    .line 501
    sub-int v2, p3, v1

    #@5
    const/16 v3, 0x10

    #@7
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@a
    move-result v0

    #@b
    .line 502
    .local v0, "num":I
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    #@e
    .line 499
    add-int/lit8 v1, v1, 0x10

    #@10
    goto :goto_0

    #@11
    .line 497
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
    .line 508
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@3
    .line 509
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@5
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    #@8
    .line 506
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
    .line 514
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    #@3
    .line 515
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@5
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    #@8
    .line 512
    return-void
.end method

.method private getNextCounterBlock()[B
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 520
    const/16 v1, 0xf

    #@3
    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    #@5
    if-lt v1, v3, :cond_0

    #@7
    .line 522
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@9
    aget-byte v3, v3, v1

    #@b
    add-int/lit8 v3, v3, 0x1

    #@d
    and-int/lit16 v3, v3, 0xff

    #@f
    int-to-byte v0, v3

    #@10
    .line 523
    .local v0, "b":B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@12
    aput-byte v0, v3, v1

    #@14
    .line 525
    if-eqz v0, :cond_1

    #@16
    .line 531
    .end local v0    # "b":B
    :cond_0
    const/16 v3, 0x10

    #@18
    new-array v2, v3, [B

    #@1a
    .line 533
    .local v2, "tmp":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@1c
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@1e
    invoke-interface {v3, v4, v5, v2, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@21
    .line 534
    return-object v2

    #@22
    .line 520
    .end local v2    # "tmp":[B
    .restart local v0    # "b":B
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@24
    goto :goto_0
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
    .line 248
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@7
    cmp-long v0, v0, v6

    #@9
    if-lez v0, :cond_0

    #@b
    .line 250
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@d
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@f
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 251
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@14
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@16
    .line 255
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@18
    if-lez v0, :cond_1

    #@1a
    .line 257
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@1c
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@1e
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@20
    invoke-direct {p0, v0, v1, v4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    #@23
    .line 258
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
    .line 261
    :cond_1
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@2d
    cmp-long v0, v0, v6

    #@2f
    if-lez v0, :cond_2

    #@31
    .line 263
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@33
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@35
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@38
    .line 246
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
    .line 303
    array-length v0, p1

    #@2
    add-int/lit8 v1, p2, 0x10

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 305
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@8
    const-string/jumbo v1, "Output buffer too short"

    #@b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 307
    :cond_0
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@11
    const-wide/16 v2, 0x0

    #@13
    cmp-long v0, v0, v2

    #@15
    if-nez v0, :cond_1

    #@17
    .line 309
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    #@1a
    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@1c
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([B[BI)V

    #@1f
    .line 312
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 314
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@25
    .line 301
    :goto_0
    return-void

    #@26
    .line 318
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
    .line 319
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
    .line 444
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@8
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@b
    .line 446
    new-array v0, v1, [B

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@f
    .line 447
    new-array v0, v1, [B

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@13
    .line 448
    new-array v0, v1, [B

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@17
    .line 449
    new-array v0, v1, [B

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@1b
    .line 450
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@1d
    .line 451
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@1f
    .line 452
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@21
    .line 453
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@23
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@29
    .line 454
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@2b
    .line 455
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@2d
    .line 457
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 459
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@33
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    #@36
    .line 462
    :cond_0
    if-eqz p1, :cond_1

    #@38
    .line 464
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@3a
    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .line 469
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@40
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@42
    array-length v1, v1

    #@43
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    #@46
    .line 442
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
    .line 326
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@2
    const-wide/16 v4, 0x0

    #@4
    cmp-long v0, v0, v4

    #@6
    if-nez v0, :cond_0

    #@8
    .line 328
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    #@b
    .line 331
    :cond_0
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@d
    .line 332
    .local v3, "extra":I
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@f
    if-nez v0, :cond_2

    #@11
    .line 334
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@13
    if-ge v3, v0, :cond_1

    #@15
    .line 336
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@17
    const-string/jumbo v1, "data too short"

    #@1a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 338
    :cond_1
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@20
    sub-int/2addr v3, v0

    #@21
    .line 341
    :cond_2
    if-lez v3, :cond_4

    #@23
    .line 343
    array-length v0, p1

    #@24
    add-int v1, p2, v3

    #@26
    if-ge v0, v1, :cond_3

    #@28
    .line 345
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@2a
    const-string/jumbo v1, "Output buffer too short"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 347
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@33
    const/4 v2, 0x0

    #@34
    move-object v0, p0

    #@35
    move-object v4, p1

    #@36
    move v5, p2

    #@37
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRPartial([BII[BI)V

    #@3a
    .line 350
    :cond_4
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@3c
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@3e
    int-to-long v4, v2

    #@3f
    add-long/2addr v0, v4

    #@40
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@42
    .line 352
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@44
    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@46
    cmp-long v0, v0, v4

    #@48
    if-lez v0, :cond_8

    #@4a
    .line 362
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@4c
    if-lez v0, :cond_5

    #@4e
    .line 364
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@50
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@52
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@54
    const/4 v4, 0x0

    #@55
    invoke-direct {p0, v0, v1, v4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    #@58
    .line 368
    :cond_5
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@5a
    const-wide/16 v4, 0x0

    #@5c
    cmp-long v0, v0, v4

    #@5e
    if-lez v0, :cond_6

    #@60
    .line 370
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@62
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@64
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@67
    .line 374
    :cond_6
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@69
    const-wide/16 v4, 0x8

    #@6b
    mul-long/2addr v0, v4

    #@6c
    const-wide/16 v4, 0x7f

    #@6e
    add-long/2addr v0, v4

    #@6f
    const/4 v2, 0x7

    #@70
    ushr-long v8, v0, v2

    #@72
    .line 377
    .local v8, "c":J
    const/16 v0, 0x10

    #@74
    new-array v6, v0, [B

    #@76
    .line 378
    .local v6, "H_c":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@78
    if-nez v0, :cond_7

    #@7a
    .line 380
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;

    #@7c
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;-><init>()V

    #@7f
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@81
    .line 381
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@83
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@85
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    #@88
    .line 383
    :cond_7
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@8a
    invoke-interface {v0, v8, v9, v6}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    #@8d
    .line 386
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@8f
    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    #@92
    .line 389
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@94
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@96
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@99
    .line 393
    .end local v6    # "H_c":[B
    .end local v8    # "c":J
    :cond_8
    const/16 v0, 0x10

    #@9b
    new-array v7, v0, [B

    #@9d
    .line 394
    .local v7, "X":[B
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@9f
    const-wide/16 v4, 0x8

    #@a1
    mul-long/2addr v0, v4

    #@a2
    const/4 v2, 0x0

    #@a3
    invoke-static {v0, v1, v7, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@a6
    .line 395
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@a8
    const-wide/16 v4, 0x8

    #@aa
    mul-long/2addr v0, v4

    #@ab
    const/16 v2, 0x8

    #@ad
    invoke-static {v0, v1, v7, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@b0
    .line 397
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@b2
    invoke-direct {p0, v0, v7}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    #@b5
    .line 400
    const/16 v0, 0x10

    #@b7
    new-array v12, v0, [B

    #@b9
    .line 401
    .local v12, "tag":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@bb
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@bd
    const/4 v2, 0x0

    #@be
    const/4 v4, 0x0

    #@bf
    invoke-interface {v0, v1, v2, v12, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@c2
    .line 402
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@c4
    invoke-static {v12, v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    #@c7
    .line 404
    move v11, v3

    #@c8
    .line 407
    .local v11, "resultLen":I
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@ca
    new-array v0, v0, [B

    #@cc
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@ce
    .line 408
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@d0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@d2
    const/4 v2, 0x0

    #@d3
    const/4 v4, 0x0

    #@d4
    invoke-static {v12, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d7
    .line 410
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@d9
    if-eqz v0, :cond_b

    #@db
    .line 412
    array-length v0, p1

    #@dc
    add-int v1, p2, v3

    #@de
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@e0
    add-int/2addr v1, v2

    #@e1
    if-ge v0, v1, :cond_9

    #@e3
    .line 414
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@e5
    const-string/jumbo v1, "Output buffer too short"

    #@e8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@eb
    throw v0

    #@ec
    .line 417
    :cond_9
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
    .line 418
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@f9
    add-int/2addr v11, v0

    #@fa
    .line 431
    :cond_a
    const/4 v0, 0x0

    #@fb
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    #@fe
    .line 433
    return v11

    #@ff
    .line 423
    :cond_b
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@101
    new-array v10, v0, [B

    #@103
    .line 424
    .local v10, "msgMac":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@105
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@107
    const/4 v2, 0x0

    #@108
    invoke-static {v0, v3, v10, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10b
    .line 425
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@10d
    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@110
    move-result v0

    #@111
    if-nez v0, :cond_a

    #@113
    .line 427
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
    .line 83
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
    .line 190
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
    .line 195
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@2
    add-int v0, p1, v1

    #@4
    .line 197
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 199
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@a
    add-int/2addr v1, v0

    #@b
    return v1

    #@c
    .line 202
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
    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    #@0
    .prologue
    .line 207
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@2
    add-int v0, p1, v1

    #@4
    .line 208
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@6
    if-nez v1, :cond_1

    #@8
    .line 210
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 212
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 214
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@10
    sub-int/2addr v0, v1

    #@11
    .line 216
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
    .line 93
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    #@2
    .line 94
    const/4 v6, 0x0

    #@3
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    #@5
    .line 98
    instance-of v6, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@7
    if-eqz v6, :cond_3

    #@9
    move-object v4, p2

    #@a
    .line 100
    check-cast v4, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@c
    .line 102
    .local v4, "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    #@f
    move-result-object v6

    #@10
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@12
    .line 103
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    #@15
    move-result-object v6

    #@16
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@18
    .line 105
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    #@1b
    move-result v3

    #@1c
    .line 106
    .local v3, "macSizeBits":I
    const/16 v6, 0x20

    #@1e
    if-lt v3, v6, :cond_0

    #@20
    const/16 v6, 0x80

    #@22
    if-le v3, v6, :cond_1

    #@24
    .line 108
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
    .line 106
    :cond_1
    rem-int/lit8 v6, v3, 0x8

    #@40
    if-nez v6, :cond_0

    #@42
    .line 111
    div-int/lit8 v6, v3, 0x8

    #@44
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@46
    .line 112
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@49
    move-result-object v2

    #@4a
    .line 128
    .end local v3    # "macSizeBits":I
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    .local v2, "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_0
    if-eqz p1, :cond_5

    #@4c
    const/16 v1, 0x10

    #@4e
    .line 129
    .local v1, "bufLength":I
    :goto_1
    new-array v6, v1, [B

    #@50
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@52
    .line 131
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
    .line 133
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5e
    const-string/jumbo v7, "IV must be at least 1 byte"

    #@61
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v6

    #@65
    .line 114
    .end local v1    # "bufLength":I
    .end local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_3
    instance-of v6, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@67
    if-eqz v6, :cond_4

    #@69
    move-object v5, p2

    #@6a
    .line 116
    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@6c
    .line 118
    .local v5, "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@6f
    move-result-object v6

    #@70
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@72
    .line 119
    const/4 v6, 0x0

    #@73
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@75
    .line 120
    const/16 v6, 0x10

    #@77
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@79
    .line 121
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@7c
    move-result-object v2

    #@7d
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@7f
    .restart local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_0

    #@80
    .line 125
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
    .line 128
    .restart local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_5
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    #@8b
    add-int/lit8 v1, v6, 0x10

    #@8d
    .restart local v1    # "bufLength":I
    goto :goto_1

    #@8e
    .line 140
    :cond_6
    if-eqz v2, :cond_9

    #@90
    .line 142
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@92
    const/4 v7, 0x1

    #@93
    invoke-interface {v6, v7, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@96
    .line 144
    const/16 v6, 0x10

    #@98
    new-array v6, v6, [B

    #@9a
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@9c
    .line 145
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
    .line 148
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    #@a9
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@ab
    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    #@ae
    .line 149
    const/4 v6, 0x0

    #@af
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    #@b1
    .line 156
    :cond_7
    const/16 v6, 0x10

    #@b3
    new-array v6, v6, [B

    #@b5
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@b7
    .line 158
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    #@b9
    array-length v6, v6

    #@ba
    const/16 v7, 0xc

    #@bc
    if-ne v6, v7, :cond_a

    #@be
    .line 160
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
    .line 161
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@cc
    const/4 v7, 0x1

    #@cd
    const/16 v8, 0xf

    #@cf
    aput-byte v7, v6, v8

    #@d1
    .line 171
    :goto_2
    const/16 v6, 0x10

    #@d3
    new-array v6, v6, [B

    #@d5
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    #@d7
    .line 172
    const/16 v6, 0x10

    #@d9
    new-array v6, v6, [B

    #@db
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@dd
    .line 173
    const/16 v6, 0x10

    #@df
    new-array v6, v6, [B

    #@e1
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    #@e3
    .line 174
    const/16 v6, 0x10

    #@e5
    new-array v6, v6, [B

    #@e7
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@e9
    .line 175
    const/4 v6, 0x0

    #@ea
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@ec
    .line 176
    const-wide/16 v6, 0x0

    #@ee
    iput-wide v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@f0
    .line 177
    const-wide/16 v6, 0x0

    #@f2
    iput-wide v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    #@f4
    .line 178
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    #@f6
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@f9
    move-result-object v6

    #@fa
    iput-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    #@fc
    .line 179
    const/4 v6, 0x0

    #@fd
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@ff
    .line 180
    const-wide/16 v6, 0x0

    #@101
    iput-wide v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    #@103
    .line 182
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    #@105
    if-eqz v6, :cond_8

    #@107
    .line 184
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
    .line 91
    :cond_8
    return-void

    #@111
    .line 151
    :cond_9
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    #@113
    if-nez v6, :cond_7

    #@115
    .line 153
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@117
    const-string/jumbo v7, "Key must be specified in initial init"

    #@11a
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11d
    throw v6

    #@11e
    .line 165
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
    .line 166
    const/16 v6, 0x10

    #@12a
    new-array v0, v6, [B

    #@12c
    .line 167
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
    .line 168
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
    .line 221
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@4
    aput-byte p1, v0, v1

    #@6
    .line 222
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@c
    const/16 v1, 0x10

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 225
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@12
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@14
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    #@17
    .line 226
    const/4 v0, 0x0

    #@18
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@1a
    .line 227
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@1c
    const-wide/16 v2, 0x10

    #@1e
    add-long/2addr v0, v2

    #@1f
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@21
    .line 219
    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 233
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    #@3
    .line 235
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@5
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@7
    add-int v3, p2, v0

    #@9
    aget-byte v3, p1, v3

    #@b
    aput-byte v3, v1, v2

    #@d
    .line 236
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@13
    const/16 v2, 0x10

    #@15
    if-ne v1, v2, :cond_0

    #@17
    .line 239
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    #@19
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    #@1b
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    #@1e
    .line 240
    const/4 v1, 0x0

    #@1f
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    #@21
    .line 241
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@23
    const-wide/16 v4, 0x10

    #@25
    add-long/2addr v2, v4

    #@26
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    #@28
    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 231
    :cond_1
    return-void
.end method

.method public processByte(B[BI)I
    .locals 2
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
    .line 270
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@4
    aput-byte p1, v0, v1

    #@6
    .line 271
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@c
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@e
    array-length v1, v1

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 273
    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    #@14
    .line 274
    const/16 v0, 0x10

    #@16
    return v0

    #@17
    .line 276
    :cond_0
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 5
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
    .line 282
    array-length v2, p1

    #@1
    add-int v3, p2, p3

    #@3
    if-ge v2, v3, :cond_0

    #@5
    .line 284
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@7
    const-string/jumbo v3, "Input buffer too short"

    #@a
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 286
    :cond_0
    const/4 v1, 0x0

    #@f
    .line 288
    .local v1, "resultLen":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    #@12
    .line 290
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@14
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@16
    add-int v4, p2, v0

    #@18
    aget-byte v4, p1, v4

    #@1a
    aput-byte v4, v2, v3

    #@1c
    .line 291
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@1e
    add-int/lit8 v2, v2, 0x1

    #@20
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    #@22
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    #@24
    array-length v3, v3

    #@25
    if-ne v2, v3, :cond_1

    #@27
    .line 293
    add-int v2, p5, v1

    #@29
    invoke-direct {p0, p4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    #@2c
    .line 294
    add-int/lit8 v1, v1, 0x10

    #@2e
    .line 288
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 298
    :cond_2
    return v1
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 438
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    #@4
    .line 436
    return-void
.end method
