.class public abstract Lcom/android/internal/listeners/ListenerTransportManager;
.super Ljava/lang/Object;
.source "ListenerTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TTransport::",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mRegistrations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference<",
            "TTTransport;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "allowServerSideTransportRemoval"    # Z

    .line 40
    .local p0, "this":Lcom/android/internal/listeners/ListenerTransportManager;, "Lcom/android/internal/listeners/ListenerTransportManager<TTTransport;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_d

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    goto :goto_14

    .line 49
    :cond_d
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    .line 51
    :goto_14
    return-void
.end method


# virtual methods
.method public final blacklist addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTTransport;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/internal/listeners/ListenerTransportManager;, "Lcom/android/internal/listeners/ListenerTransportManager<TTTransport;>;"
    .local p2, "transport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_32

    .line 62
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 63
    .local v1, "oldTransportRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TTTransport;>;"
    if-eqz v1, :cond_14

    .line 64
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/listeners/ListenerTransport;

    .local v2, "oldTransport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    goto :goto_15

    .line 66
    .end local v2    # "oldTransport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    :cond_14
    const/4 v2, 0x0

    .line 69
    .restart local v2    # "oldTransport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    :goto_15
    if-nez v2, :cond_1b

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/internal/listeners/ListenerTransportManager;->registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V

    goto :goto_21

    .line 72
    :cond_1b
    invoke-virtual {p0, p2, v2}, Lcom/android/internal/listeners/ListenerTransportManager;->registerTransport(Lcom/android/internal/listeners/ListenerTransport;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 73
    invoke-interface {v2}, Lcom/android/internal/listeners/ListenerTransport;->unregister()V

    .line 75
    :goto_21
    iget-object v3, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    nop

    .end local v1    # "oldTransportRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TTTransport;>;"
    .end local v2    # "oldTransport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    monitor-exit v0

    .line 79
    nop

    .line 80
    return-void

    .line 76
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    .end local p0    # "this":Lcom/android/internal/listeners/ListenerTransportManager;, "Lcom/android/internal/listeners/ListenerTransportManager<TTTransport;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "transport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    :try_start_31
    throw v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_32} :catch_32

    .line 77
    .restart local p0    # "this":Lcom/android/internal/listeners/ListenerTransportManager;, "Lcom/android/internal/listeners/ListenerTransportManager<TTTransport;>;"
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "transport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    :catch_32
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected abstract blacklist registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTransport;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected blacklist registerTransport(Lcom/android/internal/listeners/ListenerTransport;Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTransport;TTTransport;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/android/internal/listeners/ListenerTransportManager;, "Lcom/android/internal/listeners/ListenerTransportManager<TTTransport;>;"
    .local p1, "transport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    .local p2, "oldTransport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    invoke-virtual {p0, p1}, Lcom/android/internal/listeners/ListenerTransportManager;->registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V

    .line 117
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/internal/listeners/ListenerTransportManager;->unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_8

    .line 126
    nop

    .line 127
    return-void

    .line 118
    :catch_8
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/internal/listeners/ListenerTransportManager;->unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 124
    goto :goto_11

    .line 122
    :catch_d
    move-exception v1

    .line 123
    .local v1, "suppressed":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Landroid/os/RemoteException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 125
    .end local v1    # "suppressed":Landroid/os/RemoteException;
    :goto_11
    throw v0
.end method

.method public final blacklist removeListener(Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 87
    .local p0, "this":Lcom/android/internal/listeners/ListenerTransportManager;, "Lcom/android/internal/listeners/ListenerTransportManager<TTTransport;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_21

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 91
    .local v1, "transportRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TTTransport;>;"
    if-eqz v1, :cond_1b

    .line 92
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/listeners/ListenerTransport;

    .line 93
    .local v2, "transport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    if-eqz v2, :cond_1b

    .line 94
    invoke-interface {v2}, Lcom/android/internal/listeners/ListenerTransport;->unregister()V

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/internal/listeners/ListenerTransportManager;->unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V

    .line 98
    .end local v1    # "transportRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TTTransport;>;"
    .end local v2    # "transport":Lcom/android/internal/listeners/ListenerTransport;, "TTTransport;"
    :cond_1b
    monitor-exit v0

    .line 101
    nop

    .line 102
    return-void

    .line 98
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    .end local p0    # "this":Lcom/android/internal/listeners/ListenerTransportManager;, "Lcom/android/internal/listeners/ListenerTransportManager<TTTransport;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :try_start_20
    throw v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_21} :catch_21

    .line 99
    .restart local p0    # "this":Lcom/android/internal/listeners/ListenerTransportManager;, "Lcom/android/internal/listeners/ListenerTransportManager<TTTransport;>;"
    .restart local p1    # "key":Ljava/lang/Object;
    :catch_21
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected abstract blacklist unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTransport;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
