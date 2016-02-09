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

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@a
    .line 42
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 43
    iput-object p1, p0, Landroid/location/LocalListenerHelper;->mContext:Landroid/content/Context;

    #@f
    .line 44
    iput-object p2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@11
    .line 41
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p1, "listener":Ljava/lang/Object;, "TTListener;"
    const/4 v5, 0x0

    #@1
    .line 48
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 49
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@6
    monitor-enter v3

    #@7
    .line 52
    :try_start_0
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@9
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 55
    :try_start_1
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->registerWithServer()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result v1

    #@13
    .line 60
    .local v1, "registeredWithService":Z
    if-nez v1, :cond_0

    #@15
    .line 61
    :try_start_2
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@17
    const-string/jumbo v4, "Unable to register listener transport."

    #@1a
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    monitor-exit v3

    #@1e
    .line 62
    return v5

    #@1f
    .line 56
    .end local v1    # "registeredWithService":Z
    :catch_0
    move-exception v0

    #@20
    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@22
    const-string/jumbo v4, "Error handling first listener."

    #@25
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    monitor-exit v3

    #@29
    .line 58
    return v5

    #@2a
    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_4
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@2c
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 66
    const/4 v2, 0x1

    #@33
    monitor-exit v3

    #@34
    return v2

    #@35
    .line 68
    :cond_1
    :try_start_5
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@37
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3a
    move-result v2

    #@3b
    monitor-exit v3

    #@3c
    return v2

    #@3d
    .line 49
    :catchall_0
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2
.end method

.method protected foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V
    .locals 6
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
    .line 100
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p1, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v5, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@2
    monitor-enter v5

    #@3
    .line 101
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@5
    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@7
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .local v3, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<TTListener;>;"
    monitor-exit v5

    #@b
    .line 103
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    .line 105
    .local v1, "listener":Ljava/lang/Object;, "TTListener;"
    :try_start_1
    invoke-interface {p1, v1}, Landroid/location/LocalListenerHelper$ListenerOperation;->execute(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1c
    goto :goto_0

    #@1d
    .line 106
    :catch_0
    move-exception v0

    #@1e
    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@20
    const-string/jumbo v5, "Error in monitored listener."

    #@23
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0

    #@27
    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/lang/Object;, "TTListener;"
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    .end local v3    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<TTListener;>;"
    :catchall_0
    move-exception v4

    #@28
    monitor-exit v5

    #@29
    throw v4

    #@2a
    .line 98
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<TTListener;>;"
    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 95
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
    .line 73
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p1, "listener":Ljava/lang/Object;, "TTListener;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 74
    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@5
    monitor-enter v4

    #@6
    .line 75
    :try_start_0
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@8
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    .line 76
    .local v2, "removed":Z
    if-eqz v2, :cond_1

    #@e
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    #@10
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v1

    #@14
    .line 77
    :goto_0
    if-eqz v1, :cond_0

    #@16
    .line 79
    :try_start_1
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->unregisterFromServer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    :cond_0
    :goto_1
    monitor-exit v4

    #@1a
    .line 72
    return-void

    #@1b
    .line 76
    :cond_1
    const/4 v1, 0x0

    #@1c
    .local v1, "isLastRemoved":Z
    goto :goto_0

    #@1d
    .line 80
    .end local v1    # "isLastRemoved":Z
    :catch_0
    move-exception v0

    #@1e
    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    #@20
    const-string/jumbo v5, "Error handling last listener removal"

    #@23
    invoke-static {v3, v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    goto :goto_1

    #@27
    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "removed":Z
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v4

    #@29
    throw v3
.end method

.method protected abstract unregisterFromServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
