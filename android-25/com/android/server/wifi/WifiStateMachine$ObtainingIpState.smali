.class Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 6763
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 6766
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_1

    #@7
    .line 6767
    const-string/jumbo v1, ""

    #@a
    .line 6768
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@f
    move-result-object v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 6769
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 6771
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "enter ObtainingIpState netId="

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@2f
    move-result v5

    #@30
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 6772
    const-string/jumbo v5, " "

    #@3b
    .line 6771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    .line 6772
    const-string/jumbo v5, " "

    #@46
    .line 6771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 6773
    const-string/jumbo v5, " roam="

    #@4d
    .line 6771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 6773
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get7(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@56
    move-result v5

    #@57
    .line 6771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    .line 6774
    const-string/jumbo v5, " static="

    #@5e
    .line 6771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    .line 6774
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@64
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@67
    move-result-object v5

    #@68
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6a
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@6d
    move-result v6

    #@6e
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->isUsingStaticIp(I)Z

    #@71
    move-result v5

    #@72
    .line 6771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 6775
    const-string/jumbo v5, " watchdog= "

    #@79
    .line 6771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    .line 6775
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7f
    iget v5, v5, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@81
    .line 6771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@8c
    .line 6780
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@91
    .line 6783
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@93
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@95
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap4(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@98
    .line 6788
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9a
    const-string/jumbo v4, "ObtainingIpAddress"

    #@9d
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    #@a0
    .line 6800
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a2
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;)V

    #@a5
    .line 6802
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a7
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@aa
    move-result-object v3

    #@ab
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ad
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@b0
    move-result-object v4

    #@b1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b3
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@b6
    move-result v5

    #@b7
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->getProxyProperties(I)Landroid/net/ProxyInfo;

    #@ba
    move-result-object v4

    #@bb
    invoke-virtual {v3, v4}, Landroid/net/ip/IpManager;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@be
    .line 6803
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c0
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@c3
    move-result-object v3

    #@c4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c7
    move-result v3

    #@c8
    if-nez v3, :cond_2

    #@ca
    .line 6804
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cc
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@cf
    move-result-object v3

    #@d0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d2
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@d5
    move-result-object v4

    #@d6
    invoke-virtual {v3, v4}, Landroid/net/ip/IpManager;->setTcpBufferSizes(Ljava/lang/String;)V

    #@d9
    .line 6807
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@db
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@de
    move-result-object v3

    #@df
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e1
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@e4
    move-result v4

    #@e5
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->isUsingStaticIp(I)Z

    #@e8
    move-result v3

    #@e9
    if-nez v3, :cond_3

    #@eb
    .line 6809
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ed
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@f0
    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@f3
    move-result-object v3

    #@f4
    invoke-virtual {v3}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withPreDhcpAction()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@f7
    move-result-object v3

    #@f8
    .line 6811
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fa
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@fd
    move-result-object v4

    #@fe
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getApfCapabilities()Landroid/net/apf/ApfCapabilities;

    #@101
    move-result-object v4

    #@102
    .line 6809
    invoke-virtual {v3, v4}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@105
    move-result-object v3

    #@106
    invoke-virtual {v3}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@109
    move-result-object v2

    #@10a
    .line 6813
    .local v2, "prov":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10c
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@10f
    move-result-object v3

    #@110
    invoke-virtual {v3, v2}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    #@113
    .line 6814
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@115
    iget v4, v3, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@117
    add-int/lit8 v4, v4, 0x1

    #@119
    iput v4, v3, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@11b
    .line 6815
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11d
    new-instance v4, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v5, "Start Dhcp Watchdog "

    #@125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v4

    #@129
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b
    iget v5, v5, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@12d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@130
    move-result-object v4

    #@131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v4

    #@135
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@138
    .line 6817
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13a
    const/4 v4, 0x1

    #@13b
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@13e
    .line 6818
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@140
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@142
    .line 6819
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@144
    iget v5, v5, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@146
    .line 6818
    const v6, 0x2005d

    #@149
    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@14c
    move-result-object v4

    #@14d
    .line 6819
    const-wide/32 v6, 0x9c40

    #@150
    .line 6818
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@153
    .line 6765
    .end local v2    # "prov":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    :goto_0
    return-void

    #@154
    .line 6821
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@156
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@159
    move-result-object v3

    #@15a
    .line 6822
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15c
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@15f
    move-result v4

    #@160
    .line 6821
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;

    #@163
    move-result-object v0

    #@164
    .line 6823
    .local v0, "config":Landroid/net/StaticIpConfiguration;
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@166
    if-nez v3, :cond_4

    #@168
    .line 6824
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16a
    const-string/jumbo v4, "Static IP lacks address"

    #@16d
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@170
    .line 6825
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@172
    const v4, 0x200c9

    #@175
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@178
    goto :goto_0

    #@179
    .line 6828
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17b
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@17e
    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@181
    move-result-object v3

    #@182
    invoke-virtual {v3, v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@185
    move-result-object v3

    #@186
    .line 6830
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@188
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@18b
    move-result-object v4

    #@18c
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getApfCapabilities()Landroid/net/apf/ApfCapabilities;

    #@18f
    move-result-object v4

    #@190
    .line 6828
    invoke-virtual {v3, v4}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@193
    move-result-object v3

    #@194
    invoke-virtual {v3}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@197
    move-result-object v2

    #@198
    .line 6832
    .restart local v2    # "prov":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19a
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@19d
    move-result-object v3

    #@19e
    invoke-virtual {v3, v2}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    #@1a1
    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 6839
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@7
    .line 6841
    iget v0, p1, Landroid/os/Message;->what:I

    #@9
    sparse-switch v0, :sswitch_data_0

    #@c
    .line 6878
    return v2

    #@d
    .line 6844
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@12
    move-result v1

    #@13
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@16
    .line 6880
    :goto_0
    return v3

    #@17
    .line 6848
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@1c
    move-result v1

    #@1d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@20
    .line 6849
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@25
    goto :goto_0

    #@26
    .line 6854
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28
    .line 6855
    const/4 v1, 0x6

    #@29
    .line 6854
    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@2c
    .line 6857
    return v2

    #@2d
    .line 6859
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@32
    move-result v1

    #@33
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@36
    .line 6860
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@3b
    goto :goto_0

    #@3c
    .line 6864
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@41
    move-result v1

    #@42
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@45
    .line 6865
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@4a
    goto :goto_0

    #@4b
    .line 6868
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@4d
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4f
    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@51
    if-ne v0, v1, :cond_0

    #@53
    .line 6869
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@55
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v2, "ObtainingIpAddress: Watchdog Triggered, count="

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    .line 6870
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@63
    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@65
    .line 6869
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@70
    .line 6871
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;)V

    #@75
    .line 6872
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@77
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@79
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@7c
    move-result-object v1

    #@7d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@80
    goto :goto_0

    #@81
    .line 6875
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@83
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@86
    move-result v1

    #@87
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@8a
    goto :goto_0

    #@8b
    .line 6841
    nop

    #@8c
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_4
        0x2004d -> :sswitch_3
        0x2005d -> :sswitch_5
        0x2008f -> :sswitch_0
        0x20091 -> :sswitch_0
        0x20092 -> :sswitch_1
        0x24004 -> :sswitch_2
        0x25007 -> :sswitch_1
    .end sparse-switch
.end method
