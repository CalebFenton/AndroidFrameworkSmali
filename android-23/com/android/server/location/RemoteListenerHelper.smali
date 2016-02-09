.class abstract Lcom/android/server/location/RemoteListenerHelper;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;,
        Lcom/android/server/location/RemoteListenerHelper$LinkedListener;,
        Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final RESULT_GPS_LOCATION_DISABLED:I = 0x3

.field protected static final RESULT_INTERNAL_ERROR:I = 0x4

.field protected static final RESULT_NOT_AVAILABLE:I = 0x1

.field protected static final RESULT_NOT_SUPPORTED:I = 0x2

.field protected static final RESULT_SUCCESS:I = 0x0

.field protected static final RESULT_UNKNOWN:I = 0x5


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasIsSupported:Z

.field private mIsRegistered:Z

.field private mIsSupported:Z

.field private mLastReportedResult:I

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/RemoteListenerHelper",
            "<TT",
            "Listener;",
            ">.",
            "LinkedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@a
    .line 52
    const/4 v0, 0x5

    #@b
    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    #@d
    .line 55
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 56
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    #@12
    .line 57
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    #@14
    .line 54
    return-void
.end method

.method private calculateCurrentResultUnsafe()I
    .locals 1

    #@0
    .prologue
    .line 200
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 201
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@e
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 205
    :cond_1
    const/4 v0, 0x5

    #@15
    return v0

    #@16
    .line 207
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    #@18
    if-nez v0, :cond_3

    #@1a
    .line 208
    const/4 v0, 0x2

    #@1b
    return v0

    #@1c
    .line 210
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_4

    #@22
    .line 211
    const/4 v0, 0x3

    #@23
    return v0

    #@24
    .line 213
    :cond_4
    const/4 v0, 0x0

    #@25
    return v0
.end method

.method private foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 172
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "linkedListener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    #@16
    .line 173
    .local v0, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    invoke-virtual {v0}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getUnderlyingListener()Landroid/os/IInterface;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {p0, v2, p1}, Lcom/android/server/location/RemoteListenerHelper;->post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    #@1d
    goto :goto_0

    #@1e
    .line 171
    .end local v0    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :cond_0
    return-void
.end method

.method private post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 178
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p2, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    if-eqz p2, :cond_0

    #@2
    .line 179
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    #@4
    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    #@6
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 177
    :cond_0
    return-void
.end method

.method private tryRegister()Z
    .locals 1

    #@0
    .prologue
    .line 184
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 185
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->registerWithService()Z

    #@7
    move-result v0

    #@8
    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    #@a
    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    #@c
    return v0
.end method

