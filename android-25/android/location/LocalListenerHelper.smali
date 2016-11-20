.class abstract Landroid/location/LocalListenerHelper;
.super Ljava/lang/Object;
.source "LocalListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocalListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT",
            "Listener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/location/LocalListenerHelper;Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V
    .locals 0
    .param p1, "operation"    # Landroid/location/LocalListenerHelper$ListenerOperation;
    .param p2, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/location/LocalListenerHelper;->executeOperation(Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@a
    .line 44
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 45
    iput-object p1, p0, Landroid/location/LocalListenerHelper;->mContext:Landroid/content/Context;

    #@f
    .line 46
    iput-object p2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@11
    .line 43
    return-void
.end method

.method private executeOperation(Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocalListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;TT",
            "Listener;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p1, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<TTListener;>;"
    .local p2, "listener":Ljava/lang/Object;, "TTListener;"
    :try_start_0
    invoke-interface {p1, p2}, Landroid/location/LocalListenerHelper$ListenerOperation;->execute(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 102
    :goto_0
    return-void

    #@4
    .line 105
    :catch_0
    move-exception v0

    #@5
    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@7
    const-string/jumbo v2, "Error in monitored listener."

    #@a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Landroid/os/Handler;)Z
    .locals 6
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p1, "listener":Ljava/lang/Object;, "TTListener;"
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 50
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 51
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@7
    monitor-enter v3

    #@8
    .line 54
    :try_start_0
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@a
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 57
    :try_start_1
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->registerWithServer()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result v1

    #@14
    .line 62
    .local v1, "registeredWithService":Z
    if-nez v1, :cond_0

    #@16
    .line 63
    :try_start_2
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@18
    const-string/jumbo v4, "Unable to register listener transport."

    #@1b
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    monitor-exit v3

    #@1f
    .line 64
    return v5

    #@20
    .line 58
    .end local v1    # "registeredWithService":Z
    :catch_0
    move-exception v0

    #@21
    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@23
    const-string/jumbo v4, "Error handling first listener."

    #@26
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    monitor-exit v3

    #@2a
    .line 60
    return v5

    #@2b
    .line 67
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_4
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_1

    #@33
    monitor-exit v3

    #@34
    .line 68
    return v4

    #@35
    .line 70
    :cond_1
    :try_start_5
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@37
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 71
    return v4

    #@3c
    .line 51
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2
.end method

.method protected foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocalListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p1, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@2
    monitor-enter v4

    #@3
    .line 114
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@5
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@7
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .local v2, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TTListener;Landroid/os/Handler;>;>;"
    monitor-exit v4

    #@f
    .line 116
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/util/Map$Entry;

    #@1f
    .line 117
    .local v0, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TTListener;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    if-nez v3, :cond_0

    #@25
    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    invoke-direct {p0, p1, v3}, Landroid/location/LocalListenerHelper;->executeOperation(Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V

    #@2c
    goto :goto_0

    #@2d
    .line 113
    .end local v0    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TTListener;Landroid/os/Handler;>;"
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TTListener;Landroid/os/Handler;>;>;"
    :catchall_0
    move-exception v3

    #@2e
    monitor-exit v4

    #@2f
    throw v3

    #@30
    .line 120
    .restart local v0    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TTListener;Landroid/os/Handler;>;"
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    .restart local v2    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TTListener;Landroid/os/Handler;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Landroid/os/Handler;

    #@36
    new-instance v4, Landroid/location/LocalListenerHelper$1;

    #@38
    invoke-direct {v4, p0, p1, v0}, Landroid/location/LocalListenerHelper$1;-><init>(Landroid/location/LocalListenerHelper;Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/util/Map$Entry;)V

    #@3b
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3e
    goto :goto_0

    #@3f
    .line 111
    .end local v0    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TTListener;Landroid/os/Handler;>;"
    :cond_1
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 99
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    iget-object v0, p0, Landroid/location/LocalListenerHelper;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method protected abstract registerWithServer()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p1, "listener":Ljava/lang/Object;, "TTListener;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 77
    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@5
    monitor-enter v4

    #@6
    .line 78
    :try_start_0
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@8
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    .line 79
    .local v2, "removed":Z
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@e
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 80
    if-eqz v2, :cond_1

    #@13
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    #@15
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v1

    #@19
    .line 81
    :goto_0
    if-eqz v1, :cond_0

    #@1b
    .line 83
    :try_start_1
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->unregisterFromServer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    :cond_0
    :goto_1
    monitor-exit v4

    #@1f
    .line 75
    return-void

    #@20
    .line 80
    :cond_1
    const/4 v1, 0x0

    #@21
    .local v1, "isLastRemoved":Z
    goto :goto_0

    #@22
    .line 84
    .end local v1    # "isLastRemoved":Z
    :catch_0
    move-exception v0

    #@23
    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@25
    const-string/jumbo v5, "Error handling last listener removal"

    #@28
    invoke-static {v3, v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    goto :goto_1

    #@2c
    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "removed":Z
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit v4

    #@2e
    throw v3
.end method

.method protected abstract unregisterFromServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
