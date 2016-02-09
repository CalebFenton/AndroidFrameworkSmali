.class Lcom/android/server/ethernet/EthernetNetworkFactory$1;
.super Ljava/lang/Object;
.source "EthernetNetworkFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ethernet/EthernetNetworkFactory;->onRequestNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;


# direct methods
.method constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@0
    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 265
    const-string/jumbo v0, "EthernetNetworkFactory"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "dhcpThread("

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "): mNetworkInfo="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@21
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get9(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 268
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@32
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get1(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/EthernetManager;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Landroid/net/EthernetManager;->getConfiguration()Landroid/net/IpConfiguration;

    #@39
    move-result-object v9

    #@3a
    .line 270
    .local v9, "config":Landroid/net/IpConfiguration;
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@3d
    move-result-object v0

    #@3e
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    #@40
    if-ne v0, v1, :cond_4

    #@42
    .line 271
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@44
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@47
    move-result-object v1

    #@48
    invoke-static {v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-wrap1(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/StaticIpConfiguration;)Z

    #@4b
    move-result v0

    #@4c
    if-nez v0, :cond_0

    #@4e
    .line 273
    return-void

    #@4f
    .line 275
    :cond_0
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@52
    move-result-object v0

    #@53
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration;->toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@5a
    move-result-object v11

    #@5b
    .line 297
    .local v11, "linkProperties":Landroid/net/LinkProperties;
    :goto_0
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@5e
    move-result-object v0

    #@5f
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    #@61
    if-eq v0, v1, :cond_1

    #@63
    .line 298
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@66
    move-result-object v0

    #@67
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    #@69
    if-ne v0, v1, :cond_2

    #@6b
    .line 299
    :cond_1
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v11, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@72
    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@74
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get0(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/content/Context;

    #@77
    move-result-object v0

    #@78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7b
    move-result-object v0

    #@7c
    .line 303
    const v1, 0x1040040

    #@7f
    .line 302
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@82
    move-result-object v12

    #@83
    .line 304
    .local v12, "tcpBufferSizes":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@86
    move-result v0

    #@87
    if-nez v0, :cond_3

    #@89
    .line 305
    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    #@8c
    .line 308
    :cond_3
    iget-object v13, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@8e
    monitor-enter v13

    #@8f
    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@91
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get7(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkAgent;

    #@94
    move-result-object v0

    #@95
    if-eqz v0, :cond_6

    #@97
    .line 310
    const-string/jumbo v0, "EthernetNetworkFactory"

    #@9a
    const-string/jumbo v1, "Already have a NetworkAgent - aborting new request"

    #@9d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a0
    monitor-exit v13

    #@a1
    .line 311
    return-void

    #@a2
    .line 277
    .end local v11    # "linkProperties":Landroid/net/LinkProperties;
    .end local v12    # "tcpBufferSizes":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@a4
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get9(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@a7
    move-result-object v0

    #@a8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@aa
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@ac
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get3(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;

    #@af
    move-result-object v2

    #@b0
    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    .line 279
    new-instance v10, Landroid/net/DhcpResults;

    #@b5
    invoke-direct {v10}, Landroid/net/DhcpResults;-><init>()V

    #@b8
    .line 285
    .local v10, "dhcpResults":Landroid/net/DhcpResults;
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    invoke-static {v0, v10}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    #@bf
    move-result v0

    #@c0
    if-nez v0, :cond_5

    #@c2
    .line 286
    const-string/jumbo v0, "EthernetNetworkFactory"

    #@c5
    new-instance v1, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v2, "DHCP request error:"

    #@cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    #@d4
    move-result-object v2

    #@d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v1

    #@d9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v1

    #@dd
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e0
    .line 289
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@e2
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get2(Lcom/android/server/ethernet/EthernetNetworkFactory;)Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@e5
    move-result-object v0

    #@e6
    const/4 v1, -0x1

    #@e7
    invoke-virtual {v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->setScoreFilter(I)V

    #@ea
    .line 292
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@ed
    move-result-object v0

    #@ee
    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    #@f1
    .line 293
    return-void

    #@f2
    .line 295
    :cond_5
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@f5
    move-result-object v0

    #@f6
    invoke-virtual {v10, v0}, Landroid/net/DhcpResults;->toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@f9
    move-result-object v11

    #@fa
    .restart local v11    # "linkProperties":Landroid/net/LinkProperties;
    goto/16 :goto_0

    #@fc
    .line 313
    .end local v10    # "dhcpResults":Landroid/net/DhcpResults;
    .restart local v12    # "tcpBufferSizes":Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@fe
    invoke-static {v0, v11}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-set0(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    #@101
    .line 314
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@103
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get9(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@106
    move-result-object v0

    #@107
    const/4 v1, 0x1

    #@108
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@10b
    .line 315
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@10d
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get9(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@110
    move-result-object v0

    #@111
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@113
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@115
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get3(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;

    #@118
    move-result-object v2

    #@119
    const/4 v3, 0x0

    #@11a
    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@11d
    .line 318
    iget-object v14, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@11f
    new-instance v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;

    #@121
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@123
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get2(Lcom/android/server/ethernet/EthernetNetworkFactory;)Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@126
    move-result-object v1

    #@127
    invoke-virtual {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->getLooper()Landroid/os/Looper;

    #@12a
    move-result-object v2

    #@12b
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@12d
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get0(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/content/Context;

    #@130
    move-result-object v3

    #@131
    .line 319
    const-string/jumbo v4, "Ethernet"

    #@134
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@136
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get9(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@139
    move-result-object v5

    #@13a
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@13c
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get8(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkCapabilities;

    #@13f
    move-result-object v6

    #@140
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@142
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get5(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/LinkProperties;

    #@145
    move-result-object v7

    #@146
    .line 320
    const/16 v8, 0x46

    #@148
    move-object v1, p0

    #@149
    .line 318
    invoke-direct/range {v0 .. v8}, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory$1;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    #@14c
    invoke-static {v14, v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-set1(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14f
    monitor-exit v13

    #@150
    .line 264
    return-void

    #@151
    .line 308
    :catchall_0
    move-exception v0

    #@152
    monitor-exit v13

    #@153
    throw v0
.end method
