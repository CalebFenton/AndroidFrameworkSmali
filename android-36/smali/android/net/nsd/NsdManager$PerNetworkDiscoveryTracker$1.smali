.class Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;


# direct methods
.method constructor blacklist <init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V
    .registers 2
    .param p1, "this$1"    # Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 515
    iput-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;

    .line 518
    new-instance v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v3, v2, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mBaseListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v4, v2, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mBaseExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    move-object v2, p1

    .end local p1    # "network":Landroid/net/Network;
    .local v2, "network":Landroid/net/Network;
    invoke-direct/range {v0 .. v5}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;Landroid/net/Network;Landroid/net/nsd/NsdManager$DiscoveryListener;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager-IA;)V

    move-object v11, v0

    .line 520
    .local v11, "wrappedListener":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;
    iget-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object p1, p1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v6, p1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->this$0:Landroid/net/nsd/NsdManager;

    iget-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v7, p1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mServiceType:Ljava/lang/String;

    iget-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget v8, p1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mProtocolType:I

    new-instance v10, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda0;-><init>()V

    move-object v9, v2

    .end local v2    # "network":Landroid/net/Network;
    .local v9, "network":Landroid/net/Network;
    invoke-virtual/range {v6 .. v11}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/Network;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 526
    .end local v9    # "network":Landroid/net/Network;
    .restart local v2    # "network":Landroid/net/Network;
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 530
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v0, v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;

    .line 531
    .local v0, "listener":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;
    if-nez v0, :cond_d

    return-void

    .line 532
    :cond_d
    invoke-virtual {v0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->notifyAllServicesLost()V

    .line 534
    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v1, v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->this$0:Landroid/net/nsd/NsdManager;

    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 535
    return-void
.end method
