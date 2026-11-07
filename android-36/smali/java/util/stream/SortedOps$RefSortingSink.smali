.class final Ljava/util/stream/SortedOps$RefSortingSink;
.super Ljava/util/stream/SortedOps$AbstractRefSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefSortingSink"
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
.field private blacklist list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


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

    .line 380
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    .line 381
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 409
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 385
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 387
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_19

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_19
    iput-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    .line 388
    return-void

    .line 386
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist end()V
    .registers 4

    .line 392
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/util/stream/SortedOps$RefSortingSink;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 393
    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 394
    iget-boolean v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_27

    .line 395
    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/stream/SortedOps$RefSortingSink$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Ljava/util/stream/SortedOps$RefSortingSink$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/Sink;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_46

    .line 398
    :cond_27
    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 399
    .local v1, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_46

    .line 400
    :cond_40
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 401
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_2d

    .line 403
    :cond_46
    :goto_46
    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    .line 405
    return-void
.end method
