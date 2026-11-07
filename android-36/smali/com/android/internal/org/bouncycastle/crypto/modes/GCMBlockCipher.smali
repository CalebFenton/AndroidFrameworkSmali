.class public Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/GCMModeCipher;


# static fields
.field private static final blacklist BLOCK_SIZE:I = 0x10

.field private static final blacklist MAX_INPUT_SIZE:J = 0xfffffffe0L


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

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist counter:[B

.field private blacklist exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

.field private blacklist forEncryption:Z

.field private blacklist initialAssociatedText:[B

.field private blacklist initialised:Z

.field private blacklist lastKey:[B

.field private blacklist macBlock:[B

.field private blacklist macSize:I

.field private blacklist multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private blacklist nonce:[B

.field private blacklist totalLength:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .registers 5
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "m"    # Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 110
    if-nez p2, :cond_13

    .line 112
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    move-object p2, v0

    .line 115
    :cond_13
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 116
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 117
    return-void

    .line 106
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkStatus()V
    .registers 3

    .line 778
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    if-nez v0, :cond_18

    .line 780
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_10

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher cannot be reused for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher needs to be initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_18
    return-void
.end method

.method private blacklist decryptBlock([BI[BI)V
    .registers 13
    .param p1, "buf"    # [B
    .param p2, "bufOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 673
    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2b

    .line 677
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    .line 679
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 682
    :cond_11
    new-array v2, v1, [B

    .line 683
    .local v2, "ctrBlock":[B
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    .line 685
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[BI)V

    .line 686
    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "buf":[B
    .end local p2    # "bufOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v4, "buf":[B
    .local v5, "bufOff":I
    .local v6, "out":[B
    .local v7, "outOff":I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BI[BI)V

    .line 688
    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 689
    return-void

    .line 675
    .end local v2    # "ctrBlock":[B
    .end local v4    # "buf":[B
    .end local v5    # "bufOff":I
    .end local v6    # "out":[B
    .end local v7    # "outOff":I
    .restart local p1    # "buf":[B
    .restart local p2    # "bufOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_2b
    move-object v4, p1

    move v5, p2

    .end local p1    # "buf":[B
    .end local p2    # "bufOff":I
    .restart local v4    # "buf":[B
    .restart local v5    # "bufOff":I
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist encryptBlock([BI[BI)V
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "bufOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 693
    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2a

    .line 697
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    .line 699
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 702
    :cond_11
    new-array v0, v1, [B

    .line 704
    .local v0, "ctrBlock":[B
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    .line 705
    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    .line 706
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 707
    const/4 v2, 0x0

    invoke-static {v0, v2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 710
    return-void

    .line 695
    .end local v0    # "ctrBlock":[B
    :cond_2a
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist gHASH([B[BI)V
    .registers 7
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "len"    # I

    .line 734
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_1
    if-ge v0, p3, :cond_11

    .line 736
    sub-int v1, p3, v0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 737
    .local v1, "num":I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 734
    .end local v1    # "num":I
    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 739
    .end local v0    # "pos":I
    :cond_11
    return-void
.end method

.method private blacklist gHASHBlock([B[B)V
    .registers 4
    .param p1, "Y"    # [B
    .param p2, "b"    # [B

    .line 743
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 744
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 745
    return-void
.end method

.method private blacklist gHASHBlock([B[BI)V
    .registers 5
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "off"    # I

    .line 749
    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    .line 750
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 751
    return-void
.end method

.method private blacklist gHASHPartial([B[BII)V
    .registers 6
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 755
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    .line 756
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 757
    return-void
.end method

.method private blacklist getNextCTRBlock([B)V
    .registers 6
    .param p1, "block"    # [B

    .line 761
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    if-eqz v0, :cond_52

    .line 765
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 767
    const/4 v0, 0x1

    .line 768
    .local v0, "c":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/16 v2, 0xf

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    .line 769
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    .line 770
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    .line 771
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/16 v2, 0xc

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 773
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 774
    return-void

    .line 763
    .end local v0    # "c":I
    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to process too many blocks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getTotalInputSizeAfterNewInput(I)J
    .registers 6
    .param p1, "newInputLen"    # I

    .line 280
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist initCipher()V
    .registers 10

    .line 359
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x10

    const/4 v4, 0x0

    if-lez v0, :cond_16

    .line 361
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 366
    :cond_16
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_2b

    .line 368
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-direct {p0, v0, v5, v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 369
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 372
    :cond_2b
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_38

    .line 374
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    :cond_38
    return-void
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/GCMModeCipher;
    .registers 2
    .param p0, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 70
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)Lcom/android/internal/org/bouncycastle/crypto/modes/GCMModeCipher;
    .registers 3
    .param p0, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p1, "m"    # Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 81
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-object v0
.end method

.method private blacklist processPartial([BII[BI)V
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .line 714
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 715
    .local v0, "ctrBlock":[B
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    .line 717
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 719
    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    .line 720
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    goto :goto_1d

    .line 724
    :cond_15
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 725
    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    .line 728
    :goto_1d
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 730
    return-void
.end method

.method private blacklist reset(Z)V
    .registers 6
    .param p1, "clearMac"    # Z

    .line 632
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 636
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 637
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 638
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 639
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 641
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 642
    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 643
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 644
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 645
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 646
    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 648
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v1, :cond_38

    .line 650
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 653
    :cond_38
    if-eqz p1, :cond_3d

    .line 655
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 658
    :cond_3d
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_44

    .line 660
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    goto :goto_50

    .line 664
    :cond_44
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v1, :cond_50

    .line 666
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    .line 669
    :cond_50
    :goto_50
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 14
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 509
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 511
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 514
    :cond_e
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 516
    .local v0, "extra":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const-string v4, "Output buffer too short"

    if-eqz v1, :cond_25

    .line 518
    array-length v1, p1

    sub-int/2addr v1, p2

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v0

    if-lt v1, v5, :cond_1f

    move v8, v0

    goto :goto_31

    .line 520
    :cond_1f
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_25
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-lt v0, v1, :cond_105

    .line 529
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    .line 531
    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_fe

    move v8, v0

    .line 537
    .end local v0    # "extra":I
    .local v8, "extra":I
    :goto_31
    if-lez v8, :cond_3d

    .line 539
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v7, 0x0

    move-object v5, p0

    move-object v9, p1

    move v10, p2

    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    .local v9, "out":[B
    .local v10, "outOff":I
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processPartial([BII[BI)V

    goto :goto_40

    .line 537
    .end local v9    # "out":[B
    .end local v10    # "outOff":I
    .restart local p1    # "out":[B
    .restart local p2    # "outOff":I
    :cond_3d
    move-object v5, p0

    move-object v9, p1

    move v10, p2

    .line 542
    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    .restart local v9    # "out":[B
    .restart local v10    # "outOff":I
    :goto_40
    iget-wide p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget v0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 544
    iget-wide p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget-wide v0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long p1, p1, v0

    const-wide/16 v0, 0x8

    const/16 p2, 0x10

    const/4 v4, 0x0

    if-lez p1, :cond_9c

    .line 554
    iget p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez p1, :cond_62

    .line 556
    iget-object p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v7, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-direct {p0, p1, v6, v4, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 560
    :cond_62
    iget-wide v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long p1, v6, v2

    if-lez p1, :cond_6f

    .line 562
    iget-object p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 566
    :cond_6f
    iget-wide v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v2, v0

    const-wide/16 v6, 0x7f

    add-long/2addr v2, v6

    const/4 p1, 0x7

    ushr-long/2addr v2, p1

    .line 569
    .local v2, "c":J
    new-array p1, p2, [B

    .line 570
    .local p1, "H_c":[B
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez v6, :cond_8b

    .line 572
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;-><init>()V

    iput-object v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    .line 573
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    iget-object v7, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    .line 575
    :cond_8b
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {v6, v2, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    .line 578
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v6, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    .line 581
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object v7, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 585
    .end local v2    # "c":J
    .end local p1    # "H_c":[B
    :cond_9c
    new-array p1, p2, [B

    .line 586
    .local p1, "X":[B
    iget-wide v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    mul-long/2addr v2, v0

    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 587
    iget-wide v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v2, v0

    const/16 v0, 0x8

    invoke-static {v2, v3, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 589
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 592
    new-array p2, p2, [B

    .line 593
    .local p2, "tag":[B
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v0, v1, v4, p2, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 594
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 596
    move v0, v8

    .line 599
    .local v0, "resultLen":I
    iget v1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v1, v1, [B

    iput-object v1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 600
    iget-object v1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {p2, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    iget-boolean v1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_df

    .line 605
    iget-object v1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v2, v10

    iget v3, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v1, v4, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 606
    iget v1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    goto :goto_f2

    .line 611
    :cond_df
    iget v1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v1, v1, [B

    .line 612
    .local v1, "msgMac":[B
    iget-object v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v2, v8, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    iget-object v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v2, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 619
    .end local v1    # "msgMac":[B
    :goto_f2
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 621
    return v0

    .line 615
    .restart local v1    # "msgMac":[B
    :cond_f6
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "mac check in GCM failed"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    .end local v1    # "msgMac":[B
    .end local v8    # "extra":I
    .end local v9    # "out":[B
    .end local v10    # "outOff":I
    .local v0, "extra":I
    .local p1, "out":[B
    .local p2, "outOff":I
    :cond_fe
    move-object v9, p1

    .end local p1    # "out":[B
    .restart local v9    # "out":[B
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p1, v4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 527
    .end local v9    # "out":[B
    .restart local p1    # "out":[B
    :cond_105
    move-object v9, p1

    move v10, p2

    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    .restart local v9    # "out":[B
    .restart local v10    # "outOff":I
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMac()[B
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    if-nez v0, :cond_9

    .line 259
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    return-object v0

    .line 261
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 4
    .param p1, "len"    # I

    .line 266
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 268
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 270
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    .line 273
    :cond_b
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int v1, v0, v1

    :goto_15
    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 4
    .param p1, "len"    # I

    .line 286
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 287
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v1, :cond_10

    .line 289
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_d

    .line 291
    const/4 v1, 0x0

    return v1

    .line 293
    :cond_d
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    .line 295
    :cond_10
    rem-int/lit8 v1, v0, 0x10

    sub-int v1, v0, v1

    return v1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 14
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 136
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, "newNonce":[B
    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    const/16 v4, 0x10

    if-eqz v3, :cond_4e

    .line 145
    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 147
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    .line 148
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 150
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v5

    .line 151
    .local v5, "macSizeBits":I
    const/16 v6, 0x20

    if-lt v5, v6, :cond_35

    const/16 v6, 0x80

    if-gt v5, v6, :cond_35

    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_35

    .line 156
    div-int/lit8 v6, v5, 0x8

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 157
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v3

    .line 158
    .end local v5    # "macSizeBits":I
    .local v3, "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_65

    .line 153
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    .restart local v5    # "macSizeBits":I
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for MAC size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    .end local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    .end local v5    # "macSizeBits":I
    :cond_4e
    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_14e

    .line 161
    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 163
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 164
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 165
    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 166
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 167
    .local v3, "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    nop

    .line 173
    :goto_65
    if-eqz p1, :cond_69

    move v5, v4

    goto :goto_6c

    :cond_69
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v4

    .line 174
    .local v5, "bufLength":I
    :goto_6c
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    .line 176
    if-eqz v2, :cond_146

    array-length v6, v2

    if-lt v6, v1, :cond_146

    .line 181
    if-eqz p1, :cond_a4

    .line 183
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v6, :cond_a4

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    invoke-static {v6, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 185
    const-string v6, "cannot reuse nonce for GCM encryption"

    if-eqz v3, :cond_9e

    .line 189
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    if-eqz v7, :cond_a4

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-nez v7, :cond_98

    goto :goto_a4

    .line 191
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_a4
    :goto_a4
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 197
    if-eqz v3, :cond_ae

    .line 199
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    .line 206
    :cond_ae
    const/4 v6, 0x0

    if-eqz v3, :cond_cd

    .line 208
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 210
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    .line 211
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v7, v8, v6, v9, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 214
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 215
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    goto :goto_d1

    .line 217
    :cond_cd
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    if-eqz v0, :cond_13e

    .line 222
    :goto_d1
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 224
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v0, v0

    const/16 v7, 0xc

    if-ne v0, v7, :cond_ed

    .line 226
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v8, v8

    invoke-static {v0, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v7, 0xf

    aput-byte v1, v0, v7

    goto :goto_10a

    .line 231
    :cond_ed
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v7, v7

    invoke-direct {p0, v0, v1, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    .line 232
    new-array v0, v4, [B

    .line 233
    .local v0, "X":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v1, v1

    int-to-long v7, v1

    const-wide/16 v9, 0x8

    mul-long/2addr v7, v9

    const/16 v1, 0x8

    invoke-static {v7, v8, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 237
    .end local v0    # "X":[B
    :goto_10a
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 238
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 239
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 240
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 241
    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 243
    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 244
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 245
    const/4 v4, -0x2

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 246
    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 247
    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 249
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_13d

    .line 251
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    .line 253
    :cond_13d
    return-void

    .line 219
    :cond_13e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be specified in initial init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV must be at least 1 byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    .end local v3    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .end local v5    # "bufLength":I
    :cond_14e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to GCM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processAADByte(B)V
    .registers 7
    .param p1, "in"    # B

    .line 300
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 302
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_32

    .line 307
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    aput-byte p1, v1, v2

    .line 308
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v0, 0x10

    if-ne v1, v0, :cond_31

    .line 311
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 313
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 315
    :cond_31
    return-void

    .line 303
    :cond_32
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processAADBytes([BII)V
    .registers 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 319
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 321
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5f

    .line 326
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v1, 0x10

    if-lez v0, :cond_3e

    .line 328
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    rsub-int/lit8 v0, v0, 0x10

    .line 329
    .local v0, "available":I
    if-ge p3, v0, :cond_29

    .line 331
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 333
    return-void

    .line 336
    :cond_29
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 338
    iget-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 339
    add-int/2addr p2, v0

    .line 340
    sub-int/2addr p3, v0

    .line 344
    .end local v0    # "available":I
    :cond_3e
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x10

    .line 346
    .local v0, "inLimit":I
    :goto_42
    if-gt p2, v0, :cond_51

    .line 348
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[BI)V

    .line 349
    iget-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 350
    add-int/lit8 p2, p2, 0x10

    goto :goto_42

    .line 353
    :cond_51
    add-int/lit8 v1, v0, 0x10

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 354
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    return-void

    .line 322
    .end local v0    # "inLimit":I
    :cond_5f
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processByte(B[BI)I
    .registers 9
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 383
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_44

    .line 388
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 389
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v0, v0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_43

    .line 391
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_30

    .line 393
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v0, v2, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->encryptBlock([BI[BI)V

    .line 394
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_42

    .line 398
    :cond_30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v0, v2, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 402
    :goto_42
    return v1

    .line 404
    :cond_43
    return v2

    .line 384
    :cond_44
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 13
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

    .line 410
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 412
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d9

    .line 417
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_d1

    .line 422
    const/4 v0, 0x0

    .line 424
    .local v0, "resultLen":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz v1, :cond_5f

    .line 426
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    if-lez v1, :cond_43

    .line 428
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    rsub-int/lit8 v1, v1, 0x10

    .line 429
    .local v1, "available":I
    if-ge p3, v1, :cond_33

    .line 431
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 433
    return v2

    .line 436
    :cond_33
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v4, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->encryptBlock([BI[BI)V

    .line 438
    add-int/2addr p2, v1

    .line 439
    sub-int/2addr p3, v1

    .line 440
    const/16 v0, 0x10

    .line 444
    .end local v1    # "available":I
    :cond_43
    add-int v1, p2, p3

    sub-int/2addr v1, v3

    .line 446
    .local v1, "inLimit":I
    :goto_46
    if-gt p2, v1, :cond_52

    .line 448
    add-int v3, p5, v0

    invoke-direct {p0, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->encryptBlock([BI[BI)V

    .line 449
    add-int/lit8 p2, p2, 0x10

    .line 450
    add-int/lit8 v0, v0, 0x10

    goto :goto_46

    .line 453
    :cond_52
    add-int/lit8 v3, v1, 0x10

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 454
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    .end local v1    # "inLimit":I
    goto :goto_d0

    .line 458
    :cond_5f
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v1, v1

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    sub-int/2addr v1, v4

    .line 459
    .local v1, "available":I
    if-ge p3, v1, :cond_74

    .line 461
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 463
    return v2

    .line 466
    :cond_74
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    if-lt v4, v3, :cond_9c

    .line 468
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v4, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    .line 469
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {v4, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    const/16 v0, 0x10

    .line 472
    add-int/lit8 v1, v1, 0x10

    .line 473
    if-ge p3, v1, :cond_9c

    .line 475
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 477
    return v0

    .line 481
    :cond_9c
    add-int v4, p2, p3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    .line 483
    .local v4, "inLimit":I
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    rsub-int/lit8 v1, v5, 0x10

    .line 484
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    add-int v6, p5, v0

    invoke-direct {p0, v5, v2, p4, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    .line 486
    add-int/2addr p2, v1

    .line 487
    add-int/2addr v0, v3

    .line 490
    :goto_b6
    if-gt p2, v4, :cond_c2

    .line 492
    add-int v3, p5, v0

    invoke-direct {p0, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    .line 493
    add-int/lit8 p2, p2, 0x10

    .line 494
    add-int/lit8 v0, v0, 0x10

    goto :goto_b6

    .line 497
    :cond_c2
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v3

    add-int/2addr v3, v4

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 498
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    .end local v1    # "available":I
    .end local v4    # "inLimit":I
    :goto_d0
    return v0

    .line 419
    .end local v0    # "resultLen":I
    :cond_d1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_d9
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 626
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 627
    return-void
.end method
