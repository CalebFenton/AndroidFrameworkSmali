.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherModeAliveState"
.end annotation


# instance fields
.field mTryCell:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@0
    .prologue
    .line 1640
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@5
    .line 1641
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@8
    .line 1640
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1645
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnMasterTetherSettings()Z

    #@4
    .line 1646
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@6
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@9
    .line 1647
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@b
    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->start()V

    #@14
    .line 1649
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@16
    .line 1650
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@18
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@1b
    .line 1651
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@1d
    if-eqz v1, :cond_0

    #@1f
    const/4 v0, 0x0

    #@20
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@22
    .line 1643
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1657
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffUpstreamMobileConnection()V

    #@4
    .line 1658
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@6
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@8
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->stop()V

    #@f
    .line 1659
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@11
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@14
    .line 1660
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    #@17
    .line 1661
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    #@1a
    .line 1655
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1666
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@5
    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@7
    iget v6, p1, Landroid/os/Message;->what:I

    #@9
    invoke-static {v5, p0, v6}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V

    #@c
    .line 1667
    const/4 v1, 0x1

    #@d
    .line 1668
    .local v1, "retValue":Z
    iget v5, p1, Landroid/os/Message;->what:I

    #@f
    packed-switch v5, :pswitch_data_0

    #@12
    .line 1763
    const/4 v1, 0x0

    #@13
    .line 1766
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    #@14
    .line 1670
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v2, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@18
    .line 1672
    .local v2, "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1a
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@21
    move-result v3

    #@22
    if-gez v3, :cond_1

    #@24
    .line 1673
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@26
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 1674
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2f
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->addActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@36
    .line 1677
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@38
    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@3a
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 1676
    const v4, 0x50070

    #@41
    invoke-virtual {v2, v4, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@44
    goto :goto_0

    #@45
    .line 1681
    .end local v2    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47
    check-cast v2, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@49
    .line 1683
    .restart local v2    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@4b
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_3

    #@55
    .line 1685
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@57
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@5e
    move-result v3

    #@5f
    if-eqz v3, :cond_2

    #@61
    .line 1686
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffMasterTetherSettings()Z

    #@64
    .line 1699
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@66
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->removeActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@6d
    goto :goto_0

    #@6e
    .line 1697
    :cond_3
    const-string/jumbo v3, "Tethering"

    #@71
    new-instance v4, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v5, "TetherModeAliveState UNREQUESTED has unknown who: "

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    goto :goto_1

    #@89
    .line 1704
    .end local v2    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@8b
    .line 1705
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@8d
    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@90
    .line 1706
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@92
    if-eqz v5, :cond_4

    #@94
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@96
    goto/16 :goto_0

    #@98
    :cond_4
    move v3, v4

    #@99
    goto :goto_2

    #@9a
    .line 1709
    :pswitch_4
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@9c
    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@9f
    .line 1710
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@a1
    if-eqz v5, :cond_5

    #@a3
    :goto_3
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@a5
    goto/16 :goto_0

    #@a7
    :cond_5
    move v3, v4

    #@a8
    goto :goto_3

    #@a9
    .line 1714
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@ab
    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@ad
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@b0
    move-result-object v4

    #@b1
    .line 1715
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@b3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b5
    .line 1714
    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->processCallback(ILjava/lang/Object;)Landroid/net/NetworkState;

    #@b8
    move-result-object v0

    #@b9
    .line 1717
    .local v0, "ns":Landroid/net/NetworkState;
    if-eqz v0, :cond_6

    #@bb
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@bd
    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@bf
    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    #@c2
    move-result v4

    #@c3
    if-eqz v4, :cond_6

    #@c5
    .line 1733
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@c7
    packed-switch v3, :pswitch_data_1

    #@ca
    goto/16 :goto_0

    #@cc
    .line 1744
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    #@cf
    goto/16 :goto_0

    #@d1
    .line 1723
    :cond_6
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@d3
    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@d5
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    #@d8
    move-result-object v4

    #@d9
    if-nez v4, :cond_0

    #@db
    .line 1728
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@de
    goto/16 :goto_0

    #@e0
    .line 1747
    :pswitch_7
    iget-object v3, v0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@e2
    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@e4
    invoke-virtual {p0, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V

    #@e7
    .line 1748
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 1755
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    #@ef
    goto/16 :goto_0

    #@f1
    .line 1668
    nop

    #@f2
    :pswitch_data_0
    .packed-switch 0x50001
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@100
    .line 1733
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
