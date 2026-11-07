.class final Ljava/util/stream/SortedOps$IntSortingSink;
.super Ljava/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSortingSink"
.end annotation


# instance fields
.field private blacklist b:Ljava/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Sink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 478
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Ljava/util/stream/Sink;)V

    .line 479
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 508
    iget-object v0, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 509
    return-void
.end method

.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 483
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 485
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>(I)V

    goto :goto_19

    :cond_14
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    :goto_19
    iput-object v0, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    .line 486
    return-void

    .line 484
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist end()V
    .registers 6

    .line 490
    iget-object v0, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0}, Ljava/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 491
    .local v0, "ints":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 492
    iget-object v1, p0, Ljava/util/stream/SortedOps$IntSortingSink;->downstream:Ljava/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 493
    iget-boolean v1, p0, Ljava/util/stream/SortedOps$IntSortingSink;->cancellationRequestedCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 494
    array-length v1, v0

    :goto_18
    if-ge v2, v1, :cond_3a

    aget v3, v0, v2

    .line 495
    .local v3, "anInt":I
    iget-object v4, p0, Ljava/util/stream/SortedOps$IntSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v4, v3}, Ljava/util/stream/Sink;->accept(I)V

    .line 494
    .end local v3    # "anInt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 498
    :cond_24
    array-length v1, v0

    :goto_25
    if-ge v2, v1, :cond_3a

    aget v3, v0, v2

    .line 499
    .restart local v3    # "anInt":I
    iget-object v4, p0, Ljava/util/stream/SortedOps$IntSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v4}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_3a

    .line 500
    :cond_32
    iget-object v4, p0, Ljava/util/stream/SortedOps$IntSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v4, v3}, Ljava/util/stream/Sink;->accept(I)V

    .line 498
    .end local v3    # "anInt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 503
    :cond_3a
    :goto_3a
    iget-object v1, p0, Ljava/util/stream/SortedOps$IntSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->end()V

    .line 504
    return-void
.end method
