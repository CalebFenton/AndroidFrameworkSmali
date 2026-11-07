.class public Landroid/ranging/CapabilitiesListener;
.super Landroid/ranging/IRangingCapabilitiesCallback$Stub;
.source "CapabilitiesListener.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCachedCapabilities:Landroid/ranging/RangingCapabilities;

.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/ranging/RangingManager$RangingCapabilitiesCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsRegistered:Z

.field private final blacklist mRangingAdapter:Landroid/ranging/IRangingAdapter;


# direct methods
.method public static synthetic blacklist $r8$lambda$UzOkWEqVveFRLUoNFXhcDe38_T8(Landroid/ranging/CapabilitiesListener;Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/ranging/CapabilitiesListener;->lambda$sendCurrentCapabilities$0(Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-class v0, Landroid/ranging/CapabilitiesListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/ranging/CapabilitiesListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/ranging/IRangingAdapter;)V
    .registers 3
    .param p1, "rangingAdapter"    # Landroid/ranging/IRangingAdapter;

    .line 42
    invoke-direct {p0}, Landroid/ranging/IRangingCapabilitiesCallback$Stub;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/ranging/CapabilitiesListener;->mIsRegistered:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCallbackMap:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Landroid/ranging/CapabilitiesListener;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    .line 44
    return-void
.end method

.method private synthetic blacklist lambda$sendCurrentCapabilities$0(Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/ranging/RangingManager$RangingCapabilitiesCallback;

    .line 92
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCachedCapabilities:Landroid/ranging/RangingCapabilities;

    invoke-interface {p1, v0}, Landroid/ranging/RangingManager$RangingCapabilitiesCallback;->onRangingCapabilities(Landroid/ranging/RangingCapabilities;)V

    return-void
.end method

.method private blacklist onCapabilitiesUpdated(Landroid/ranging/RangingCapabilities;)V
    .registers 4
    .param p1, "rangingCapabilities"    # Landroid/ranging/RangingCapabilities;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_1
    iput-object p1, p0, Landroid/ranging/CapabilitiesListener;->mCachedCapabilities:Landroid/ranging/RangingCapabilities;

    .line 103
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/ranging/RangingManager$RangingCapabilitiesCallback;

    .line 104
    .local v1, "cb":Landroid/ranging/RangingManager$RangingCapabilitiesCallback;
    invoke-direct {p0, v1}, Landroid/ranging/CapabilitiesListener;->sendCurrentCapabilities(Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V

    .line 105
    .end local v1    # "cb":Landroid/ranging/RangingManager$RangingCapabilitiesCallback;
    goto :goto_d

    .line 106
    :cond_1d
    monitor-exit p0

    .line 107
    return-void

    .line 106
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private blacklist sendCurrentCapabilities(Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/ranging/RangingManager$RangingCapabilitiesCallback;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCachedCapabilities:Landroid/ranging/RangingCapabilities;

    if-eqz v0, :cond_23

    .line 89
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 90
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_25

    .line 92
    .local v1, "identity":J
    :try_start_11
    new-instance v3, Landroid/ranging/CapabilitiesListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/ranging/CapabilitiesListener$$ExternalSyntheticLambda0;-><init>(Landroid/ranging/CapabilitiesListener;Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 94
    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    goto :goto_23

    .line 94
    :catchall_1d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    nop

    .end local p0    # "this":Landroid/ranging/CapabilitiesListener;
    .end local p1    # "callback":Landroid/ranging/RangingManager$RangingCapabilitiesCallback;
    throw v3

    .line 97
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/ranging/CapabilitiesListener;
    .restart local p1    # "callback":Landroid/ranging/RangingManager$RangingCapabilitiesCallback;
    :cond_23
    :goto_23
    monitor-exit p0

    .line 98
    return-void

    .line 97
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_25

    throw v0
.end method


# virtual methods
.method public blacklist onRangingCapabilities(Landroid/ranging/RangingCapabilities;)V
    .registers 2
    .param p1, "rangingCapabilities"    # Landroid/ranging/RangingCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Landroid/ranging/CapabilitiesListener;->onCapabilitiesUpdated(Landroid/ranging/RangingCapabilities;)V

    .line 113
    return-void
.end method

.method public blacklist register(Ljava/util/concurrent/Executor;Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/ranging/RangingManager$RangingCapabilitiesCallback;

    .line 49
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 50
    return-void

    .line 52
    :cond_9
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-boolean v0, p0, Landroid/ranging/CapabilitiesListener;->mIsRegistered:Z

    if-nez v0, :cond_28

    .line 56
    :try_start_12
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    invoke-interface {v0, p0}, Landroid/ranging/IRangingAdapter;->registerCapabilitiesCallback(Landroid/ranging/IRangingCapabilitiesCallback;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/ranging/CapabilitiesListener;->mIsRegistered:Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_1b

    .line 61
    goto :goto_2b

    .line 58
    :catch_1b
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/ranging/CapabilitiesListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register capabilities callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    invoke-direct {p0, p2}, Landroid/ranging/CapabilitiesListener;->sendCurrentCapabilities(Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V

    .line 65
    :goto_2b
    return-void
.end method

.method public blacklist unregister(Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/ranging/RangingManager$RangingCapabilitiesCallback;

    .line 68
    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 70
    monitor-exit p0

    return-void

    .line 72
    :cond_b
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Landroid/ranging/CapabilitiesListener;->mIsRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_34

    if-eqz v0, :cond_32

    .line 76
    :try_start_1c
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    invoke-interface {v0, p0}, Landroid/ranging/IRangingAdapter;->unregisterCapabilitiesCallback(Landroid/ranging/IRangingCapabilitiesCallback;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/ranging/CapabilitiesListener;->mIsRegistered:Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_24} :catch_25
    .catchall {:try_start_1c .. :try_end_24} :catchall_34

    .line 81
    goto :goto_32

    .line 78
    :catch_25
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_26
    sget-object v1, Landroid/ranging/CapabilitiesListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister capabilities callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/ranging/CapabilitiesListener;
    .end local p1    # "callback":Landroid/ranging/RangingManager$RangingCapabilitiesCallback;
    throw v1

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/ranging/CapabilitiesListener;
    .restart local p1    # "callback":Landroid/ranging/RangingManager$RangingCapabilitiesCallback;
    :cond_32
    :goto_32
    monitor-exit p0

    .line 84
    return-void

    .line 83
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_34

    throw v0
.end method
