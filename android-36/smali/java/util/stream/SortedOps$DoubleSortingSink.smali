.class final Ljava/util/stream/SortedOps$DoubleSortingSink;
.super Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleSortingSink"
.end annotation


# instance fields
.field private blacklist b:Ljava/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Sink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 676
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Ljava/util/stream/Sink;)V

    .line 677
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 4
    .param p1, "t"    # D

    .line 706
    iget-object v0, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 707
    return-void
.end method

.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 681
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 683
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>(I)V

    goto :goto_19

    :cond_14
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>()V

    :goto_19
    iput-object v0, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfDouble;

    .line 684
    return-void

    .line 682
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist end()V
    .registers 7

    .line 688
    iget-object v0, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 689
    .local v0, "doubles":[D
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 690
    iget-object v1, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 691
    iget-boolean v1, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->cancellationRequestedCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 692
    array-length v1, v0

    :goto_18
    if-ge v2, v1, :cond_3a

    aget-wide v3, v0, v2

    .line 693
    .local v3, "aDouble":D
    iget-object v5, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava/util/stream/Sink;->accept(D)V

    .line 692
    .end local v3    # "aDouble":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 696
    :cond_24
    array-length v1, v0

    :goto_25
    if-ge v2, v1, :cond_3a

    aget-wide v3, v0, v2

    .line 697
    .restart local v3    # "aDouble":D
    iget-object v5, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v5}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_32

    goto :goto_3a

    .line 698
    :cond_32
    iget-object v5, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava/util/stream/Sink;->accept(D)V

    .line 696
    .end local v3    # "aDouble":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 701
    :cond_3a
    :goto_3a
    iget-object v1, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->end()V

    .line 702
    return-void
.end method
