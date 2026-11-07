.class Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;
.super Landroid/net/wifi/IWifiLowLatencyLockListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnWifiLowLatencyLockProxy"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$mowm3XLOq3tXowu77W8-aDKdCe0(Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->lambda$onActiveUsersChanged$2([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$slHSy-KvaoCf5Q666cRV0qzohZg(Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->lambda$onOwnershipChanged$1([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ySR4dt81Kc-MB_vku0dCAXzsrrE(Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->lambda$onActivatedStateChanged$0(Z)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;

    .line 8278
    invoke-direct {p0}, Landroid/net/wifi/IWifiLowLatencyLockListener$Stub;-><init>()V

    .line 8279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8280
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8281
    iput-object p1, p0, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8282
    iput-object p2, p0, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->mListener:Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;

    .line 8283
    return-void
.end method

.method private synthetic blacklist lambda$onActivatedStateChanged$0(Z)V
    .registers 3
    .param p1, "activated"    # Z

    .line 8288
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->mListener:Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;->onActivatedStateChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onActiveUsersChanged$2([I)V
    .registers 3
    .param p1, "activeUids"    # [I

    .line 8302
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->mListener:Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;->onActiveUsersChanged([I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOwnershipChanged$1([I)V
    .registers 3
    .param p1, "ownerUids"    # [I

    .line 8295
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->mListener:Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;->onOwnershipChanged([I)V

    return-void
.end method


# virtual methods
.method public blacklist onActivatedStateChanged(Z)V
    .registers 4
    .param p1, "activated"    # Z

    .line 8287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8288
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8290
    return-void
.end method

.method public blacklist onActiveUsersChanged([I)V
    .registers 4
    .param p1, "activeUids"    # [I

    .line 8301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8302
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8303
    return-void
.end method

.method public blacklist onOwnershipChanged([I)V
    .registers 4
    .param p1, "ownerUids"    # [I

    .line 8294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8295
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8297
    return-void
.end method
