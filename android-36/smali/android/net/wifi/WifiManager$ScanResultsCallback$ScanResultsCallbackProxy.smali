.class Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;
.super Landroid/net/wifi/IScanResultsCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager$ScanResultsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanResultsCallbackProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/WifiManager$ScanResultsCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 9884
    invoke-direct {p0}, Landroid/net/wifi/IScanResultsCallback$Stub;-><init>()V

    .line 9880
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mLock:Ljava/lang/Object;

    .line 9885
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$ScanResultsCallback;

    .line 9886
    iput-object v0, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9887
    return-void
.end method


# virtual methods
.method blacklist cleanUpProxy()V
    .registers 3

    .line 9898
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9899
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9900
    iput-object v1, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$ScanResultsCallback;

    .line 9901
    monitor-exit v0

    .line 9902
    return-void

    .line 9901
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method blacklist initProxy(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ScanResultsCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$ScanResultsCallback;

    .line 9891
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9892
    :try_start_3
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9893
    iput-object p2, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$ScanResultsCallback;

    .line 9894
    monitor-exit v0

    .line 9895
    return-void

    .line 9894
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist onScanResultsAvailable()V
    .registers 4

    .line 9908
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9909
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9910
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$ScanResultsCallback;

    .line 9911
    .local v2, "callback":Landroid/net/wifi/WifiManager$ScanResultsCallback;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    .line 9912
    if-eqz v2, :cond_1c

    if-nez v1, :cond_d

    goto :goto_1c

    .line 9915
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9916
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$ScanResultsCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9917
    return-void

    .line 9913
    :cond_1c
    :goto_1c
    return-void

    .line 9911
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/net/wifi/WifiManager$ScanResultsCallback;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
