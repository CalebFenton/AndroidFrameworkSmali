.class public Landroid/filterfw/core/RandomScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "RandomScheduler.java"


# instance fields
.field private mRand:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 1
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    #@3
    .line 31
    new-instance v0, Ljava/util/Random;

    #@5
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@8
    iput-object v0, p0, Landroid/filterfw/core/RandomScheduler;->mRand:Ljava/util/Random;

    #@a
    .line 33
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 38
    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .locals 6

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    .line 44
    .local v0, "candidates":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/filterfw/core/Filter;>;"
    invoke-virtual {p0}, Landroid/filterfw/core/RandomScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "filter$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/filterfw/core/Filter;

    #@1d
    .line 45
    .local v1, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->canProcess()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 48
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@2a
    move-result v4

    #@2b
    if-lez v4, :cond_2

    #@2d
    .line 49
    iget-object v4, p0, Landroid/filterfw/core/RandomScheduler;->mRand:Ljava/util/Random;

    #@2f
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@32
    move-result v5

    #@33
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    #@36
    move-result v3

    #@37
    .line 50
    .local v3, "r":I
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Landroid/filterfw/core/Filter;

    #@3d
    return-object v4

    #@3e
    .line 52
    .end local v3    # "r":I
    :cond_2
    const/4 v4, 0x0

    #@3f
    return-object v4
.end method
