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
    .line 1917
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@5
    .line 1918
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@8
    .line 1917
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1922
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnMasterTetherSettings()Z

    #@4
    .line 1923
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@6
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@9
    .line 1924
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@b
    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->start()V

    #@14
    .line 1926
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@16
    .line 1927
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@18
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@1b
    .line 1928
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@1d
    if-eqz v1, :cond_0

    #@1f
    const/4 v0, 0x0

    #@20
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@22
    .line 1920
    return-void
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffUpstreamMobileConnection()V

    #@3
    .line 1934
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@5
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@7
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->stop()V

    #@e
    .line 1935
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@10
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@13
    .line 1936
    const/4 v0, 0x0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    #@17
    .line 1931
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1940
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@4
    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@6
    iget v7, p1, Landroid/os/Message;->what:I

    #@8
    invoke-static {v6, p0, v7}, Lcom/android/server/connectivity/Tethering;->-wrap5(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V

    #@b
    .line 1941
    const/4 v1, 0x1

    #@c
    .line 1942
    .local v1, "retValue":Z
    iget v6, p1, Landroid/os/Message;->what:I

    #@e
    packed-switch v6, :pswitch_data_0

    #@11
    .line 1999
    const/4 v1, 0x0

    #@12
    .line 2002
    :cond_0
    :goto_0
    return v1

    #@13
    .line 1944
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@17
    .line 1946
    .local v3, "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@19
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 1948
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@22
    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@24
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 1947
    const v5, 0x50070

    #@2b
    invoke-virtual {v3, v5, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    #@2e
    goto :goto_0

    #@2f
    .line 1951
    .end local v3    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31
    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@33
    .line 1953
    .restart local v3    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@35
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@3c
    move-result v0

    #@3d
    .line 1954
    .local v0, "index":I
    const/4 v4, -0x1

    #@3e
    if-eq v0, v4, :cond_1

    #@40
    .line 1956
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@42
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@49
    .line 1957
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@4b
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_0

    #@55
    .line 1958
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffMasterTetherSettings()Z

    #@58
    goto :goto_0

    #@59
    .line 1967
    :cond_1
    const-string/jumbo v4, "Tethering"

    #@5c
    new-instance v5, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v6, "TetherModeAliveState UNREQUESTED has unknown who: "

    #@64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    goto :goto_0

    #@74
    .line 1972
    .end local v0    # "index":I
    .end local v3    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@76
    .line 1973
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@78
    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@7b
    .line 1974
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@7d
    if-eqz v6, :cond_2

    #@7f
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@81
    goto :goto_0

    #@82
    :cond_2
    move v4, v5

    #@83
    goto :goto_1

    #@84
    .line 1977
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@86
    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@89
    .line 1978
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@8b
    if-eqz v6, :cond_3

    #@8d
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@8f
    goto :goto_0

    #@90
    :cond_3
    move v4, v5

    #@91
    goto :goto_2

    #@92
    .line 1981
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@94
    check-cast v2, Landroid/net/NetworkState;

    #@96
    .line 1982
    .local v2, "state":Landroid/net/NetworkState;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@98
    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@9a
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v5, v2}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->processLinkPropertiesChanged(Landroid/net/NetworkState;)Z

    #@a1
    move-result v5

    #@a2
    if-eqz v5, :cond_4

    #@a4
    .line 1983
    iget-object v4, v2, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@a6
    iget-object v5, v2, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@a8
    invoke-virtual {p0, v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 1984
    :cond_4
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@af
    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@b1
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    if-nez v5, :cond_0

    #@b7
    .line 1989
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@ba
    goto/16 :goto_0

    #@bc
    .line 1996
    .end local v2    # "state":Landroid/net/NetworkState;
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@be
    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@c0
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@c3
    move-result-object v5

    #@c4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c6
    check-cast v4, Landroid/net/Network;

    #@c8
    invoke-virtual {v5, v4}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->processNetworkLost(Landroid/net/Network;)V

    #@cb
    goto/16 :goto_0

    #@cd
    .line 1942
    nop

    #@ce
    :pswitch_data_0
    .packed-switch 0x50001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
