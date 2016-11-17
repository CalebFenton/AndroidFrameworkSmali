.class public abstract Ljava/util/stream/SpinedBuffer$OfPrimitive;
.super Ljava/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
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
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field curChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field spine:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 462
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0}, Ljava/util/stream/AbstractSpinedBuffer;-><init>()V

    #@3
    .line 463
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    #@5
    const/4 v1, 0x1

    #@6
    shl-int v0, v1, v0

    #@8
    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@e
    .line 461
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 454
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/AbstractSpinedBuffer;-><init>(I)V

    #@3
    .line 455
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    #@5
    const/4 v1, 0x1

    #@6
    shl-int v0, v1, v0

    #@8
    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@e
    .line 453
    return-void
.end method

.method private inflateSpine()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    const/16 v1, 0x8

    #@2
    .line 492
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 493
    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArrayArray(I)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@c
    .line 494
    new-array v0, v1, [J

    #@e
    iput-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@10
    .line 495
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@12
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@14
    const/4 v2, 0x0

    #@15
    aput-object v1, v0, v2

    #@17
    .line 491
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;IITT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract arrayLength(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;)I"
        }
    .end annotation
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    #@0
    .prologue
    .line 559
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    #@3
    move-result-wide v2

    #@4
    .line 560
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    #@7
    cmp-long v1, v2, v4

    #@9
    if-ltz v1, :cond_0

    #@b
    .line 561
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v4, "Stream size exceeds max array size"

    #@10
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 562
    :cond_0
    long-to-int v1, v2

    #@15
    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    .line 563
    .local v0, "result":Ljava/lang/Object;, "TT_ARR;"
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    #@1d
    .line 564
    return-object v0
.end method

.method protected capacity()J
    .locals 4

    #@0
    .prologue
    .line 486
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 487
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@6
    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    int-to-long v0, v0

    #@b
    .line 486
    :goto_0
    return-wide v0

    #@c
    .line 488
    :cond_0
    iget-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@e
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@10
    aget-wide v0, v0, v1

    #@12
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@14
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@16
    aget-object v2, v2, v3

    #@18
    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@1b
    move-result v2

    #@1c
    int-to-long v2, v2

    #@1d
    add-long/2addr v0, v2

    #@1e
    goto :goto_0
.end method

.method protected chunkFor(J)I
    .locals 7
    .param p1, "index"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    const/4 v4, 0x0

    #@1
    .line 522
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@3
    if-nez v1, :cond_1

    #@5
    .line 523
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@7
    int-to-long v2, v1

    #@8
    cmp-long v1, p1, v2

    #@a
    if-gez v1, :cond_0

    #@c
    .line 524
    return v4

    #@d
    .line 526
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 529
    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    #@1a
    move-result-wide v2

    #@1b
    cmp-long v1, p1, v2

    #@1d
    if-ltz v1, :cond_2

    #@1f
    .line 530
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@21
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 532
    :cond_2
    const/4 v0, 0x0

    #@2a
    .local v0, "j":I
    :goto_0
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@2c
    if-gt v0, v1, :cond_4

    #@2e
    .line 533
    iget-object v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@30
    aget-wide v2, v1, v0

    #@32
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@34
    aget-object v1, v1, v0

    #@36
    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@39
    move-result v1

    #@3a
    int-to-long v4, v1

    #@3b
    add-long/2addr v2, v4

    #@3c
    cmp-long v1, p1, v2

    #@3e
    if-gez v1, :cond_3

    #@40
    .line 534
    return v0

    #@41
    .line 532
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 536
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@46
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v1
.end method

