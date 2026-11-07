.class public Landroid/filterfw/core/OneShotScheduler;
.super Landroid/filterfw/core/RoundRobinScheduler;
.source "OneShotScheduler.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "OneShotScheduler"


# instance fields
.field private final greylist-max-o mLogVerbose:Z

.field private greylist-max-o scheduled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 4
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .line 40
    invoke-direct {p0, p1}, Landroid/filterfw/core/RoundRobinScheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    .line 42
    const-string v0, "OneShotScheduler"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    .line 43
    return-void
.end method


# virtual methods
.method public greylist-max-o reset()V
    .registers 2

    .line 47
    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->reset()V

    .line 48
    iget-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 49
    return-void
.end method

.method public greylist-max-o scheduleNextNode()Landroid/filterfw/core/Filter;
    .registers 7

    .line 53
    const/4 v0, 0x0

    .line 56
    .local v0, "first":Landroid/filterfw/core/Filter;
    :goto_1
    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->scheduleNextNode()Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 57
    .local v1, "filter":Landroid/filterfw/core/Filter;
    const/4 v2, 0x0

    const-string v3, "OneShotScheduler"

    if-nez v1, :cond_14

    .line 58
    iget-boolean v4, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v4, :cond_13

    const-string v4, "No filters available to run."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_13
    return-object v2

    .line 61
    :cond_14
    iget-object v4, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 62
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getNumberOfConnectedInputs()I

    move-result v2

    if-nez v2, :cond_34

    .line 63
    iget-object v2, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_34
    iget-boolean v2, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v2, :cond_60

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling filter \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" of type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getFilterClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_60
    return-object v1

    .line 68
    :cond_61
    if-ne v0, v1, :cond_6e

    .line 69
    nop

    .line 74
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    iget-boolean v1, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v1, :cond_6d

    const-string v1, "One pass through graph completed."

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_6d
    return-object v2

    .line 72
    .restart local v1    # "filter":Landroid/filterfw/core/Filter;
    :cond_6e
    if-nez v0, :cond_71

    move-object v0, v1

    .line 73
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    :cond_71
    goto :goto_1
.end method
