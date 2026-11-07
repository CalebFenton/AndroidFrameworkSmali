.class Landroid/telephony/BinderCacheManager$BinderDeathTracker;
.super Ljava/lang/Object;
.source "BinderCacheManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BinderCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderDeathTracker"
.end annotation


# instance fields
.field private final blacklist mConnection:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/telephony/BinderCacheManager;Landroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    .local p2, "connection":Landroid/os/IInterface;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    .line 67
    iput-object p2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    .line 69
    :try_start_c
    iget-object p1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    .line 72
    goto :goto_18

    .line 70
    :catch_17
    move-exception p1

    .line 73
    :goto_18
    return-void
.end method


# virtual methods
.method public blacklist addListener(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 76
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 77
    :try_start_3
    invoke-virtual {p0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->isAlive()Z

    move-result v1

    if-nez v1, :cond_c

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 78
    :cond_c
    iget-object v1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 80
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist binderDied()V
    .registers 5

    .line 92
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 93
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_29

    .line 96
    :try_start_13
    iget-object v2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1d
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_1d} :catch_1e
    .catchall {:try_start_13 .. :try_end_1d} :catchall_29

    .line 99
    goto :goto_1f

    .line 97
    :catch_1e
    move-exception v2

    .line 100
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_29

    .line 101
    new-instance v0, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    return-void

    .line 100
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist getConnection()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 108
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    return-object v0
.end method

.method public blacklist isAlive()Z
    .registers 2

    .line 115
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist removeListener(Ljava/lang/Object;)V
    .registers 4
    .param p1, "runnableKey"    # Ljava/lang/Object;

    .line 84
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
