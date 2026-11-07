.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
.super Landroid/net/wifi/ILocalOnlyHotspotCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalOnlyHotspotObserverProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mObserver:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

.field private final greylist-max-o mWifiManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$c-DuilTtyL6F_d6dMn-xFiSEP0c(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/net/wifi/SoftApConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->lambda$onHotspotStarted$1(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hV0F1PvK3E2xz6F_AkaPf36yRKg(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/net/wifi/WifiManager;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->lambda$registered$0(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$npHDOzKSiN7s7V02zhHZsQZuW58(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->lambda$onHotspotStopped$2()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V
    .registers 5
    .param p1, "manager"    # Landroid/net/wifi/WifiManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "observer"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    .line 7494
    invoke-direct {p0}, Landroid/net/wifi/ILocalOnlyHotspotCallback$Stub;-><init>()V

    .line 7495
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    .line 7496
    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7497
    iput-object p3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mObserver:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    .line 7498
    return-void
.end method

.method private synthetic blacklist lambda$onHotspotStarted$1(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;

    .line 7517
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mObserver:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;->onStarted(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHotspotStopped$2()V
    .registers 2

    .line 7525
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mObserver:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;->onStopped()V

    return-void
.end method

.method private synthetic blacklist lambda$registered$0(Landroid/net/wifi/WifiManager;)V
    .registers 4
    .param p1, "manager"    # Landroid/net/wifi/WifiManager;

    .line 7505
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mObserver:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    new-instance v1, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;-><init>(Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;->onRegistered(Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;)V

    return-void
.end method


# virtual methods
.method public blacklist onHotspotFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 7531
    return-void
.end method

.method public blacklist onHotspotStarted(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;

    .line 7510
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 7511
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_b

    return-void

    .line 7513
    :cond_b
    if-nez p1, :cond_15

    .line 7514
    const-string v1, "WifiManager"

    const-string v2, "LocalOnlyHotspotObserverProxy: config cannot be null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7515
    return-void

    .line 7517
    :cond_15
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/net/wifi/SoftApConfiguration;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7518
    return-void
.end method

.method public blacklist onHotspotStopped()V
    .registers 4

    .line 7522
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 7523
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_b

    return-void

    .line 7525
    :cond_b
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7526
    return-void
.end method

.method public greylist-max-o registered()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7501
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 7502
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_b

    return-void

    .line 7504
    :cond_b
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7506
    return-void
.end method
