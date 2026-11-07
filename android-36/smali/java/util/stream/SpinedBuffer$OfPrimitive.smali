.class abstract Ljava/util/stream/SpinedBuffer$OfPrimitive;
.super Ljava/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractSpinedBuffer;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field greylist-max-o curChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field greylist-max-o spine:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 464
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0}, Ljava/util/stream/AbstractSpinedBuffer;-><init>()V

    .line 465
    const/4 v0, 0x1

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    shl-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 466
    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 456
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/AbstractSpinedBuffer;-><init>(I)V

    .line 457
    const/4 v0, 0x1

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    shl-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 458
    return-void
.end method

.method private greylist-max-o inflateSpine()V
    .registers 4

    .line 494
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 495
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArrayArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 496
    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 497
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 499
    :cond_17
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;IITT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o arrayLength(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;)I"
        }
    .end annotation
.end method

.method public greylist-max-o asPrimitiveArray()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    .line 561
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    .line 562
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_15

    .line 564
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v2

    .line 565
    .local v2, "result":Ljava/lang/Object;, "TT_ARR;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 566
    return-object v2

    .line 563
    .end local v2    # "result":Ljava/lang/Object;, "TT_ARR;"
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected greylist-max-o capacity()J
    .registers 5

    .line 488
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_c

    .line 489
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1e

    .line 490
    :cond_c
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 488
    :goto_1e
    return-wide v0
.end method

.method protected greylist-max-o chunkFor(J)I
    .registers 8
    .param p1, "index"    # J

    .line 524
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_17

    .line 525
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_d

    .line 526
    const/4 v0, 0x0

    return v0

    .line 528
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_17
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_44

    .line 534
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_20
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-gt v0, v1, :cond_3a

    .line 535
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    aget-wide v1, v1, v0

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_37

    .line 536
    return v0

    .line 534
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 538
    .end local v0    # "j":I
    :cond_3a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_44
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o clear()V
    .registers 3

    .line 581
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 582
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 584
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 586
    :cond_10
    iput v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 587
    iput v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    .line 588
    return-void
.end method

.method public greylist-max-o copyInto(Ljava/lang/Object;I)V
    .registers 9
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    .line 542
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "array":Ljava/lang/Object;, "TT_ARR;"
    int-to-long v0, p2

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 543
    .local v0, "finalOffset":J
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4d

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4d

    .line 547
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v3, 0x0

    if-nez v2, :cond_21

    .line 548
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4c

    .line 551
    :cond_21
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-ge v2, v4, :cond_41

    .line 552
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v4, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p2, v4

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 555
    .end local v2    # "i":I
    :cond_41
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    if-lez v2, :cond_4c

    .line 556
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    :cond_4c
    :goto_4c
    return-void

    .line 544
    :cond_4d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "does not fit"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final greylist-max-o ensureCapacity(J)V
    .registers 12
    .param p1, "targetSize"    # J

    .line 502
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    .line 503
    .local v0, "capacity":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_54

    .line 504
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 505
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_f
    cmp-long v3, p1, v0

    if-lez v3, :cond_54

    .line 506
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_2d

    .line 507
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    .line 508
    .local v3, "newSpineSize":I
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 509
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 511
    .end local v3    # "newSpineSize":I
    :cond_2d
    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->chunkSize(I)I

    move-result v3

    .line 512
    .local v3, "nextChunkSize":I
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-virtual {p0, v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    .line 513
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    add-int/lit8 v6, v2, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    aput-wide v5, v4, v2

    .line 514
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 505
    .end local v3    # "nextChunkSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 517
    .end local v2    # "i":I
    :cond_54
    return-void
.end method

.method public greylist-max-o forEach(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 593
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_18

    .line 594
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 597
    .end local v0    # "j":I
    :cond_18
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-virtual {p0, v0, v2, v1, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 598
    return-void
.end method

.method public abstract whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation
.end method

.method protected greylist-max-o increaseCapacity()V
    .registers 5

    .line 520
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    .line 521
    return-void
.end method

.method public abstract whitelist test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o newArrayArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT_ARR;"
        }
    .end annotation
.end method

.method protected greylist-max-o preAccept()V
    .registers 3

    .line 570
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 571
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 572
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_23

    .line 573
    :cond_20
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->increaseCapacity()V

    .line 574
    :cond_23
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 575
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    .line 576
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 578
    :cond_34
    return-void
.end method
