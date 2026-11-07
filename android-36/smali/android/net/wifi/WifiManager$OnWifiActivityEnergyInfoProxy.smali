.class Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;
.super Landroid/net/wifi/IOnWifiActivityEnergyInfoListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnWifiActivityEnergyInfoProxy"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;

    .line 4396
    invoke-direct {p0}, Landroid/net/wifi/IOnWifiActivityEnergyInfoListener$Stub;-><init>()V

    .line 4391
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    .line 4397
    iput-object p1, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4398
    iput-object p2, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mListener:Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;

    .line 4399
    return-void
.end method

.method static synthetic blacklist lambda$onWifiActivityEnergyInfo$0(Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 2
    .param p0, "listener"    # Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 4416
    invoke-interface {p0, p1}, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;->onWifiActivityEnergyInfo(Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist onWifiActivityEnergyInfo(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 4405
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4406
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mListener:Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;

    if-nez v1, :cond_c

    goto :goto_22

    .line 4409
    :cond_c
    iget-object v1, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4410
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mListener:Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;

    .line 4412
    .local v2, "listener":Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4413
    iput-object v3, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->mListener:Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;

    .line 4414
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_24

    .line 4415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4416
    new-instance v0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4417
    return-void

    .line 4407
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "listener":Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;
    :cond_22
    :goto_22
    :try_start_22
    monitor-exit v0

    return-void

    .line 4414
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v1
.end method
