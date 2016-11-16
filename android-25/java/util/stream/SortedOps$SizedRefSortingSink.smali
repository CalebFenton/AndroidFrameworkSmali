.class final Ljava/util/stream/SortedOps$SizedRefSortingSink;
.super Ljava/util/stream/SortedOps$AbstractRefSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedRefSortingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/SortedOps$AbstractRefSortingSink",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private offset:I


# direct methods
.method constructor <init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 335
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    #@3
    .line 334
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 364
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    #@2
    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    #@8
    aput-object p1, v0, v1

    #@a
    .line 363
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .line 341
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    const-wide/32 v0, 0x7ffffff7

    #@3
    cmp-long v0, p1, v0

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Stream size exceeds max array size"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 343
    :cond_0
    long-to-int v0, p1

    #@11
    new-array v0, v0, [Ljava/lang/Object;

    #@13
    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    #@15
    .line 340
    return-void
.end method

.method public end()V
    .locals 5

    #@0
    .prologue
    .line 348
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    #@2
    iget v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    #@4
    iget-object v3, p0, Ljava/util/stream/SortedOps$AbstractRefSortingSink;->comparator:Ljava/util/Comparator;

    #@6
    const/4 v4, 0x0

    #@7
    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@a
    .line 349
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@c
    iget v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    #@e
    int-to-long v2, v2

    #@f
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@12
    .line 350
    iget-boolean v1, p0, Ljava/util/stream/SortedOps$AbstractRefSortingSink;->cancellationWasRequested:Z

    #@14
    if-nez v1, :cond_0

    #@16
    .line 351
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    #@19
    if-ge v0, v1, :cond_1

    #@1b
    .line 352
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@1d
    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    #@1f
    aget-object v2, v2, v0

    #@21
    invoke-interface {v1, v2}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@24
    .line 351
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 355
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@28
    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    #@2a
    if-ge v0, v1, :cond_1

    #@2c
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@2e
    invoke-interface {v1}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_2

    #@34
    .line 358
    :cond_1
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@36
    invoke-interface {v1}, Ljava/util/stream/Sink;->end()V

    #@39
    .line 359
    const/4 v1, 0x0

    #@3a
    iput-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    #@3c
    .line 347
    return-void

    #@3d
    .line 356
    :cond_2
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@3f
    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    #@41
    aget-object v2, v2, v0

    #@43
    invoke-interface {v1, v2}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@46
    .line 355
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_1
.end method
