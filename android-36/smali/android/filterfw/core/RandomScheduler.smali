.class public Landroid/filterfw/core/RandomScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "RandomScheduler.java"


# instance fields
.field private greylist-max-o mRand:Ljava/util/Random;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 3
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .line 34
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/RandomScheduler;->mRand:Ljava/util/Random;

    .line 35
    return-void
.end method


# virtual methods
.method public greylist-max-o reset()V
    .registers 1

    .line 39
    return-void
.end method

.method public greylist-max-o scheduleNextNode()Landroid/filterfw/core/Filter;
    .registers 5

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 44
    .local v0, "candidates":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/filterfw/core/Filter;>;"
    invoke-virtual {p0}, Landroid/filterfw/core/RandomScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/Filter;

    .line 45
    .local v2, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->canProcess()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v2    # "filter":Landroid/filterfw/core/Filter;
    :cond_26
    goto :goto_11

    .line 48
    :cond_27
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_3e

    .line 49
    iget-object v1, p0, Landroid/filterfw/core/RandomScheduler;->mRand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 50
    .local v1, "r":I
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/Filter;

    return-object v2

    .line 52
    .end local v1    # "r":I
    :cond_3e
    const/4 v1, 0x0

    return-object v1
.end method
