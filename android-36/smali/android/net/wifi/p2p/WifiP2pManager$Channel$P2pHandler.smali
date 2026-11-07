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
.field final synthetic blacklist this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1795
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 1796
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1797
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 1801
    const/4 v0, 0x0

    .line 1804
    .local v0, "listener":Ljava/lang/Object;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a2

    .line 1811
    :pswitch_6
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mremoveListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    .line 1808
    :pswitch_f
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mgetListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v0

    .line 1809
    nop

    .line 1814
    :goto_18
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_1ae

    goto/16 :goto_188

    .line 2009
    :sswitch_20
    if-eqz v0, :cond_1a0

    .line 2010
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoValidationListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    .line 2011
    :goto_2c
    invoke-interface {v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoValidationListener;->onDirInfoValidation(Z)V

    goto/16 :goto_1a0

    .line 2015
    :sswitch_31
    if-eqz v0, :cond_188

    .line 2016
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoValidationListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2017
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoValidationListener;->onFailure(I)V

    goto/16 :goto_188

    .line 1995
    :sswitch_3d
    if-eqz v0, :cond_1a0

    .line 1996
    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 1997
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDirInfo;

    .line 1998
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoListener;->onDirInfoReceived(Landroid/net/wifi/p2p/WifiP2pDirInfo;)V

    goto/16 :goto_1a0

    .line 2003
    :sswitch_51
    if-eqz v0, :cond_1a0

    .line 2004
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2005
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoListener;->onFailure(I)V

    goto/16 :goto_1a0

    .line 1945
    :sswitch_5d
    if-eqz v0, :cond_1a0

    .line 1946
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ListenStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1947
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$ListenStateListener;->onListenStateAvailable(I)V

    goto/16 :goto_1a0

    .line 1985
    :sswitch_69
    if-eqz v0, :cond_1a0

    .line 1986
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1987
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "android.net.wifi.p2p.EXTRA_PARAM_KEY_PEER_ADDRESS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/MacAddress;

    .line 1989
    .local v2, "deviceAddress":Landroid/net/MacAddress;
    const-string v3, "android.net.wifi.p2p.EXTRA_PARAM_KEY_WPS_PIN"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1990
    .local v3, "pin":Ljava/lang/String;
    move-object v4, v0

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;

    .line 1991
    invoke-interface {v4, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;->onPinGenerated(Landroid/net/MacAddress;Ljava/lang/String;)V

    .line 1992
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "deviceAddress":Landroid/net/MacAddress;
    .end local v3    # "pin":Ljava/lang/String;
    goto/16 :goto_1a0

    .line 1975
    :sswitch_85
    if-eqz v0, :cond_1a0

    .line 1976
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1977
    .local v1, "requestType":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1978
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "android.net.wifi.p2p.EXTRA_PARAM_KEY_DEVICE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1979
    .local v3, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v4, "android.net.wifi.p2p.EXTRA_PARAM_KEY_CONFIG"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1980
    .local v4, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object v5, v0

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;

    .line 1981
    invoke-interface {v5, v1, v4, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;->onConnectionRequested(ILandroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1982
    .end local v1    # "requestType":I
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    goto/16 :goto_1a0

    .line 1969
    :sswitch_a5
    if-eqz v0, :cond_1a0

    .line 1970
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/MacAddress;

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1971
    invoke-interface {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;->onDetached(Landroid/net/MacAddress;I)V

    goto/16 :goto_1a0

    .line 1963
    :sswitch_b5
    if-eqz v0, :cond_1a0

    .line 1964
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/MacAddress;

    .line 1965
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;->onAttached(Landroid/net/MacAddress;)V

    goto/16 :goto_1a0

    .line 1957
    :sswitch_c3
    if-eqz v0, :cond_1a0

    .line 1958
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1959
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;->onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto/16 :goto_1a0

    .line 1951
    :sswitch_d1
    if-eqz v0, :cond_1a0

    .line 1952
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1953
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;->onNetworkInfoAvailable(Landroid/net/NetworkInfo;)V

    goto/16 :goto_1a0

    .line 1939
    :sswitch_df
    if-eqz v0, :cond_1a0

    .line 1940
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$DiscoveryStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1941
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$DiscoveryStateListener;->onDiscoveryStateAvailable(I)V

    goto/16 :goto_1a0

    .line 1933
    :sswitch_eb
    if-eqz v0, :cond_1a0

    .line 1934
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1935
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;->onP2pStateAvailable(I)V

    goto/16 :goto_1a0

    .line 1926
    :sswitch_f7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1927
    .local v1, "peerConfig":Landroid/net/wifi/p2p/WifiP2pConfig;
    if-eqz v0, :cond_1a0

    .line 1928
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$OngoingPeerInfoListener;

    .line 1929
    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$OngoingPeerInfoListener;->onOngoingPeerAvailable(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_1a0

    .line 1916
    .end local v1    # "peerConfig":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_105
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1917
    .local v1, "handoverBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1a0

    .line 1918
    if-eqz v1, :cond_114

    .line 1919
    const-string v2, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_115

    .line 1920
    :cond_114
    nop

    :goto_115
    nop

    .line 1921
    .local v2, "handoverMessage":Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .line 1922
    invoke-interface {v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    .line 1923
    .end local v2    # "handoverMessage":Ljava/lang/String;
    goto/16 :goto_1a0

    .line 1909
    .end local v1    # "handoverBundle":Landroid/os/Bundle;
    :sswitch_11e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 1910
    .local v1, "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    if-eqz v0, :cond_1a0

    .line 1911
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .line 1912
    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto/16 :goto_1a0

    .line 1905
    .end local v1    # "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    :sswitch_12c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 1906
    .local v1, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mhandleServiceResponse(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    .line 1907
    goto :goto_1a0

    .line 1899
    .end local v1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :sswitch_136
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1900
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v0, :cond_1a0

    .line 1901
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_1a0

    .line 1893
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :sswitch_143
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 1894
    .local v1, "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v0, :cond_1a0

    .line 1895
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_1a0

    .line 1887
    .end local v1    # "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    :sswitch_150
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 1888
    .local v1, "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v0, :cond_1a0

    .line 1889
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_1a0

    .line 1882
    .end local v1    # "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    :sswitch_15d
    if-eqz v0, :cond_1a0

    .line 1883
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_1a0

    .line 1850
    :sswitch_166
    if-eqz v0, :cond_1a0

    .line 1851
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_1a0

    .line 1816
    :sswitch_171
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmChannelListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v1

    if-eqz v1, :cond_1a0

    .line 1817
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmChannelListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 1818
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fputmChannelListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V

    goto :goto_1a0

    .line 2020
    :cond_188
    :goto_188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiP2pManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_1a0
    :goto_1a0
    return-void

    nop

    :pswitch_data_1a2
    .packed-switch 0x22067
        :pswitch_f
        :pswitch_6
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :sswitch_data_1ae
    .sparse-switch
        0x11004 -> :sswitch_171
        0x22002 -> :sswitch_166
        0x22003 -> :sswitch_15d
        0x22005 -> :sswitch_166
        0x22006 -> :sswitch_15d
        0x22008 -> :sswitch_166
        0x22009 -> :sswitch_15d
        0x2200b -> :sswitch_166
        0x2200c -> :sswitch_15d
        0x2200e -> :sswitch_166
        0x2200f -> :sswitch_15d
        0x22011 -> :sswitch_166
        0x22012 -> :sswitch_15d
        0x22014 -> :sswitch_150
        0x22016 -> :sswitch_143
        0x22018 -> :sswitch_136
        0x2201d -> :sswitch_166
        0x2201e -> :sswitch_15d
        0x22020 -> :sswitch_166
        0x22021 -> :sswitch_15d
        0x22023 -> :sswitch_166
        0x22024 -> :sswitch_15d
        0x22026 -> :sswitch_166
        0x22027 -> :sswitch_15d
        0x22029 -> :sswitch_166
        0x2202a -> :sswitch_15d
        0x2202c -> :sswitch_166
        0x2202d -> :sswitch_15d
        0x2202f -> :sswitch_166
        0x22030 -> :sswitch_15d
        0x22032 -> :sswitch_12c
        0x22034 -> :sswitch_166
        0x22035 -> :sswitch_15d
        0x22037 -> :sswitch_166
        0x22038 -> :sswitch_15d
        0x2203a -> :sswitch_11e
        0x2203c -> :sswitch_166
        0x2203d -> :sswitch_15d
        0x2203f -> :sswitch_166
        0x22040 -> :sswitch_15d
        0x22042 -> :sswitch_166
        0x22043 -> :sswitch_15d
        0x22045 -> :sswitch_166
        0x22046 -> :sswitch_15d
        0x22048 -> :sswitch_166
        0x22049 -> :sswitch_15d
        0x2204d -> :sswitch_105
        0x22050 -> :sswitch_15d
        0x22051 -> :sswitch_166
        0x22053 -> :sswitch_166
        0x22054 -> :sswitch_15d
        0x22056 -> :sswitch_f7
        0x22058 -> :sswitch_166
        0x22059 -> :sswitch_15d
        0x2205b -> :sswitch_eb
        0x2205d -> :sswitch_df
        0x2205f -> :sswitch_d1
        0x22062 -> :sswitch_c3
        0x22064 -> :sswitch_166
        0x22065 -> :sswitch_15d
        0x22067 -> :sswitch_b5
        0x22068 -> :sswitch_a5
        0x22069 -> :sswitch_85
        0x2206a -> :sswitch_69
        0x2206c -> :sswitch_166
        0x2206d -> :sswitch_15d
        0x2206f -> :sswitch_166
        0x22070 -> :sswitch_15d
        0x22072 -> :sswitch_166
        0x22073 -> :sswitch_15d
        0x22075 -> :sswitch_166
        0x22076 -> :sswitch_5d
        0x22078 -> :sswitch_51
        0x22079 -> :sswitch_3d
        0x2207b -> :sswitch_31
        0x2207c -> :sswitch_20
    .end sparse-switch
.end method
