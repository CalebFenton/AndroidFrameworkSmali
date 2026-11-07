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
        "Ljava/util/stream/SortedOps$AbstractRefSortingSink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private blacklist offset:I


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "-TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 340
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    .line 341
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 369
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    aput-object p1, v0, v1

    .line 370
    return-void
.end method

.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 346
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_d

    .line 348
    long-to-int v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    .line 349
    return-void

    .line 347
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist end()V
    .registers 5

    .line 353
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 354
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 355
    iget-boolean v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_28

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    if-ge v0, v1, :cond_27

    .line 357
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .end local v0    # "i":I
    :cond_27
    goto :goto_41

    .line 360
    :cond_28
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_29
    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    if-ge v0, v1, :cond_41

    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_41

    .line 361
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 363
    .end local v0    # "i":I
    :cond_41
    :goto_41
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    .line 365
    return-void
.end method
