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
.field private array:[D

.field private offset:I


# direct methods
.method constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 629
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Ljava/util/stream/Sink;)V

    #@3
    .line 628
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    #@0
    .prologue
    .line 657
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    #@2
    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    #@8
    aput-wide p1, v0, v1

    #@a
    .line 656
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .line 634
    const-wide/32 v0, 0x7ffffff7

    #@3
    cmp-long v0, p1, v0

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Stream size exceeds max array size"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 636
    :cond_0
    long-to-int v0, p1

    #@11
    new-array v0, v0, [D

    #@13
    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    #@15
    .line 633
    return-void
.end method

.method public end()V
    .locals 4

    #@0
    .prologue
    .line 641
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    #@2
    iget v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    #@4
    const/4 v3, 0x0

    #@5
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->sort([DII)V

    #@8
    .line 642
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@a
    iget v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    #@c
    int-to-long v2, v2

    #@d
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@10
    .line 643
    iget-boolean v1, p0, Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;->cancellationWasRequested:Z

    #@12
    if-nez v1, :cond_0

    #@14
    .line 644
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    #@17
    if-ge v0, v1, :cond_1

    #@19
    .line 645
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@1b
    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    #@1d
    aget-wide v2, v2, v0

    #@1f
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    #@22
    .line 644
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 648
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@26
    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    #@28
    if-ge v0, v1, :cond_1

    #@2a
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@2c
    invoke-interface {v1}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 651
    :cond_1
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@34
    invoke-interface {v1}, Ljava/util/stream/Sink;->end()V

    #@37
    .line 652
    const/4 v1, 0x0

    #@38
    iput-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    #@3a
    .line 640
    return-void

    #@3b
    .line 649
    :cond_2
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@3d
    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    #@3f
    aget-wide v2, v2, v0

    #@41
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    #@44
    .line 648
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_1
.end method
