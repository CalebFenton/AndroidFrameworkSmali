.class Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpstreamNetworkMonitor"
.end annotation


# instance fields
.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    #@0
    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1445
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@c
    .line 1444
    return-void
.end method


# virtual methods
.method processLinkPropertiesChanged(Landroid/net/NetworkState;)Z
    .locals 5
    .param p1, "networkState"    # Landroid/net/NetworkState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1483
    if-eqz p1, :cond_0

    #@3
    .line 1484
    iget-object v2, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@5
    if-nez v2, :cond_1

    #@7
    .line 1486
    :cond_0
    return v4

    #@8
    .line 1485
    :cond_1
    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1489
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@e
    iget-object v3, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@10
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 1491
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@15
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    if-eqz v2, :cond_3

    #@1b
    .line 1492
    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@1d
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "ifname$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_3

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/lang/String;

    #@31
    .line 1493
    .local v0, "ifname":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@33
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_2

    #@3d
    .line 1494
    const/4 v2, 0x1

    #@3e
    return v2

    #@3f
    .line 1498
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "ifname$iterator":Ljava/util/Iterator;
    :cond_3
    return v4
.end method

.method processNetworkLost(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1502
    if-eqz p1, :cond_0

    #@2
    .line 1503
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1501
    :cond_0
    return-void
.end method

.method start()V
    .locals 3

    #@0
    .prologue
    .line 1450
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->stop()V

    #@3
    .line 1452
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;

    #@5
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@7
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/Tethering;)V

    #@a
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@c
    .line 1453
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@e
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@14
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@17
    .line 1455
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    #@19
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    #@1c
    .line 1456
    const/4 v2, 0x0

    #@1d
    .line 1455
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    #@20
    move-result-object v1

    #@21
    .line 1457
    const/16 v2, 0xd

    #@23
    .line 1455
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    #@26
    move-result-object v1

    #@27
    .line 1458
    const/4 v2, 0x2

    #@28
    .line 1455
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    #@2f
    move-result-object v0

    #@30
    .line 1460
    .local v0, "dunTetheringRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;

    #@32
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@34
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/Tethering;)V

    #@37
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@39
    .line 1461
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@3b
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@3e
    move-result-object v1

    #@3f
    .line 1462
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@41
    .line 1461
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@44
    .line 1449
    return-void
.end method

.method stop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1466
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1467
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@7
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@d
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@10
    .line 1468
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@12
    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1472
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@18
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@1e
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@21
    .line 1473
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@23
    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@25
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@28
    .line 1465
    return-void
.end method
