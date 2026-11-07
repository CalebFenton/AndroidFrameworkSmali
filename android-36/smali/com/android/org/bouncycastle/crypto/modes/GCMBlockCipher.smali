.class public Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/GCMModeCipher;


# instance fields
.field private blacklist H:[B

.field private blacklist J0:[B

.field private blacklist S:[B

.field private blacklist S_at:[B

.field private blacklist S_atPre:[B

.field private blacklist atBlock:[B

.field private blacklist atBlockPos:I

.field private blacklist atLength:J

.field private blacklist atLengthPre:J

.field private blacklist blocksRemaining:I

.field private blacklist bufBlock:[B

.field private blacklist bufOff:I

.field private blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist counter:[B

.field private blacklist exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

.field private blacklist forEncryption:Z

.field private blacklist initialAssociatedText:[B

.field private blacklist initialised:Z

.field private blacklist lastKey:[B

.field private blacklist macBlock:[B

.field private blacklist macSize:I

.field private blacklist multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private blacklist nonce:[B

.field private blacklist totalLength:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .registers 5

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    if-nez p2, :cond_12

    .line 112
    new-instance p2, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    .line 115
    :cond_12
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 116
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    return-void

    .line 106
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cipher required with a block size of 16."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkStatus()V
    .registers 2

    .line 778
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    if-nez v0, :cond_18

    .line 780
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz p0, :cond_10

    .line 782
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GCM cipher cannot be reused for encryption"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 784
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GCM cipher needs to be initialised"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    return-void
.end method

.method private blacklist decryptBlock([BI[BI)V
    .registers 13

    .line 673
    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2b

    .line 677
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    .line 679
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 682
    :cond_11
    new-array v2, v1, [B

    .line 683
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    .line 685
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[BI)V

    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .line 686
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BI[BI)V

    .line 688
    iget-wide p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void

    .line 675
    :cond_2b
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist encryptBlock([BI[BI)V
    .registers 11

    .line 693
    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2a

    .line 697
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    .line 699
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 702
    :cond_11
    new-array v0, v1, [B

    .line 704
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    .line 705
    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    .line 706
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    const/4 p1, 0x0

    .line 707
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    iget-wide p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void

    .line 695
    :cond_2a
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist gHASH([B[BI)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_11

    sub-int v1, p3, v0

    const/16 v2, 0x10

    .line 736
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 737
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_11
    return-void
.end method

.method private blacklist gHASHBlock([B[B)V
    .registers 3

    .line 743
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 744
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private blacklist gHASHBlock([B[BI)V
    .registers 4

    .line 749
    invoke-static {p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    .line 750
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private blacklist gHASHPartial([B[BII)V
    .registers 5

    .line 755
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    .line 756
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private blacklist getNextCTRBlock([B)V
    .registers 6

    .line 761
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    if-eqz v0, :cond_40

    add-int/lit8 v0, v0, -0x1

    .line 765
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 768
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/16 v1, 0xf

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    ushr-int/lit8 v1, v2, 0x8

    const/16 v2, 0xe

    .line 769
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xd

    .line 770
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xc

    .line 771
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 773
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1, v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void

    .line 763
    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to process too many blocks"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getTotalInputSizeAfterNewInput(I)J
    .registers 6

    .line 280
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private blacklist initCipher()V
    .registers 10

    .line 359
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x10

    const/4 v4, 0x0

    if-lez v0, :cond_16

    .line 361
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    iget-wide v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 366
    :cond_16
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_29

    .line 368
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v5, v6, v4, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 369
    iget-wide v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 372
    :cond_29
    iget-wide v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_36

    .line 374
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v4, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    return-void
.end method

.method public static blacklist newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/GCMModeCipher;
    .registers 2

    .line 70
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method private blacklist processPartial([BII[BI)V
    .registers 9

    const/16 v0, 0x10

    .line 714
    new-array v0, v0, [B

    .line 715
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    .line 717
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 719
    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    .line 720
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    goto :goto_1d

    .line 724
    :cond_15
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 725
    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    .line 728
    :goto_1d
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    iget-wide p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void
.end method

.method private blacklist reset(Z)V
    .registers 6

    .line 632
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    const/16 v0, 0x10

    .line 636
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 637
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 638
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 639
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v1, 0x0

    .line 641
    iput-wide v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 642
    iput-wide v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 643
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/4 v3, -0x2

    .line 644
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 645
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 646
    iput-wide v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 648
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v1, :cond_36

    .line 650
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    :cond_36
    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    .line 655
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 658
    :cond_3b
    iget-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz p1, :cond_42

    .line 660
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    return-void

    .line 664
    :cond_42
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz p1, :cond_4a

    .line 666
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_4a
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 14

    .line 507
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 509
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 511
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 514
    :cond_e
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 516
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const-string v4, "Output buffer too short"

    if-eqz v1, :cond_25

    .line 518
    array-length v1, p1

    sub-int/2addr v1, p2

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v0

    if-lt v1, v5, :cond_1f

    :goto_1d
    move v8, v0

    goto :goto_2f

    .line 520
    :cond_1f
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 525
    :cond_25
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-lt v0, v1, :cond_f4

    sub-int/2addr v0, v1

    .line 531
    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_ee

    goto :goto_1d

    :goto_2f
    if-lez v8, :cond_3b

    .line 539
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v7, 0x0

    move-object v5, p0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->processPartial([BII[BI)V

    goto :goto_3e

    :cond_3b
    move-object v5, p0

    move-object v9, p1

    move v10, p2

    .line 542
    :goto_3e
    iget-wide p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v0, p2

    add-long/2addr p0, v0

    iput-wide p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 544
    iget-wide v0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long p0, p0, v0

    const/16 p1, 0x10

    const-wide/16 v0, 0x8

    const/4 v4, 0x0

    if-lez p0, :cond_92

    if-lez p2, :cond_5a

    .line 556
    iget-object p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v6, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {v5, p0, v6, v4, p2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 560
    :cond_5a
    iget-wide v6, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long p0, v6, v2

    if-lez p0, :cond_67

    .line 562
    iget-object p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 566
    :cond_67
    iget-wide v2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v2, v0

    const-wide/16 v6, 0x7f

    add-long/2addr v2, v6

    const/4 p0, 0x7

    ushr-long/2addr v2, p0

    .line 569
    new-array p0, p1, [B

    .line 570
    iget-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez p2, :cond_81

    .line 572
    new-instance p2, Lcom/android/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;

    invoke-direct {p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;-><init>()V

    iput-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    .line 573
    iget-object v6, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {p2, v6}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    .line 575
    :cond_81
    iget-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {p2, v2, v3, p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    .line 578
    iget-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {p2, p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    .line 581
    iget-object p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 585
    :cond_92
    new-array p0, p1, [B

    .line 586
    iget-wide v2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    mul-long/2addr v2, v0

    invoke-static {v2, v3, p0, v4}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 587
    iget-wide v2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v2, v0

    const/16 p2, 0x8

    invoke-static {v2, v3, p0, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 589
    iget-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {v5, p2, p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 592
    new-array p0, p1, [B

    .line 593
    iget-object p1, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {p1, p2, v4, p0, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 594
    iget-object p1, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 599
    iget p1, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array p2, p1, [B

    iput-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 600
    invoke-static {p0, v4, p2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    iget-boolean p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz p0, :cond_d1

    .line 605
    iget-object p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget p1, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int p2, v10, p1

    iget p1, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {p0, v4, v9, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 606
    iget p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v8, p0

    goto :goto_e2

    .line 611
    :cond_d1
    iget p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array p1, p0, [B

    .line 612
    iget-object p2, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p2, v8, p1, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    iget-object p0, v5, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_e6

    .line 619
    :goto_e2
    invoke-direct {v5, v4}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return v8

    .line 615
    :cond_e6
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "mac check in GCM failed"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 533
    :cond_ee
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 527
    :cond_f4
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/GCM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMac()[B
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    if-nez v0, :cond_9

    .line 259
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array p0, p0, [B

    return-object p0

    .line 261
    :cond_9
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOutputSize(I)I
    .registers 3

    .line 266
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 268
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_b

    .line 270
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr p1, p0

    return p1

    .line 273
    :cond_b
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge p1, p0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    sub-int/2addr p1, p0

    return p1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object p0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3

    .line 286
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 287
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v0, :cond_e

    .line 289
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge p1, p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    sub-int/2addr p1, p0

    .line 295
    :cond_e
    rem-int/lit8 p0, p1, 0x10

    sub-int/2addr p1, p0

    return p1
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 10

    .line 136
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    .line 143
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    const/16 v3, 0x8

    const/16 v4, 0x10

    if-eqz v2, :cond_4b

    .line 145
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    .line 147
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    .line 148
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 150
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_34

    const/16 v6, 0x80

    if-gt v5, v6, :cond_34

    .line 151
    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_34

    .line 156
    div-int/2addr v5, v3

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 157
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object p2

    goto :goto_5f

    .line 153
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid value for MAC size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :cond_4b
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_12e

    .line 161
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 163
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 164
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 165
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 166
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    :goto_5f
    if-eqz p1, :cond_63

    move v5, v4

    goto :goto_66

    .line 173
    :cond_63
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v4

    .line 174
    :goto_66
    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v2, :cond_126

    .line 176
    array-length v5, v2

    if-lt v5, v1, :cond_126

    if-eqz p1, :cond_9a

    .line 183
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz p1, :cond_9a

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 185
    const-string p1, "cannot reuse nonce for GCM encryption"

    if-eqz p2, :cond_94

    .line 189
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    if-eqz v5, :cond_9a

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_8e

    goto :goto_9a

    .line 191
    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_94
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_9a
    :goto_9a
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz p2, :cond_a4

    .line 199
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    :cond_a4
    const/4 p1, 0x0

    if-eqz p2, :cond_bf

    .line 208
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, v1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 210
    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    .line 211
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, p2, p1, p2, p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 214
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {p2, v2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 215
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    goto :goto_c3

    .line 217
    :cond_bf
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    if-eqz p2, :cond_11e

    .line 222
    :goto_c3
    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 224
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v2, v0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_d9

    .line 226
    array-length v2, v0

    invoke-static {v0, p1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v0, 0xf

    aput-byte v1, p2, v0

    goto :goto_ee

    .line 231
    :cond_d9
    array-length v1, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    .line 232
    new-array p2, v4, [B

    .line 233
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v5, 0x8

    mul-long/2addr v0, v5

    invoke-static {v0, v1, p2, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 234
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 237
    :goto_ee
    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 238
    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 239
    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 240
    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 241
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v0, 0x0

    .line 242
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 243
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 244
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/4 p2, -0x2

    .line 245
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 246
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 247
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 249
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz p2, :cond_11d

    .line 251
    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_11d
    return-void

    .line 219
    :cond_11e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key must be specified in initial init"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_126
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV must be at least 1 byte"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_12e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to GCM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processAADBytes([BII)V
    .registers 10

    .line 319
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 321
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_54

    .line 326
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v1, 0x10

    if-lez v0, :cond_38

    rsub-int/lit8 v3, v0, 0x10

    if-ge p3, v3, :cond_25

    .line 331
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    return-void

    .line 336
    :cond_25
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-static {p1, p2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v0, v4}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 338
    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    :cond_38
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x10

    :goto_3b
    if-gt p2, v0, :cond_4a

    .line 348
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, v3, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[BI)V

    .line 349
    iget-wide v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-int/lit8 p2, p2, 0x10

    goto :goto_3b

    :cond_4a
    sub-int/2addr p3, p2

    .line 353
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 354
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 322
    :cond_54
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 12

    .line 410
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 412
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_bb

    .line 417
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_b3

    .line 424
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz v0, :cond_54

    .line 426
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    if-lez v0, :cond_3b

    rsub-int/lit8 v3, v0, 0x10

    if-ge p3, v3, :cond_2e

    .line 431
    iget-object p4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    return v1

    .line 436
    :cond_2e
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p1, p2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->encryptBlock([BI[BI)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_3c

    :cond_3b
    move v2, v1

    :goto_3c
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x10

    :goto_3f
    if-gt p2, v0, :cond_4b

    add-int v3, p5, v2

    .line 448
    invoke-direct {p0, p1, p2, p4, v3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->encryptBlock([BI[BI)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v2, v2, 0x10

    goto :goto_3f

    :cond_4b
    sub-int/2addr p3, p2

    .line 453
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 454
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p1, p2, p0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2

    .line 458
    :cond_54
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v0

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    if-ge p3, v3, :cond_65

    .line 461
    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    return v1

    :cond_65
    if-lt v4, v2, :cond_86

    .line 468
    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    .line 469
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {v0, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    if-ge p3, v3, :cond_84

    .line 475
    iget-object p4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget p5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    return v2

    :cond_84
    move v0, v2

    goto :goto_87

    :cond_86
    move v0, v1

    :goto_87
    add-int/2addr p3, p2

    .line 481
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v4, v3

    sub-int/2addr p3, v4

    .line 483
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    rsub-int/lit8 v5, v4, 0x10

    .line 484
    invoke-static {p1, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    add-int v4, p5, v0

    invoke-direct {p0, v3, v1, p4, v4}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    add-int/2addr p2, v5

    add-int/2addr v0, v2

    :goto_9c
    if-gt p2, p3, :cond_a8

    add-int v2, p5, v0

    .line 492
    invoke-direct {p0, p1, p2, p4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v0, v0, 0x10

    goto :goto_9c

    .line 497
    :cond_a8
    iget-object p4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length p5, p4

    add-int/2addr p5, p3

    sub-int/2addr p5, p2

    iput p5, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 498
    invoke-static {p1, p2, p4, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    .line 419
    :cond_b3
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 413
    :cond_bb
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