.method public clear()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 579
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 580
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@8
    aget-object v0, v0, v1

    #@a
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@c
    .line 581
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@e
    .line 582
    iput-object v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@10
    .line 584
    :cond_0
    iput v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@12
    .line 585
    iput v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@14
    .line 578
    return-void
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .locals 9
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "array":Ljava/lang/Object;, "TT_ARR;"
    const/4 v8, 0x0

    #@1
    .line 540
    int-to-long v4, p2

    #@2
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    #@5
    move-result-wide v6

    #@6
    add-long v0, v4, v6

    #@8
    .line 541
    .local v0, "finalOffset":J
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@b
    move-result v3

    #@c
    int-to-long v4, v3

    #@d
    cmp-long v3, v0, v4

    #@f
    if-gtz v3, :cond_0

    #@11
    int-to-long v4, p2

    #@12
    cmp-long v3, v0, v4

    #@14
    if-gez v3, :cond_1

    #@16
    .line 542
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@18
    const-string/jumbo v4, "does not fit"

    #@1b
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 545
    :cond_1
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@21
    if-nez v3, :cond_3

    #@23
    .line 546
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@25
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@27
    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2a
    .line 539
    :cond_2
    :goto_0
    return-void

    #@2b
    .line 549
    :cond_3
    const/4 v2, 0x0

    #@2c
    .local v2, "i":I
    :goto_1
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@2e
    if-ge v2, v3, :cond_4

    #@30
    .line 550
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@32
    aget-object v3, v3, v2

    #@34
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@36
    aget-object v4, v4, v2

    #@38
    invoke-virtual {p0, v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@3b
    move-result v4

    #@3c
    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3f
    .line 551
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@41
    aget-object v3, v3, v2

    #@43
    invoke-virtual {p0, v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@46
    move-result v3

    #@47
    add-int/2addr p2, v3

    #@48
    .line 549
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 553
    :cond_4
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@4d
    if-lez v3, :cond_2

    #@4f
    .line 554
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@51
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@53
    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@56
    goto :goto_0
.end method

.method public bridge synthetic count()J
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method protected final ensureCapacity(J)V
    .locals 11
    .param p1, "targetSize"    # J

    #@0
    .prologue
    .line 500
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    #@3
    move-result-wide v0

    #@4
    .line 501
    .local v0, "capacity":J
    cmp-long v5, p1, v0

    #@6
    if-lez v5, :cond_1

    #@8
    .line 502
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    #@b
    .line 503
    iget v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@d
    add-int/lit8 v2, v5, 0x1

    #@f
    .local v2, "i":I
    :goto_0
    cmp-long v5, p1, v0

    #@11
    if-lez v5, :cond_1

    #@13
    .line 504
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@15
    array-length v5, v5

    #@16
    if-lt v2, v5, :cond_0

    #@18
    .line 505
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@1a
    array-length v5, v5

    #@1b
    mul-int/lit8 v3, v5, 0x2

    #@1d
    .line 506
    .local v3, "newSpineSize":I
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@1f
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    iput-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@25
    .line 507
    iget-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@27
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    #@2a
    move-result-object v5

    #@2b
    iput-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@2d
    .line 509
    .end local v3    # "newSpineSize":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/stream/AbstractSpinedBuffer;->chunkSize(I)I

    #@30
    move-result v4

    #@31
    .line 510
    .local v4, "nextChunkSize":I
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@33
    invoke-virtual {p0, v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    #@36
    move-result-object v6

    #@37
    aput-object v6, v5, v2

    #@39
    .line 511
    iget-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@3b
    iget-object v6, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@3d
    add-int/lit8 v7, v2, -0x1

    #@3f
    aget-wide v6, v6, v7

    #@41
    iget-object v8, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@43
    add-int/lit8 v9, v2, -0x1

    #@45
    aget-object v8, v8, v9

    #@47
    invoke-virtual {p0, v8}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@4a
    move-result v8

    #@4b
    int-to-long v8, v8

    #@4c
    add-long/2addr v6, v8

    #@4d
    aput-wide v6, v5, v2

    #@4f
    .line 512
    int-to-long v6, v4

    #@50
    add-long/2addr v0, v6

    #@51
    .line 503
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_0

    #@54
    .line 499
    .end local v2    # "i":I
    .end local v4    # "nextChunkSize":I
    :cond_1
    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    const/4 v3, 0x0

    #@1
    .line 591
    const/4 v0, 0x0

    #@2
    .local v0, "j":I
    :goto_0
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 592
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@8
    aget-object v1, v1, v0

    #@a
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@c
    aget-object v2, v2, v0

    #@e
    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    invoke-virtual {p0, v1, v3, v2, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    #@15
    .line 591
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 595
    :cond_0
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@1a
    iget v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@1c
    invoke-virtual {p0, v1, v3, v2, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    #@1f
    .line 589
    return-void
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation
.end method

.method protected increaseCapacity()V
    .locals 4

    #@0
    .prologue
    .line 518
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x1

    #@6
    add-long/2addr v0, v2

    #@7
    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    #@a
    .line 517
    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->isEmpty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method protected abstract newArrayArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT_ARR;"
        }
    .end annotation
.end method

.method protected preAccept()V
    .locals 2

    #@0
    .prologue
    .line 568
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@2
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@4
    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_2

    #@a
    .line 569
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    #@d
    .line 570
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@13
    array-length v1, v1

    #@14
    if-ge v0, v1, :cond_0

    #@16
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@18
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    aget-object v0, v0, v1

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 571
    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->increaseCapacity()V

    #@23
    .line 572
    :cond_1
    const/4 v0, 0x0

    #@24
    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@26
    .line 573
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@2c
    .line 574
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@2e
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@30
    aget-object v0, v0, v1

    #@32
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@34
    .line 567
    :cond_2
    return-void
.end method
