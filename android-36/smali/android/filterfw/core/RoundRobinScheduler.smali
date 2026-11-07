.class public Landroid/filterfw/core/RoundRobinScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "RoundRobinScheduler.java"


# instance fields
.field private greylist-max-o mLastPos:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 3
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .line 33
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 34
    return-void
.end method


# virtual methods
.method public greylist-max-o reset()V
    .registers 2

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 39
    return-void
.end method

.method public greylist-max-o scheduleNextNode()Landroid/filterfw/core/Filter;
    .registers 8

    .line 43
    invoke-virtual {p0}, Landroid/filterfw/core/RoundRobinScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v0

    .line 44
    .local v0, "all_filters":Ljava/util/Set;, "Ljava/util/Set<Landroid/filterfw/core/Filter;>;"
    iget v1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v1, v2, :cond_13

    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 45
    :cond_13
    const/4 v1, 0x0

    .line 46
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 47
    .local v2, "first":Landroid/filterfw/core/Filter;
    const/4 v3, -0x1

    .line 48
    .local v3, "firstNdx":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/Filter;

    .line 49
    .local v5, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v5}, Landroid/filterfw/core/Filter;->canProcess()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 50
    iget v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    if-gt v1, v6, :cond_35

    .line 51
    if-nez v2, :cond_38

    .line 53
    move-object v2, v5

    .line 54
    move v3, v1

    goto :goto_38

    .line 58
    :cond_35
    iput v1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 59
    return-object v5

    .line 62
    :cond_38
    :goto_38
    nop

    .end local v5    # "filter":Landroid/filterfw/core/Filter;
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_1a

    .line 65
    :cond_3c
    if-eqz v2, :cond_41

    .line 66
    iput v3, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 67
    return-object v2

    .line 71
    :cond_41
    const/4 v4, 0x0

    return-object v4
.end method
