.class Landroid/os/FileObserver$ObserverThread;
.super Ljava/lang/Thread;
.source "FileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverThread"
.end annotation


# instance fields
.field private m_fd:I

.field private m_observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    const-string/jumbo v0, "FileObserver"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@6
    .line 76
    new-instance v0, Ljava/util/HashMap;

    #@8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b
    iput-object v0, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    #@d
    .line 81
    invoke-direct {p0}, Landroid/os/FileObserver$ObserverThread;->init()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    #@13
    .line 79
    return-void
.end method

.method private native init()I
.end method

.method private native observe(I)V
.end method

.method private native startWatching(ILjava/lang/String;I)I
.end method

.method private native stopWatching(II)V
.end method


# virtual methods
.method public onEvent(IILjava/lang/String;)V
    .locals 7
    .param p1, "wfd"    # I
    .param p2, "mask"    # I
    .param p3, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    const/4 v1, 0x0

    #@1
    .line 109
    .local v1, "observer":Landroid/os/FileObserver;
    iget-object v5, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    #@3
    monitor-enter v5

    #@4
    .line 110
    :try_start_0
    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v6

    #@a
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@10
    .line 111
    .local v3, "weak":Ljava/lang/ref/WeakReference;
    if-eqz v3, :cond_0

    #@12
    .line 112
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    move-object v0, v4

    #@17
    check-cast v0, Landroid/os/FileObserver;

    #@19
    move-object v1, v0

    #@1a
    .line 113
    .local v1, "observer":Landroid/os/FileObserver;
    if-nez v1, :cond_0

    #@1c
    .line 114
    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    #@1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .end local v1    # "observer":Landroid/os/FileObserver;
    :cond_0
    monitor-exit v5

    #@26
    .line 120
    if-eqz v1, :cond_1

    #@28
    .line 122
    :try_start_1
    invoke-virtual {v1, p2, p3}, Landroid/os/FileObserver;->onEvent(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@2b
    .line 105
    :cond_1
    :goto_0
    return-void

    #@2c
    .line 109
    .end local v3    # "weak":Ljava/lang/ref/WeakReference;
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4

    #@2f
    .line 123
    .restart local v3    # "weak":Ljava/lang/ref/WeakReference;
    :catch_0
    move-exception v2

    #@30
    .line 124
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "FileObserver"

    #@33
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "Unhandled exception in FileObserver "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-static {v4, v5, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    goto :goto_0
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    #@2
    invoke-direct {p0, v0}, Landroid/os/FileObserver$ObserverThread;->observe(I)V

    #@5
    .line 84
    return-void
.end method

.method public startWatching(Ljava/lang/String;ILandroid/os/FileObserver;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mask"    # I
    .param p3, "observer"    # Landroid/os/FileObserver;

    #@0
    .prologue
    .line 89
    iget v2, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    #@2
    invoke-direct {p0, v2, p1, p2}, Landroid/os/FileObserver$ObserverThread;->startWatching(ILjava/lang/String;I)I

    #@5
    move-result v1

    #@6
    .line 91
    .local v1, "wfd":I
    new-instance v0, Ljava/lang/Integer;

    #@8
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@b
    .line 92
    .local v0, "i":Ljava/lang/Integer;
    if-ltz v1, :cond_0

    #@d
    .line 93
    iget-object v3, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    #@f
    monitor-enter v3

    #@10
    .line 94
    :try_start_0
    iget-object v2, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    #@12
    new-instance v4, Ljava/lang/ref/WeakReference;

    #@14
    invoke-direct {v4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@17
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v3

    #@1b
    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 93
    :catchall_0
    move-exception v2

    #@21
    monitor-exit v3

    #@22
    throw v2
.end method

.method public stopWatching(I)V
    .locals 1
    .param p1, "descriptor"    # I

    #@0
    .prologue
    .line 102
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    #@2
    invoke-direct {p0, v0, p1}, Landroid/os/FileObserver$ObserverThread;->stopWatching(II)V

    #@5
    .line 101
    return-void
.end method
