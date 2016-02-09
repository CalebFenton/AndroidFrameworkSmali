.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 685
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@2
    .line 686
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 685
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 691
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@3
    iget v9, p1, Landroid/os/Message;->arg2:I

    #@5
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    .line 692
    .local v4, "listener":Ljava/lang/Object;
    iget v8, p1, Landroid/os/Message;->what:I

    #@b
    sparse-switch v8, :sswitch_data_0

    #@e
    .line 791
    const-string/jumbo v8, "WifiP2pManager"

    #@11
    new-instance v9, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v10, "Ignored "

    #@19
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v9

    #@1d
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v9

    #@25
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 690
    .end local v4    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    #@29
    .line 694
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_0
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@2b
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    #@2e
    move-result-object v8

    #@2f
    if-eqz v8, :cond_0

    #@31
    .line 695
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@33
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    #@36
    move-result-object v8

    #@37
    invoke-interface {v8}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    #@3a
    .line 696
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@3c
    invoke-static {v8, v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    #@3f
    goto :goto_0

    #@40
    .line 721
    :sswitch_1
    if-eqz v4, :cond_0

    #@42
    .line 722
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    #@44
    .end local v4    # "listener":Ljava/lang/Object;
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@46
    invoke-interface {v4, v8}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    #@49
    goto :goto_0

    #@4a
    .line 747
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_2
    if-eqz v4, :cond_0

    #@4c
    .line 748
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    #@4e
    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    #@51
    goto :goto_0

    #@52
    .line 752
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@54
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@56
    .line 753
    .local v5, "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v4, :cond_0

    #@58
    .line 754
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    #@5a
    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    #@5d
    goto :goto_0

    #@5e
    .line 758
    .end local v5    # "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@60
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pInfo;

    #@62
    .line 759
    .local v7, "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v4, :cond_0

    #@64
    .line 760
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    #@66
    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    #@69
    goto :goto_0

    #@6a
    .line 764
    .end local v7    # "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6c
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@6e
    .line 765
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v4, :cond_0

    #@70
    .line 766
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    #@72
    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    #@75
    goto :goto_0

    #@76
    .line 770
    .end local v0    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v6, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@7a
    .line 771
    .local v6, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@7c
    invoke-static {v8, v6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    #@7f
    goto :goto_0

    #@80
    .line 774
    .end local v6    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@82
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@84
    .line 775
    .local v1, "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    if-eqz v4, :cond_0

    #@86
    .line 776
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    #@88
    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    #@8b
    goto :goto_0

    #@8c
    .line 781
    .end local v1    # "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8e
    check-cast v2, Landroid/os/Bundle;

    #@90
    .line 782
    .local v2, "handoverBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    #@92
    .line 783
    if-eqz v2, :cond_1

    #@94
    .line 784
    const-string/jumbo v8, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    #@97
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    .line 786
    :goto_1
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    #@9d
    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    #@a0
    goto :goto_0

    #@a1
    .line 785
    .restart local v4    # "listener":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    #@a2
    .local v3, "handoverMessage":Ljava/lang/String;
    goto :goto_1

    #@a3
    .line 692
    nop

    #@a4
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x22002 -> :sswitch_1
        0x22003 -> :sswitch_2
        0x22005 -> :sswitch_1
        0x22006 -> :sswitch_2
        0x22008 -> :sswitch_1
        0x22009 -> :sswitch_2
        0x2200b -> :sswitch_1
        0x2200c -> :sswitch_2
        0x2200e -> :sswitch_1
        0x2200f -> :sswitch_2
        0x22011 -> :sswitch_1
        0x22012 -> :sswitch_2
        0x22014 -> :sswitch_3
        0x22016 -> :sswitch_4
        0x22018 -> :sswitch_5
        0x2201d -> :sswitch_1
        0x2201e -> :sswitch_2
        0x22020 -> :sswitch_1
        0x22021 -> :sswitch_2
        0x22023 -> :sswitch_1
        0x22024 -> :sswitch_2
        0x22026 -> :sswitch_1
        0x22027 -> :sswitch_2
        0x22029 -> :sswitch_1
        0x2202a -> :sswitch_2
        0x2202c -> :sswitch_1
        0x2202d -> :sswitch_2
        0x2202f -> :sswitch_1
        0x22030 -> :sswitch_2
        0x22032 -> :sswitch_6
        0x22034 -> :sswitch_1
        0x22035 -> :sswitch_2
        0x22037 -> :sswitch_1
        0x22038 -> :sswitch_2
        0x2203a -> :sswitch_7
        0x2203c -> :sswitch_1
        0x2203d -> :sswitch_2
        0x2203f -> :sswitch_1
        0x22040 -> :sswitch_2
        0x22042 -> :sswitch_1
        0x22043 -> :sswitch_2
        0x22045 -> :sswitch_1
        0x22046 -> :sswitch_2
        0x22048 -> :sswitch_1
        0x22049 -> :sswitch_2
        0x2204d -> :sswitch_8
        0x22050 -> :sswitch_2
        0x22051 -> :sswitch_1
    .end sparse-switch
.end method
