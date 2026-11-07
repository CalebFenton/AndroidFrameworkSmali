.class Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;
.super Landroid/net/wifi/ICoexCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager$CoexCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoexCallbackProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/WifiManager$CoexCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 5776
    invoke-direct {p0}, Landroid/net/wifi/ICoexCallback$Stub;-><init>()V

    .line 5772
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mLock:Ljava/lang/Object;

    .line 5777
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5778
    iput-object v0, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$CoexCallback;

    .line 5779
    return-void
.end method

.method static synthetic blacklist lambda$onCoexUnsafeChannelsChanged$0(Landroid/net/wifi/WifiManager$CoexCallback;Ljava/util/List;I)V
    .registers 3
    .param p0, "callback"    # Landroid/net/wifi/WifiManager$CoexCallback;
    .param p1, "unsafeChannels"    # Ljava/util/List;
    .param p2, "restrictions"    # I

    .line 5811
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager$CoexCallback;->onCoexUnsafeChannelsChanged(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method blacklist cleanUpProxy()V
    .registers 3

    .line 5790
    iget-object v0, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5791
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5792
    iput-object v1, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$CoexCallback;

    .line 5793
    monitor-exit v0

    .line 5794
    return-void

    .line 5793
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method blacklist initProxy(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$CoexCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$CoexCallback;

    .line 5783
    iget-object v0, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5784
    :try_start_3
    iput-object p1, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5785
    iput-object p2, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$CoexCallback;

    .line 5786
    monitor-exit v0

    .line 5787
    return-void

    .line 5786
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist onCoexUnsafeChannelsChanged(Ljava/util/List;I)V
    .registers 6
    .param p2, "restrictions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/CoexUnsafeChannel;",
            ">;I)V"
        }
    .end annotation

    .line 5802
    .local p1, "unsafeChannels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/CoexUnsafeChannel;>;"
    iget-object v0, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5803
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5804
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$CoexCallback;

    .line 5805
    .local v2, "callback":Landroid/net/wifi/WifiManager$CoexCallback;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 5806
    if-eqz v1, :cond_19

    if-nez v2, :cond_d

    goto :goto_19

    .line 5809
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5810
    new-instance v0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1, p2}, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$CoexCallback;Ljava/util/List;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5812
    return-void

    .line 5807
    :cond_19
    :goto_19
    return-void

    .line 5805
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/net/wifi/WifiManager$CoexCallback;
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method
