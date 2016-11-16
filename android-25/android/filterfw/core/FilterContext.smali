.class public Landroid/filterfw/core/FilterContext;
.super Ljava/lang/Object;
.source "FilterContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    }
.end annotation


# instance fields
.field private mFrameManager:Landroid/filterfw/core/FrameManager;

.field private mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private mGraphs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/filterfw/core/FilterGraph;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredFrames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    #@a
    .line 37
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    #@11
    .line 32
    return-void
.end method


# virtual methods
.method final addGraph(Landroid/filterfw/core/FilterGraph;)V
    .locals 1
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 123
    return-void
.end method

.method public declared-synchronized fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 82
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/filterfw/core/Frame;

    #@9
    .line 83
    .local v0, "frame":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_0

    #@b
    .line 84
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->onFrameFetch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 86
    return-object v0

    #@10
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method public getFrameManager()Landroid/filterfw/core/FrameManager;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@2
    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@2
    return-object v0
.end method

.method public initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .locals 2
    .param p1, "environment"    # Landroid/filterfw/core/GLEnvironment;

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 61
    iput-object p1, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@6
    .line 59
    return-void

    #@7
    .line 63
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v1, "Attempting to re-initialize GL Environment for FilterContext!"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method public declared-synchronized removeFrame(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/filterfw/core/Frame;

    #@9
    .line 91
    .local v0, "frame":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_0

    #@b
    .line 92
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 93
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 89
    return-void

    #@15
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1
.end method

.method public setFrameManager(Landroid/filterfw/core/FrameManager;)V
    .locals 2
    .param p1, "manager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    .line 44
    if-nez p1, :cond_0

    #@2
    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Attempting to set null FrameManager!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameManager;->getContext()Landroid/filterfw/core/FilterContext;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Attempting to set FrameManager which is already bound to another FilterContext!"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 50
    :cond_1
    iput-object p1, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@1c
    .line 51
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@1e
    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->setContext(Landroid/filterfw/core/FilterContext;)V

    #@21
    .line 43
    return-void
.end method

.method public declared-synchronized storeFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 73
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@4
    move-result-object v0

    #@5
    .line 74
    .local v0, "storedFrame":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_0

    #@7
    .line 75
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@a
    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->onFrameStore()V

    #@d
    .line 78
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    #@f
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 72
    return-void

    #@18
    .end local v0    # "storedFrame":Landroid/filterfw/core/Frame;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit p0

    #@1a
    throw v1
.end method

.method public declared-synchronized tearDown()V
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 99
    :try_start_0
    iget-object v4, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v4

    #@7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "frame$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/filterfw/core/Frame;

    #@17
    .line 100
    .local v0, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    .end local v1    # "frame$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@1c
    monitor-exit p0

    #@1d
    throw v4

    #@1e
    .line 102
    .restart local v1    # "frame$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    #@20
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    #@23
    .line 105
    iget-object v4, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    #@25
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v3

    #@29
    .local v3, "graph$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_1

    #@2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Landroid/filterfw/core/FilterGraph;

    #@35
    .line 106
    .local v2, "graph":Landroid/filterfw/core/FilterGraph;
    invoke-virtual {v2, p0}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    #@38
    goto :goto_1

    #@39
    .line 108
    .end local v2    # "graph":Landroid/filterfw/core/FilterGraph;
    :cond_1
    iget-object v4, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    #@3b
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    #@3e
    .line 111
    iget-object v4, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 112
    iget-object v4, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@44
    invoke-virtual {v4}, Landroid/filterfw/core/FrameManager;->tearDown()V

    #@47
    .line 113
    const/4 v4, 0x0

    #@48
    iput-object v4, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@4a
    .line 117
    :cond_2
    iget-object v4, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@4c
    if-eqz v4, :cond_3

    #@4e
    .line 118
    iget-object v4, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@50
    invoke-virtual {v4}, Landroid/filterfw/core/GLEnvironment;->tearDown()V

    #@53
    .line 119
    const/4 v4, 0x0

    #@54
    iput-object v4, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    :cond_3
    monitor-exit p0

    #@57
    .line 97
    return-void
.end method
