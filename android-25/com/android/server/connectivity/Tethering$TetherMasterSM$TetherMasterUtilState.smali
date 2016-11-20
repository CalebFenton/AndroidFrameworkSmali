.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@0
    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .locals 14
    .param p1, "tryCell"    # Z

    #@0
    .prologue
    .line 1382
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@4
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@7
    move-result-object v0

    #@8
    .line 1383
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v9, -0x1

    #@9
    .line 1384
    .local v9, "upType":I
    const/4 v1, 0x0

    #@a
    .line 1386
    .local v1, "iface":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@c
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@e
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@11
    .line 1388
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@13
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@15
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@18
    move-result-object v11

    #@19
    monitor-enter v11

    #@1a
    .line 1396
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1c
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@1e
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    #@21
    move-result-object v10

    #@22
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v6

    #@26
    .local v6, "netType$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v10

    #@2a
    if-eqz v10, :cond_1

    #@2c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Ljava/lang/Integer;

    #@32
    .line 1397
    .local v5, "netType":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@35
    move-result v10

    #@36
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@39
    move-result-object v2

    #@3a
    .line 1400
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    #@3c
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    #@3f
    move-result v10

    #@40
    if-eqz v10, :cond_0

    #@42
    .line 1401
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    move-result v9

    #@46
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "netType":Ljava/lang/Integer;
    :cond_1
    monitor-exit v11

    #@47
    .line 1415
    sparse-switch v9, :sswitch_data_0

    #@4a
    .line 1436
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()V

    #@4d
    .line 1440
    :cond_2
    :goto_0
    const/4 v7, 0x0

    #@4e
    .line 1441
    .local v7, "network":Landroid/net/Network;
    const/4 v10, -0x1

    #@4f
    if-eq v9, v10, :cond_5

    #@51
    .line 1442
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    #@54
    move-result-object v4

    #@55
    .line 1443
    .local v4, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v4, :cond_3

    #@57
    .line 1447
    const-string/jumbo v10, "Tethering"

    #@5a
    new-instance v11, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v12, "Finding IPv4 upstream interface on: "

    #@62
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v11

    #@66
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v11

    #@6a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v11

    #@6e
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 1449
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@74
    move-result-object v10

    #@75
    sget-object v11, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@77
    .line 1448
    invoke-static {v10, v11}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    #@7a
    move-result-object v3

    #@7b
    .line 1450
    .local v3, "ipv4Default":Landroid/net/RouteInfo;
    if-eqz v3, :cond_8

    #@7d
    .line 1451
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    .line 1452
    .local v1, "iface":Ljava/lang/String;
    const-string/jumbo v10, "Tethering"

    #@84
    new-instance v11, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v12, "Found interface "

    #@8c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v11

    #@90
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@93
    move-result-object v12

    #@94
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v11

    #@98
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v11

    #@9c
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 1458
    .end local v1    # "iface":Ljava/lang/String;
    .end local v3    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    #@a1
    .line 1459
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    #@a4
    move-result-object v7

    #@a5
    .line 1460
    .local v7, "network":Landroid/net/Network;
    if-nez v7, :cond_4

    #@a7
    .line 1461
    const-string/jumbo v10, "Tethering"

    #@aa
    new-instance v11, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v12, "No Network for upstream type "

    #@b2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v11

    #@b6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v11

    #@ba
    const-string/jumbo v12, "!"

    #@bd
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v11

    #@c1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v11

    #@c5
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 1463
    :cond_4
    invoke-virtual {p0, v7, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V

    #@cb
    .line 1466
    .end local v4    # "linkProperties":Landroid/net/LinkProperties;
    .end local v7    # "network":Landroid/net/Network;
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    #@ce
    .line 1467
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@d0
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@d2
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@d5
    move-result-object v10

    #@d6
    invoke-virtual {v10, v7}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->lookup(Landroid/net/Network;)Landroid/net/NetworkState;

    #@d9
    move-result-object v8

    #@da
    .line 1468
    .local v8, "ns":Landroid/net/NetworkState;
    if-eqz v8, :cond_9

    #@dc
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@de
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@e0
    invoke-virtual {v10, v8}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    #@e3
    move-result v10

    #@e4
    if-eqz v10, :cond_9

    #@e6
    .line 1472
    invoke-virtual {p0, v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    #@e9
    .line 1381
    :cond_6
    :goto_2
    return-void

    #@ea
    .line 1388
    .end local v6    # "netType$iterator":Ljava/util/Iterator;
    .end local v8    # "ns":Landroid/net/NetworkState;
    .local v1, "iface":Ljava/lang/String;
    :catchall_0
    move-exception v10

    #@eb
    monitor-exit v11

    #@ec
    throw v10

    #@ed
    .line 1419
    .restart local v6    # "netType$iterator":Ljava/util/Iterator;
    :sswitch_0
    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    #@f0
    goto/16 :goto_0

    #@f2
    .line 1422
    :sswitch_1
    if-eqz p1, :cond_7

    #@f4
    .line 1423
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@f6
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@f8
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)I

    #@fb
    move-result v10

    #@fc
    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    #@ff
    move-result v10

    #@100
    .line 1422
    if-nez v10, :cond_2

    #@102
    .line 1426
    :cond_7
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@104
    const-wide/16 v12, 0x2710

    #@106
    const v11, 0x50004

    #@109
    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    #@10c
    goto/16 :goto_0

    #@10e
    .line 1454
    .restart local v3    # "ipv4Default":Landroid/net/RouteInfo;
    .restart local v4    # "linkProperties":Landroid/net/LinkProperties;
    .local v7, "network":Landroid/net/Network;
    :cond_8
    const-string/jumbo v10, "Tethering"

    #@111
    const-string/jumbo v11, "No IPv4 upstream interface, giving up."

    #@114
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@117
    goto :goto_1

    #@118
    .line 1473
    .end local v1    # "iface":Ljava/lang/String;
    .end local v3    # "ipv4Default":Landroid/net/RouteInfo;
    .end local v4    # "linkProperties":Landroid/net/LinkProperties;
    .end local v7    # "network":Landroid/net/Network;
    .restart local v8    # "ns":Landroid/net/NetworkState;
    :cond_9
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@11a
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@11c
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    #@11f
    move-result-object v10

    #@120
    if-nez v10, :cond_6

    #@122
    .line 1476
    const/4 v10, 0x0

    #@123
    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    #@126
    goto :goto_2

    #@127
    .line 1415
    nop

    #@128
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 1
    .param p1, "ns"    # Landroid/net/NetworkState;

    #@0
    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateUpstreamNetworkState(Landroid/net/NetworkState;)V

    #@9
    .line 1511
    return-void
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1504
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@4
    invoke-static {v2, p1}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;

    #@7
    .line 1505
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@9
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "sm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@1d
    .line 1506
    .local v0, "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    const v2, 0x50070

    #@20
    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@23
    goto :goto_0

    #@24
    .line 1502
    .end local v0    # "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1284
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 1481
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@4
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get3(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1482
    .local v0, "dnsServers":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    .line 1484
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 1493
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@16
    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@18
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v3, p1, v0}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 1480
    :goto_1
    return-void

    #@20
    .line 1486
    :cond_1
    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    goto :goto_0

    #@25
    .line 1494
    :catch_0
    move-exception v2

    #@26
    .line 1497
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Tethering"

    #@29
    const-string/jumbo v4, "Setting DNS forwarders failed!"

    #@2c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1498
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@31
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@33
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@36
    move-result-object v4

    #@37
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@3a
    goto :goto_1
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@3
    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@5
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1372
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@e
    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@10
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x0

    #@15
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    .line 1377
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1a
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1c
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@23
    .line 1378
    const/4 v1, 0x1

    #@24
    return v1

    #@25
    .line 1367
    :catch_0
    move-exception v0

    #@26
    .line 1368
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@28
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2a
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get10(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@31
    .line 1369
    return v3

    #@32
    .line 1373
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@33
    .line 1374
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@35
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@37
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get6(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@3e
    .line 1375
    return v3
.end method

.method protected turnOffUpstreamMobileConnection()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1336
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@3
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1337
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@b
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@13
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@1a
    .line 1338
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1c
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@1f
    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@21
    const/4 v1, -0x1

    #@22
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    #@25
    .line 1335
    return-void
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1345
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@4
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@6
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x1

    #@b
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1351
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@10
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@12
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@18
    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@1a
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    .line 1361
    :goto_0
    return v5

    #@22
    .line 1346
    :catch_0
    move-exception v0

    #@23
    .line 1347
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@25
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@27
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@2e
    .line 1348
    return v4

    #@2f
    .line 1352
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@30
    .line 1354
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@32
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@34
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@37
    move-result-object v2

    #@38
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V

    #@3b
    .line 1355
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@3d
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@3f
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@42
    move-result-object v2

    #@43
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@45
    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@47
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@4e
    goto :goto_0

    #@4f
    .line 1356
    :catch_2
    move-exception v1

    #@50
    .line 1357
    .local v1, "ee":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@52
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@54
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get9(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@57
    move-result-object v3

    #@58
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@5b
    .line 1358
    return v4
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .locals 6
    .param p1, "apnType"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1288
    const/4 v2, -0x1

    #@3
    if-ne p1, v2, :cond_0

    #@5
    return v4

    #@6
    .line 1290
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@8
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    #@b
    move-result v2

    #@c
    if-eq p1, v2, :cond_1

    #@e
    .line 1293
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()V

    #@11
    .line 1296
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@13
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@16
    move-result-object v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 1298
    return v5

    #@1a
    .line 1301
    :cond_2
    packed-switch p1, :pswitch_data_0

    #@1d
    .line 1308
    :pswitch_0
    return v4

    #@1e
    .line 1305
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@20
    invoke-static {v2, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    #@23
    .line 1311
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    #@25
    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    #@28
    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    #@2b
    move-result-object v0

    #@2c
    .line 1313
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/4 v2, 0x4

    #@2d
    if-ne p1, v2, :cond_3

    #@2f
    .line 1314
    const/16 v2, 0xd

    #@31
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    #@34
    move-result-object v2

    #@35
    .line 1315
    const/4 v3, 0x2

    #@36
    .line 1314
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    #@39
    .line 1319
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    #@3c
    move-result-object v1

    #@3d
    .line 1323
    .local v1, "mobileUpstreamRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@3f
    new-instance v3, Landroid/net/ConnectivityManager$NetworkCallback;

    #@41
    invoke-direct {v3}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #@44
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@47
    .line 1330
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@49
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@4b
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@4e
    move-result-object v2

    #@4f
    .line 1331
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@51
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@54
    move-result-object v3

    #@55
    .line 1330
    invoke-virtual {v2, v1, v3, v4, p1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;II)V

    #@58
    .line 1332
    return v5

    #@59
    .line 1317
    .end local v1    # "mobileUpstreamRequest":Landroid/net/NetworkRequest;
    :cond_3
    const/16 v2, 0xc

    #@5b
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    #@5e
    goto :goto_0

    #@5f
    .line 1301
    nop

    #@60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
