.class public Landroid/filterfw/core/SimpleScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "SimpleScheduler.java"


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 0
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    #@3
    .line 28
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 33
    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .locals 3

    #@0
    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "filter$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/filterfw/core/Filter;

    #@18
    .line 39
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->canProcess()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 40
    return-object v0

    #@1f
    .line 42
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_1
    const/4 v2, 0x0

    #@20
    return-object v2
.end method
