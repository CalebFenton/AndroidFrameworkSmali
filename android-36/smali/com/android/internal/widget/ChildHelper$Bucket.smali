.class Lcom/android/internal/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final blacklist BITS_PER_WORD:I = 0x40

.field static final blacklist LAST_BIT:J = -0x8000000000000000L


# instance fields
.field blacklist mData:J

.field blacklist mNext:Lcom/android/internal/widget/ChildHelper$Bucket;


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private blacklist ensureNext()V
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-nez v0, :cond_b

    .line 416
    new-instance v0, Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-direct {v0}, Lcom/android/internal/widget/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    .line 418
    :cond_b
    return-void
.end method


# virtual methods
.method blacklist clear(I)V
    .registers 6
    .param p1, "index"    # I

    .line 421
    const/16 v0, 0x40

    if-lt p1, v0, :cond_10

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_19

    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->clear(I)V

    goto :goto_19

    .line 426
    :cond_10
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    .line 429
    :cond_19
    :goto_19
    return-void
.end method

.method blacklist countOnesBefore(I)I
    .registers 8
    .param p1, "index"    # I

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1c

    .line 494
    if-lt p1, v1, :cond_11

    .line 495
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 497
    :cond_11
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 499
    :cond_1c
    if-ge p1, v1, :cond_29

    .line 500
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 502
    :cond_29
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v0

    iget-wide v1, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist get(I)Z
    .registers 6
    .param p1, "index"    # I

    .line 432
    const/16 v0, 0x40

    if-lt p1, v0, :cond_10

    .line 433
    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->get(I)Z

    move-result v0

    return v0

    .line 436
    :cond_10
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method blacklist insert(IZ)V
    .registers 14
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 448
    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    .line 449
    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_47

    .line 452
    :cond_f
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 453
    .local v0, "lastBit":Z
    :goto_1f
    const-wide/16 v3, 0x1

    shl-long v5, v3, p1

    sub-long/2addr v5, v3

    .line 454
    .local v5, "mask":J
    iget-wide v3, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    and-long/2addr v3, v5

    .line 455
    .local v3, "before":J
    iget-wide v7, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    not-long v9, v5

    and-long/2addr v7, v9

    shl-long/2addr v7, v1

    .line 456
    .local v7, "after":J
    or-long v9, v3, v7

    iput-wide v9, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    .line 457
    if-eqz p2, :cond_36

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_39

    .line 460
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ChildHelper$Bucket;->clear(I)V

    .line 462
    :goto_39
    if-nez v0, :cond_3f

    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-eqz v1, :cond_47

    .line 463
    :cond_3f
    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    .line 464
    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->insert(IZ)V

    .line 467
    .end local v0    # "lastBit":Z
    .end local v3    # "before":J
    .end local v5    # "mask":J
    .end local v7    # "after":J
    :cond_47
    :goto_47
    return-void
.end method

.method blacklist remove(I)Z
    .registers 13
    .param p1, "index"    # I

    .line 470
    const/16 v0, 0x40

    if-lt p1, v0, :cond_10

    .line 471
    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    .line 472
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v0

    return v0

    .line 474
    :cond_10
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    .line 475
    .local v2, "mask":J
    iget-wide v4, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_21

    move v4, v5

    goto :goto_22

    :cond_21
    move v4, v6

    .line 476
    .local v4, "value":Z
    :goto_22
    iget-wide v7, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    not-long v9, v2

    and-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    .line 477
    sub-long/2addr v2, v0

    .line 478
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    and-long/2addr v0, v2

    .line 480
    .local v0, "before":J
    iget-wide v7, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    not-long v9, v2

    and-long/2addr v7, v9

    invoke-static {v7, v8, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v7

    .line 481
    .local v7, "after":J
    or-long v9, v0, v7

    iput-wide v9, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    .line 482
    iget-object v5, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-eqz v5, :cond_4e

    .line 483
    iget-object v5, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ChildHelper$Bucket;->get(I)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 484
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ChildHelper$Bucket;->set(I)V

    .line 486
    :cond_49
    iget-object v5, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ChildHelper$Bucket;->remove(I)Z

    .line 488
    :cond_4e
    return v4
.end method

.method blacklist reset()V
    .registers 3

    .line 441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_d

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->reset()V

    .line 445
    :cond_d
    return-void
.end method

.method blacklist set(I)V
    .registers 6
    .param p1, "index"    # I

    .line 406
    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    .line 407
    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    .line 408
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_17

    .line 410
    :cond_f
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    .line 412
    :goto_17
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 508
    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-nez v0, :cond_b

    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 509
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_2f
    return-object v0
.end method
