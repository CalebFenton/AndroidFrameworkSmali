.class final Ljava/util/stream/SortedOps$LongSortingSink;
.super Ljava/util/stream/SortedOps$AbstractLongSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongSortingSink"
.end annotation


# instance fields
.field private b:Ljava/util/stream/SpinedBuffer$OfLong;


# direct methods
.method constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 570
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractLongSortingSink;-><init>(Ljava/util/stream/Sink;)V

    #@3
    .line 569
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Ljava/util/stream/SortedOps$LongSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfLong;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    #@5
    .line 599
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .line 575
    const-wide/32 v0, 0x7ffffff7

    #@3
    cmp-long v0, p1, v0

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 576
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Stream size exceeds max array size"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 577
    :cond_0
    const-wide/16 v0, 0x0

    #@12
    cmp-long v0, p1, v0

    #@14
    if-lez v0, :cond_1

    #@16
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong;

    #@18
    long-to-int v1, p1

    #@19
    invoke-direct {v0, v1}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>(I)V

    #@1c
    :goto_0
    iput-object v0, p0, Ljava/util/stream/SortedOps$LongSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfLong;

    #@1e
    .line 574
    return-void

    #@1f
    .line 577
    :cond_1
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong;

    #@21
    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    #@24
    goto :goto_0
.end method

.method public end()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 582
    iget-object v4, p0, Ljava/util/stream/SortedOps$LongSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfLong;

    #@3
    invoke-virtual {v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, [J

    #@9
    .line 583
    .local v2, "longs":[J
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    #@c
    .line 584
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@e
    array-length v5, v2

    #@f
    int-to-long v6, v5

    #@10
    invoke-interface {v4, v6, v7}, Ljava/util/stream/Sink;->begin(J)V

    #@13
    .line 585
    iget-boolean v4, p0, Ljava/util/stream/SortedOps$AbstractLongSortingSink;->cancellationWasRequested:Z

    #@15
    if-nez v4, :cond_0

    #@17
    .line 586
    array-length v4, v2

    #@18
    :goto_0
    if-ge v3, v4, :cond_1

    #@1a
    aget-wide v0, v2, v3

    #@1c
    .line 587
    .local v0, "aLong":J
    iget-object v5, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@1e
    invoke-interface {v5, v0, v1}, Ljava/util/stream/Sink;->accept(J)V

    #@21
    .line 586
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 590
    .end local v0    # "aLong":J
    :cond_0
    array-length v4, v2

    #@25
    :goto_1
    if-ge v3, v4, :cond_1

    #@27
    aget-wide v0, v2, v3

    #@29
    .line 591
    .restart local v0    # "aLong":J
    iget-object v5, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@2b
    invoke-interface {v5}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_2

    #@31
    .line 595
    .end local v0    # "aLong":J
    :cond_1
    iget-object v3, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@33
    invoke-interface {v3}, Ljava/util/stream/Sink;->end()V

    #@36
    .line 581
    return-void

    #@37
    .line 592
    .restart local v0    # "aLong":J
    :cond_2
    iget-object v5, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@39
    invoke-interface {v5, v0, v1}, Ljava/util/stream/Sink;->accept(J)V

    #@3c
    .line 590
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_1
.end method
