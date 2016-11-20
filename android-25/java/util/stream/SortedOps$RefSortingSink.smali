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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SortedOps$RefSortingSink$-void_end__LambdaImpl0;
    }
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
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_SortedOps$RefSortingSink-mthref-0(Ljava/util/stream/Sink;Ljava/lang/Object;)V
    .locals 0

    #@0
    .prologue
    .line 390
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@3
    return-void
.end method

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
    .line 375
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    #@3
    .line 374
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 404
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 403
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .line 380
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    const-wide/32 v0, 0x7ffffff7

    #@3
    cmp-long v0, p1, v0

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Stream size exceeds max array size"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 382
    :cond_0
    const-wide/16 v0, 0x0

    #@12
    cmp-long v0, p1, v0

    #@14
    if-ltz v0, :cond_1

    #@16
    new-instance v0, Ljava/util/ArrayList;

    #@18
    long-to-int v1, p1

    #@19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1c
    :goto_0
    iput-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    #@1e
    .line 379
    return-void

    #@1f
    .line 382
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    goto :goto_0
.end method

.method public end()V
    .locals 6

    #@0
    .prologue
    .line 387
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Ljava/util/stream/SortedOps$AbstractRefSortingSink;->comparator:Ljava/util/Comparator;

    #@4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    #@7
    .line 388
    iget-object v2, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@9
    iget-object v3, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v3

    #@f
    int-to-long v4, v3

    #@10
    invoke-interface {v2, v4, v5}, Ljava/util/stream/Sink;->begin(J)V

    #@13
    .line 389
    iget-boolean v2, p0, Ljava/util/stream/SortedOps$AbstractRefSortingSink;->cancellationWasRequested:Z

    #@15
    if-nez v2, :cond_1

    #@17
    .line 390
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    #@19
    iget-object v3, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@1b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1e
    new-instance v4, Ljava/util/stream/SortedOps$RefSortingSink$-void_end__LambdaImpl0;

    #@20
    invoke-direct {v4, v3}, Ljava/util/stream/SortedOps$RefSortingSink$-void_end__LambdaImpl0;-><init>(Ljava/util/stream/Sink;)V

    #@23
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    #@26
    .line 398
    :cond_0
    iget-object v2, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@28
    invoke-interface {v2}, Ljava/util/stream/Sink;->end()V

    #@2b
    .line 399
    const/4 v2, 0x0

    #@2c
    iput-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    #@2e
    .line 386
    return-void

    #@2f
    .line 393
    :cond_1
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    #@31
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    .local v1, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_0

    #@3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    .line 394
    .local v0, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@41
    invoke-interface {v2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_0

    #@47
    .line 395
    iget-object v2, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@49
    invoke-interface {v2, v0}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@4c
    goto :goto_0
.end method
