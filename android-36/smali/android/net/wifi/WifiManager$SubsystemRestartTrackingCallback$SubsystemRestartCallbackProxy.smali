.class Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
.super Landroid/net/wifi/ISubsystemRestartCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubsystemRestartCallbackProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 5256
    invoke-direct {p0}, Landroid/net/wifi/ISubsystemRestartCallback$Stub;-><init>()V

    .line 5248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    .line 5257
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5258
    iput-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 5259
    return-void
.end method


# virtual methods
.method blacklist cleanUpProxy()V
    .registers 3

    .line 5270
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5271
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5272
    iput-object v1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 5273
    monitor-exit v0

    .line 5274
    return-void

    .line 5273
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method blacklist initProxy(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 5263
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5264
    :try_start_3
    iput-object p1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5265
    iput-object p2, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 5266
    monitor-exit v0

    .line 5267
    return-void

    .line 5266
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist onSubsystemRestarted()V
    .registers 4

    .line 5295
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5296
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5297
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 5298
    .local v2, "callback":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    .line 5299
    if-eqz v1, :cond_1c

    if-nez v2, :cond_d

    goto :goto_1c

    .line 5302
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5303
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5304
    return-void

    .line 5300
    :cond_1c
    :goto_1c
    return-void

    .line 5298
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist onSubsystemRestarting()V
    .registers 4

    .line 5280
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5281
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5282
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 5283
    .local v2, "callback":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    .line 5284
    if-eqz v1, :cond_1c

    if-nez v2, :cond_d

    goto :goto_1c

    .line 5287
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5288
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5289
    return-void

    .line 5285
    :cond_1c
    :goto_1c
    return-void

    .line 5283
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
