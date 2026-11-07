.class Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;
.super Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProvisioningCallbackProxy"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Q9zxidGRofC5ckozjq693539POg(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->lambda$onProvisioningComplete$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jO7NKhERqg3YWC6kJmihCpeNmWE(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->lambda$onProvisioningFailure$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ppHczKDuHY6Rk3wr-8wHWGV6Hfg(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->lambda$onProvisioningStatus$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/hotspot2/ProvisioningCallback;

    .line 8934
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;-><init>()V

    .line 8935
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8936
    iput-object p2, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    .line 8937
    return-void
.end method

.method private synthetic blacklist lambda$onProvisioningComplete$2()V
    .registers 2

    .line 8951
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningComplete()V

    return-void
.end method

.method private synthetic blacklist lambda$onProvisioningFailure$1(I)V
    .registers 3
    .param p1, "status"    # I

    .line 8946
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningFailure(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onProvisioningStatus$0(I)V
    .registers 3
    .param p1, "status"    # I

    .line 8941
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningStatus(I)V

    return-void
.end method


# virtual methods
.method public blacklist onProvisioningComplete()V
    .registers 3

    .line 8951
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8952
    return-void
.end method

.method public greylist-max-o onProvisioningFailure(I)V
    .registers 4
    .param p1, "status"    # I

    .line 8946
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8947
    return-void
.end method

.method public greylist-max-o onProvisioningStatus(I)V
    .registers 4
    .param p1, "status"    # I

    .line 8941
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8942
    return-void
.end method
