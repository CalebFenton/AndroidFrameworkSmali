.class final Ljava/util/stream/SortedOps$SizedDoubleSortingSink;
.super Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedDoubleSortingSink"
.end annotation


# instance fields
.field private blacklist array:[D

.field private blacklist offset:I


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

    .line 637
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Ljava/util/stream/Sink;)V

    .line 638
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 6
    .param p1, "t"    # D

    .line 665
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    aput-wide p1, v0, v1

    .line 666
    return-void
.end method

.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 642
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_d

    .line 644
    long-to-int v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    .line 645
    return-void

    .line 643
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist end()V
    .registers 5

    .line 649
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([DII)V

    .line 650
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 651
    iget-boolean v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_26

    .line 652
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_25

    .line 653
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .end local v0    # "i":I
    :cond_25
    goto :goto_3f

    .line 656
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_27
    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_3f

    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 657
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 659
    .end local v0    # "i":I
    :cond_3f
    :goto_3f
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    .line 661
    return-void
.end method
