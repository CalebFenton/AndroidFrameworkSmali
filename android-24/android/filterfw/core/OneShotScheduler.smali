.class public Landroid/filterfw/core/OneShotScheduler;
.super Landroid/filterfw/core/RoundRobinScheduler;
.source "OneShotScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneShotScheduler"


# instance fields
.field private final mLogVerbose:Z

.field private scheduled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 2
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/filterfw/core/RoundRobinScheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    #@3
    .line 41
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    #@a
    .line 42
    const-string/jumbo v0, "OneShotScheduler"

    #@d
    const/4 v1, 0x2

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@11
    move-result v0

    #@12
    iput-boolean v0, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    #@14
    .line 39
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->reset()V

    #@3
    .line 48
    iget-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@8
    .line 46
    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 53
    const/4 v1, 0x0

    #@2
    .line 56
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->scheduleNextNode()Landroid/filterfw/core/Filter;

    #@5
    move-result-object v0

    #@6
    .line 57
    .local v0, "filter":Landroid/filterfw/core/Filter;
    if-nez v0, :cond_2

    #@8
    .line 58
    iget-boolean v2, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    #@a
    if-eqz v2, :cond_1

    #@c
    const-string/jumbo v2, "OneShotScheduler"

    #@f
    const-string/jumbo v3, "No filters available to run."

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 59
    :cond_1
    return-object v4

    #@16
    .line 61
    :cond_2
    iget-object v2, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    #@18
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_5

    #@22
    .line 62
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getNumberOfConnectedInputs()I

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_3

    #@28
    .line 63
    iget-object v2, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    const/4 v4, 0x1

    #@2f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 64
    :cond_3
    iget-boolean v2, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    #@38
    if-eqz v2, :cond_4

    #@3a
    const-string/jumbo v2, "OneShotScheduler"

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "Scheduling filter \""

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    const-string/jumbo v4, "\" of type "

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getFilterClassName()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 65
    :cond_4
    return-object v0

    #@68
    .line 68
    :cond_5
    if-ne v1, v0, :cond_7

    #@6a
    .line 74
    iget-boolean v2, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    #@6c
    if-eqz v2, :cond_6

    #@6e
    const-string/jumbo v2, "OneShotScheduler"

    #@71
    const-string/jumbo v3, "One pass through graph completed."

    #@74
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 75
    :cond_6
    return-object v4

    #@78
    .line 72
    :cond_7
    if-nez v1, :cond_0

    #@7a
    move-object v1, v0

    #@7b
    .local v1, "first":Landroid/filterfw/core/Filter;
    goto :goto_0
.end method