.method private tryUnregister()V
    .locals 1

    #@0
    .prologue
    .line 191
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 192
    return-void

    #@5
    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->unregisterFromService()V

    #@8
    .line 195
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    #@b
    .line 190
    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/IInterface;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 61
    const-string/jumbo v4, "Attempted to register a \'null\' listener."

    #@5
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 62
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 63
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    #@e
    invoke-direct {v1, p0, p1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;)V

    #@11
    .line 64
    .local v1, "deathListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@13
    monitor-enter v5

    #@14
    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@16
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    monitor-exit v5

    #@1d
    .line 67
    return v6

    #@1e
    .line 70
    :cond_0
    const/4 v4, 0x0

    #@1f
    :try_start_1
    invoke-interface {v0, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 77
    :try_start_2
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@24
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 81
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_1

    #@2d
    .line 82
    const/4 v3, 0x1

    #@2e
    .line 98
    .local v3, "result":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    #@31
    move-result-object v4

    #@32
    invoke-direct {p0, p1, v4}, Lcom/android/server/location/RemoteListenerHelper;->post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    monitor-exit v5

    #@36
    .line 100
    return v6

    #@37
    .line 71
    .end local v3    # "result":I
    :catch_0
    move-exception v2

    #@38
    .line 74
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    #@3a
    const-string/jumbo v6, "Remote listener already died."

    #@3d
    invoke-static {v4, v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    monitor-exit v5

    #@41
    .line 75
    return v7

    #@42
    .line 83
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_4
    iget-boolean v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    #@44
    if-eqz v4, :cond_2

    #@46
    iget-boolean v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    #@48
    if-eqz v4, :cond_3

    #@4a
    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    #@4d
    move-result v4

    #@4e
    if-nez v4, :cond_4

    #@50
    .line 86
    const/4 v3, 0x3

    #@51
    .restart local v3    # "result":I
    goto :goto_0

    #@52
    .line 84
    .end local v3    # "result":I
    :cond_3
    const/4 v3, 0x2

    #@53
    .line 83
    .restart local v3    # "result":I
    goto :goto_0

    #@54
    .line 87
    .end local v3    # "result":I
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()Z

    #@57
    move-result v4

    #@58
    if-nez v4, :cond_5

    #@5a
    .line 90
    const/4 v3, 0x4

    #@5b
    .restart local v3    # "result":I
    goto :goto_0

    #@5c
    .line 91
    .end local v3    # "result":I
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    #@5e
    if-eqz v4, :cond_6

    #@60
    iget-boolean v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@62
    if-eqz v4, :cond_6

    #@64
    .line 92
    const/4 v3, 0x0

    #@65
    .restart local v3    # "result":I
    goto :goto_0

    #@66
    .end local v3    # "result":I
    :cond_6
    monitor-exit v5

    #@67
    .line 96
    return v6

    #@68
    .line 64
    :catchall_0
    move-exception v4

    #@69
    monitor-exit v5

    #@6a
    throw v4
.end method

.method protected foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@2
    monitor-enter v0

    #@3
    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 128
    return-void

    #@8
    .line 129
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method protected abstract getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract isAvailableInPlatform()Z
.end method

.method protected abstract isGpsEnabled()Z
.end method

.method protected abstract registerWithService()Z
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const-string/jumbo v2, "Attempted to remove a \'null\' listener."

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 105
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 107
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@c
    monitor-enter v3

    #@d
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@f
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    #@15
    .line 109
    .local v1, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@17
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 110
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v3

    #@21
    .line 113
    if-eqz v1, :cond_1

    #@23
    .line 114
    const/4 v2, 0x0

    #@24
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@27
    .line 103
    :cond_1
    return-void

    #@28
    .line 107
    .end local v1    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method

.method protected setSupported(Z)V
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 135
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 136
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    #@6
    .line 137
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 134
    return-void

    #@a
    .line 135
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method protected tryUpdateRegistrationWithService()Z
    .locals 4

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    const/4 v3, 0x1

    #@1
    .line 142
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@3
    monitor-enter v2

    #@4
    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 145
    return v3

    #@f
    .line 147
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@11
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    monitor-exit v2

    #@18
    .line 148
    return v3

    #@19
    .line 150
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    monitor-exit v2

    #@20
    .line 152
    return v3

    #@21
    .line 154
    :cond_2
    const/4 v1, 0x4

    #@22
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    #@25
    move-result-object v0

    #@26
    .line 155
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    invoke-direct {p0, v0}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    .line 156
    const/4 v1, 0x0

    #@2a
    monitor-exit v2

    #@2b
    return v1

    #@2c
    .line 142
    .end local v0    # "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit v2

    #@2e
    throw v1
.end method

.method protected abstract unregisterFromService()V
.end method

.method protected updateResult()V
    .locals 3

    #@0
    .prologue
    .line 161
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    #@2
    monitor-enter v2

    #@3
    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->calculateCurrentResultUnsafe()I

    #@6
    move-result v0

    #@7
    .line 163
    .local v0, "newResult":I
    iget v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-ne v1, v0, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 164
    return-void

    #@d
    .line 166
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    #@10
    move-result-object v1

    #@11
    invoke-direct {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    #@14
    .line 167
    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit v2

    #@17
    .line 160
    return-void

    #@18
    .line 161
    .end local v0    # "newResult":I
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method
