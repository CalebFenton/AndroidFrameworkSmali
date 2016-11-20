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
.field private b:Ljava/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 472
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Ljava/util/stream/Sink;)V

    #@3
    .line 471
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    #@5
    .line 501
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .line 477
    const-wide/32 v0, 0x7ffffff7

    #@3
    cmp-long v0, p1, v0

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Stream size exceeds max array size"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 479
    :cond_0
    const-wide/16 v0, 0x0

    #@12
    cmp-long v0, p1, v0

    #@14
    if-lez v0, :cond_1

    #@16
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    #@18
    long-to-int v1, p1

    #@19
    invoke-direct {v0, v1}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>(I)V

    #@1c
    :goto_0
    iput-object v0, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    #@1e
    .line 476
    return-void

    #@1f
    .line 479
    :cond_1
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    #@21
    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    #@24
    goto :goto_0
.end method

.method public end()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 484
    iget-object v3, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    #@3
    invoke-virtual {v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, [I

    #@9
    .line 485
    .local v1, "ints":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    #@c
    .line 486
    iget-object v3, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@e
    array-length v4, v1

    #@f
    int-to-long v4, v4

    #@10
    invoke-interface {v3, v4, v5}, Ljava/util/stream/Sink;->begin(J)V

    #@13
    .line 487
    iget-boolean v3, p0, Ljava/util/stream/SortedOps$AbstractIntSortingSink;->cancellationWasRequested:Z

    #@15
    if-nez v3, :cond_0

    #@17
    .line 488
    array-length v3, v1

    #@18
    :goto_0
    if-ge v2, v3, :cond_1

    #@1a
    aget v0, v1, v2

    #@1c
    .line 489
    .local v0, "anInt":I
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@1e
    invoke-interface {v4, v0}, Ljava/util/stream/Sink;->accept(I)V

    #@21
    .line 488
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 492
    .end local v0    # "anInt":I
    :cond_0
    array-length v3, v1

    #@25
    :goto_1
    if-ge v2, v3, :cond_1

    #@27
    aget v0, v1, v2

    #@29
    .line 493
    .restart local v0    # "anInt":I
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@2b
    invoke-interface {v4}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 497
    .end local v0    # "anInt":I
    :cond_1
    iget-object v2, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@33
    invoke-interface {v2}, Ljava/util/stream/Sink;->end()V

    #@36
    .line 483
    return-void

    #@37
    .line 494
    .restart local v0    # "anInt":I
    :cond_2
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@39
    invoke-interface {v4, v0}, Ljava/util/stream/Sink;->accept(I)V

    #@3c
    .line 492
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_1
.end method
