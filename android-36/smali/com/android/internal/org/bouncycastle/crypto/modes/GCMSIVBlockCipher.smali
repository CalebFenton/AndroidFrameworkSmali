.class public Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;
.super Ljava/lang/Object;
.source "GCMSIVBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;,
        Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;
    }
.end annotation


# static fields
.field private static final blacklist ADD:B = -0x1ft

.field private static final blacklist AEAD_COMPLETE:I = 0x2

.field private static final blacklist BUFLEN:I = 0x10

.field private static final blacklist HALFBUFLEN:I = 0x8

.field private static final blacklist INIT:I = 0x1

.field private static final blacklist MASK:B = -0x80t

.field private static final blacklist MAX_DATALEN:I = 0x7fffffe7

.field private static final blacklist NONCELEN:I = 0xc


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist macBlock:[B

.field private final blacklist theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private final blacklist theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private final blacklist theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private blacklist theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private blacklist theFlags:I

.field private final blacklist theGHash:[B

.field private blacklist theInitialAEAD:[B

.field private final blacklist theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private blacklist theNonce:[B

.field private blacklist thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private final blacklist theReverse:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgHASH(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfillReverse([BII[B)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 147
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 148
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "pCipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 156
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 157
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .registers 5
    .param p1, "pCipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "pMultiplier"    # Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    .line 97
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    .line 140
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    .line 168
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ne v1, v0, :cond_2b

    .line 174
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 175
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 178
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    .line 179
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    .line 180
    return-void

    .line 170
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist bufLength([B)I
    .registers 2
    .param p0, "pBuffer"    # [B

    .line 480
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p0

    :goto_5
    return v0
.end method

.method private blacklist calculateTag()[B
    .registers 6

    .line 612
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    .line 613
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->completePolyVal()[B

    move-result-object v0

    .line 616
    .local v0, "myPolyVal":[B
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 619
    .local v1, "myResult":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    const/16 v3, 0xc

    if-ge v2, v3, :cond_1f

    .line 621
    aget-byte v3, v0, v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 625
    .end local v2    # "i":I
    :cond_1f
    const/16 v2, 0xf

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, -0x81

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 628
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 629
    return-object v1
.end method

.method private blacklist checkAEADStatus(I)V
    .registers 8
    .param p1, "pLen"    # I

    .line 250
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    .line 256
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_28

    .line 262
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    const v4, 0x7fffffe7

    sub-int/2addr v4, p1

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_20

    .line 267
    return-void

    .line 265
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AEAD byte count exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AEAD data cannot be processed after ordinary data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher is not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkBuffer([BIIZ)V
    .registers 9
    .param p0, "pBuffer"    # [B
    .param p1, "pOffset"    # I
    .param p2, "pLen"    # I
    .param p3, "pOutput"    # Z

    .line 496
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->bufLength([B)I

    move-result v0

    .line 497
    .local v0, "myBufLen":I
    add-int v1, p1, p2

    .line 500
    .local v1, "myLast":I
    if-ltz p2, :cond_f

    if-ltz p1, :cond_f

    if-gez v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v2, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v2, 0x1

    .line 501
    .local v2, "badLen":Z
    :goto_10
    if-nez v2, :cond_16

    if-le v1, v0, :cond_15

    goto :goto_16

    .line 507
    :cond_15
    return-void

    .line 503
    :cond_16
    :goto_16
    if-eqz p3, :cond_20

    .line 504
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v4, "Output buffer too short."

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_27

    .line 505
    :cond_20
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v4, "Input buffer too short."

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    :goto_27
    throw v3
.end method

.method private blacklist checkStatus(I)V
    .registers 12
    .param p1, "pLen"    # I

    .line 276
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_44

    .line 282
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    .line 284
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    .line 285
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    .line 289
    :cond_17
    const-wide/32 v0, 0x7fffffe7

    .line 290
    .local v0, "dataLimit":J
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v2

    int-to-long v2, v2

    .line 291
    .local v2, "currBytes":J
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-nez v4, :cond_2f

    .line 293
    const-wide/16 v4, 0x10

    add-long/2addr v0, v4

    .line 294
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v4

    int-to-long v2, v4

    .line 296
    :cond_2f
    const-wide/high16 v4, -0x8000000000000000L

    add-long v6, v2, v4

    int-to-long v8, p1

    sub-long v8, v0, v8

    add-long/2addr v8, v4

    cmp-long v4, v6, v8

    if-gtz v4, :cond_3c

    .line 301
    return-void

    .line 299
    :cond_3c
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "byte count exceeded"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 278
    .end local v0    # "dataLimit":J
    .end local v2    # "currBytes":J
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher is not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist completePolyVal()[B
    .registers 5

    .line 639
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 640
    .local v1, "myResult":[B
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHashLengths()V

    .line 641
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    .line 642
    return-object v1
.end method

.method private blacklist decryptPlain()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v0

    .line 559
    .local v0, "mySrc":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v1

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    .line 562
    .local v1, "myRemaining":I
    if-ltz v1, :cond_64

    .line 568
    add-int/lit8 v3, v1, 0x10

    invoke-static {v0, v1, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 569
    .local v3, "myExpected":[B
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    .line 570
    .local v4, "myCounter":[B
    const/16 v5, 0xf

    aget-byte v6, v4, v5

    or-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 571
    new-array v5, v2, [B

    .line 572
    .local v5, "myMask":[B
    const/4 v6, 0x0

    .line 575
    .local v6, "myOff":I
    :goto_27
    const/4 v7, 0x0

    if-lez v1, :cond_46

    .line 578
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v8, v4, v7, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 581
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 582
    .local v8, "myLen":I
    invoke-static {v5, v0, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    .line 585
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v9, v5, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    .line 586
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v9, v5, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 589
    sub-int/2addr v1, v8

    .line 590
    add-int/2addr v6, v8

    .line 591
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    .line 592
    .end local v8    # "myLen":I
    goto :goto_27

    .line 595
    :cond_46
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v2

    .line 596
    .local v2, "myTag":[B
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 602
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length v9, v9

    invoke-static {v2, v7, v8, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    return-void

    .line 598
    :cond_59
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->reset()V

    .line 599
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v8, "mac check failed"

    invoke-direct {v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 564
    .end local v2    # "myTag":[B
    .end local v3    # "myExpected":[B
    .end local v4    # "myCounter":[B
    .end local v5    # "myMask":[B
    .end local v6    # "myOff":I
    :cond_64
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "Data too short"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist deriveKeys(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;)V
    .registers 13
    .param p1, "pKey"    # Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 768
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 769
    .local v1, "myIn":[B
    new-array v2, v0, [B

    .line 770
    .local v2, "myOut":[B
    new-array v3, v0, [B

    .line 771
    .local v3, "myResult":[B
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v4

    new-array v4, v4, [B

    .line 774
    .local v4, "myEncKey":[B
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    const/4 v6, 0x4

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v6, 0x1

    invoke-interface {v5, v6, p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 778
    const/4 v5, 0x0

    .line 779
    .local v5, "myOff":I
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v1, v8, v2, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 780
    const/16 v7, 0x8

    invoke-static {v2, v8, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 782
    add-int/2addr v5, v7

    .line 783
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 784
    invoke-static {v2, v8, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 788
    const/4 v5, 0x0

    .line 789
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 790
    invoke-static {v2, v8, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 792
    add-int/2addr v5, v7

    .line 793
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 794
    invoke-static {v2, v8, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    array-length v9, v4

    const/16 v10, 0x20

    if-ne v9, v10, :cond_79

    .line 800
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 801
    add-int/lit8 v5, v5, 0x8

    .line 802
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 803
    invoke-static {v2, v8, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 805
    add-int/2addr v5, v7

    .line 806
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 807
    invoke-static {v2, v8, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    :cond_79
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v9, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v7, v6, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 814
    invoke-static {v3, v8, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    .line 815
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->mulX([B)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 817
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    .line 818
    return-void
.end method

.method private blacklist encryptPlain([B[BI)I
    .registers 13
    .param p1, "pCounter"    # [B
    .param p2, "pTarget"    # [B
    .param p3, "pOffset"    # I

    .line 521
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v0

    .line 522
    .local v0, "mySrc":[B
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    .line 523
    .local v1, "myCounter":[B
    const/16 v2, 0xf

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 524
    const/16 v2, 0x10

    new-array v3, v2, [B

    .line 525
    .local v3, "myMask":[B
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v4

    .line 526
    .local v4, "myRemaining":I
    const/4 v5, 0x0

    .line 529
    .local v5, "myOff":I
    :goto_1e
    if-lez v4, :cond_38

    .line 532
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7, v3, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 535
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 536
    .local v6, "myLen":I
    invoke-static {v3, v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    .line 539
    add-int v8, p3, v5

    invoke-static {v3, v7, p2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    sub-int/2addr v4, v6

    .line 543
    add-int/2addr v5, v6

    .line 544
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    .line 545
    .end local v6    # "myLen":I
    goto :goto_1e

    .line 548
    :cond_38
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v2

    return v2
.end method

.method private static blacklist fillReverse([BII[B)V
    .registers 7
    .param p0, "pInput"    # [B
    .param p1, "pOffset"    # I
    .param p2, "pLength"    # I
    .param p3, "pOutput"    # [B

    .line 682
    const/4 v0, 0x0

    .local v0, "i":I
    const/16 v1, 0xf

    .local v1, "j":I
    :goto_3
    if-ge v0, p2, :cond_10

    .line 685
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p3, v1

    .line 682
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 687
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_10
    return-void
.end method

.method private blacklist gHASH([B)V
    .registers 4
    .param p1, "pNext"    # [B

    .line 665
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[B)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 667
    return-void
.end method

.method private blacklist gHashLengths()V
    .registers 7

    .line 651
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 652
    .local v0, "myIn":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const/4 v5, 0x0

    invoke-static {v1, v2, v0, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 653
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v1

    mul-long/2addr v1, v3

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 656
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    .line 657
    return-void
.end method

.method private static blacklist incrementCounter([B)V
    .registers 3
    .param p0, "pCounter"    # [B

    .line 730
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    .line 732
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_e

    .line 734
    goto :goto_11

    .line 730
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 737
    .end local v0    # "i":I
    :cond_11
    :goto_11
    return-void
.end method

.method private static blacklist mulX([B)V
    .registers 6
    .param p0, "pValue"    # [B

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "myMask":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1c

    .line 749
    aget-byte v2, p0, v1

    .line 750
    .local v2, "myValue":B
    shr-int/lit8 v4, v2, 0x1

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 751
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_16

    goto :goto_18

    :cond_16
    const/16 v3, -0x80

    :goto_18
    move v0, v3

    .line 747
    .end local v2    # "myValue":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 755
    .end local v1    # "i":I
    :cond_1c
    if-eqz v0, :cond_25

    .line 757
    aget-byte v1, p0, v3

    xor-int/lit8 v1, v1, -0x1f

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    .line 759
    :cond_25
    return-void
.end method

.method private blacklist resetStreams()V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    if-eqz v0, :cond_9

    .line 453
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->clearBuffer()V

    .line 457
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    .line 458
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    .line 461
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    .line 462
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    goto :goto_25

    :cond_20
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    :goto_25
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    .line 465
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    .line 466
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    if-eqz v0, :cond_41

    .line 469
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 471
    :cond_41
    return-void
.end method

.method private static blacklist xorBlock([B[B)V
    .registers 5
    .param p0, "pLeft"    # [B
    .param p1, "pRight"    # [B

    .line 698
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_10

    .line 700
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 702
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method private static blacklist xorBlock([B[BII)V
    .registers 7
    .param p0, "pLeft"    # [B
    .param p1, "pRight"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I

    .line 717
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_10

    .line 719
    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 721
    .end local v0    # "i":I
    :cond_10
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 8
    .param p1, "pOutput"    # [B
    .param p2, "pOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->getOutputSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    .line 385
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_31

    .line 388
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v1

    .line 391
    .local v1, "myTag":[B
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->encryptPlain([B[BI)I

    move-result v2

    const/16 v3, 0x10

    add-int/2addr v2, v3

    .line 394
    .local v2, "myDataLen":I
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v4

    add-int/2addr v4, p2

    invoke-static {v1, v0, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length v4, v4

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 400
    return v2

    .line 407
    .end local v1    # "myTag":[B
    .end local v2    # "myDataLen":I
    :cond_31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->decryptPlain()V

    .line 410
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v1

    .line 411
    .local v1, "myDataLen":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v2

    .line 412
    .local v2, "mySrc":[B
    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 416
    return v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-GCM-SIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMac()[B
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 4
    .param p1, "pLen"    # I

    .line 432
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_f

    .line 434
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, v1

    return v0

    .line 436
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    add-int/2addr v0, p1

    .line 437
    .local v0, "myCurr":I
    if-le v0, v1, :cond_1b

    add-int/lit8 v1, v0, -0x10

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3
    .param p1, "pLen"    # I

    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .param p1, "pEncrypt"    # Z
    .param p2, "cipherParameters"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "myInitialAEAD":[B
    const/4 v1, 0x0

    .line 193
    .local v1, "myNonce":[B
    const/4 v2, 0x0

    .line 196
    .local v2, "myKey":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v3, :cond_17

    .line 198
    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 199
    .local v3, "myAEAD":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    .line 200
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    .line 201
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    .line 202
    .end local v3    # "myAEAD":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    goto :goto_2a

    .line 203
    :cond_17
    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_60

    .line 205
    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 206
    .local v3, "myParms":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 207
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 208
    .end local v3    # "myParms":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    nop

    .line 215
    :goto_2a
    if-eqz v1, :cond_58

    array-length v3, v1

    const/16 v4, 0xc

    if-ne v3, v4, :cond_58

    .line 221
    if-eqz v2, :cond_50

    .line 222
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_43

    .line 223
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_50

    .line 229
    :cond_43
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    .line 230
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    .line 231
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    .line 234
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->deriveKeys(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;)V

    .line 235
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 236
    return-void

    .line 225
    :cond_50
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid nonce"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_60
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid parameters passed to GCM-SIV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist processAADByte(B)V
    .registers 3
    .param p1, "pByte"    # B

    .line 306
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    .line 310
    return-void
.end method

.method public blacklist processAADBytes([BII)V
    .registers 5
    .param p1, "pData"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I

    .line 317
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    .line 320
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 324
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .registers 5
    .param p1, "pByte"    # B
    .param p2, "pOutput"    # [B
    .param p3, "pOutOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 331
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    .line 334
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_13

    .line 336
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    goto :goto_18

    .line 341
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    .line 345
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 8
    .param p1, "pData"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I
    .param p4, "pOutput"    # [B
    .param p5, "pOutOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    .line 358
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    .line 361
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_16

    .line 363
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    .line 364
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    goto :goto_1b

    .line 368
    :cond_16
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    .line 372
    :goto_1b
    return v0
.end method

.method public blacklist reset()V
    .registers 1

    .line 442
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 443
    return-void
.end method
