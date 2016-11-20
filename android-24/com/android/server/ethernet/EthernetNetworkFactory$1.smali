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
    .line 287
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    #@0
    .prologue
    .line 290
    const-string/jumbo v1, "EthernetNetworkFactory"

    #@3
    const-string/jumbo v2, "starting ipProvisioningThread(%s): mNetworkInfo=%s"

    #@6
    const/4 v3, 0x2

    #@7
    new-array v3, v3, [Ljava/lang/Object;

    #@9
    .line 291
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@14
    invoke-static {v4}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get10(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@17
    move-result-object v4

    #@18
    const/4 v5, 0x1

    #@19
    aput-object v4, v3, v5

    #@1b
    .line 290
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 296
    move-object/from16 v0, p0

    #@24
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@26
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get1(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/EthernetManager;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Landroid/net/EthernetManager;->getConfiguration()Landroid/net/IpConfiguration;

    #@2d
    move-result-object v10

    #@2e
    .line 298
    .local v10, "config":Landroid/net/IpConfiguration;
    invoke-virtual {v10}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@31
    move-result-object v1

    #@32
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    #@34
    if-ne v1, v2, :cond_2

    #@36
    .line 299
    move-object/from16 v0, p0

    #@38
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@3a
    invoke-virtual {v10}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v1, v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-wrap1(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/StaticIpConfiguration;)Z

    #@41
    move-result v1

    #@42
    if-nez v1, :cond_0

    #@44
    .line 301
    return-void

    #@45
    .line 303
    :cond_0
    invoke-virtual {v10}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@48
    move-result-object v1

    #@49
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v1, v2}, Landroid/net/StaticIpConfiguration;->toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@50
    move-result-object v12

    #@51
    .line 353
    .local v12, "linkProperties":Landroid/net/LinkProperties;
    :cond_1
    move-object/from16 v0, p0

    #@53
    iget-object v15, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@55
    monitor-enter v15

    #@56
    .line 354
    :try_start_0
    move-object/from16 v0, p0

    #@58
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@5a
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get8(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkAgent;

    #@5d
    move-result-object v1

    #@5e
    if-eqz v1, :cond_6

    #@60
    .line 355
    const-string/jumbo v1, "EthernetNetworkFactory"

    #@63
    const-string/jumbo v2, "Already have a NetworkAgent - aborting new request"

    #@66
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 356
    move-object/from16 v0, p0

    #@6b
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@6d
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-wrap2(Lcom/android/server/ethernet/EthernetNetworkFactory;)V

    #@70
    .line 357
    move-object/from16 v0, p0

    #@72
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@74
    const/4 v2, 0x0

    #@75
    invoke-static {v1, v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-set1(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@78
    monitor-exit v15

    #@79
    .line 358
    return-void

    #@7a
    .line 305
    .end local v12    # "linkProperties":Landroid/net/LinkProperties;
    :cond_2
    move-object/from16 v0, p0

    #@7c
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@7e
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get10(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@81
    move-result-object v1

    #@82
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@84
    move-object/from16 v0, p0

    #@86
    iget-object v3, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@88
    invoke-static {v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get3(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    const/4 v4, 0x0

    #@8d
    invoke-virtual {v1, v2, v4, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@90
    .line 306
    new-instance v11, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;

    #@92
    move-object/from16 v0, p0

    #@94
    invoke-direct {v11, v0}, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory$1;)V

    #@97
    .line 318
    .local v11, "ipmCallback":Landroid/net/ip/IpManager$WaitForProvisioningCallback;
    move-object/from16 v0, p0

    #@99
    iget-object v2, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@9b
    monitor-enter v2

    #@9c
    .line 319
    :try_start_1
    move-object/from16 v0, p0

    #@9e
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@a0
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-wrap2(Lcom/android/server/ethernet/EthernetNetworkFactory;)V

    #@a3
    .line 320
    move-object/from16 v0, p0

    #@a5
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@a7
    new-instance v3, Landroid/net/ip/IpManager;

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-object v4, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@ad
    invoke-static {v4}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get0(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/content/Context;

    #@b0
    move-result-object v4

    #@b1
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    invoke-direct {v3, v4, v5, v11}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V

    #@b8
    invoke-static {v1, v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-set0(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager;

    #@bb
    .line 322
    invoke-virtual {v10}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@be
    move-result-object v1

    #@bf
    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    #@c1
    if-eq v1, v3, :cond_3

    #@c3
    .line 323
    invoke-virtual {v10}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@c6
    move-result-object v1

    #@c7
    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    #@c9
    if-ne v1, v3, :cond_4

    #@cb
    .line 324
    :cond_3
    move-object/from16 v0, p0

    #@cd
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@cf
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get5(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/ip/IpManager;

    #@d2
    move-result-object v1

    #@d3
    invoke-virtual {v10}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@d6
    move-result-object v3

    #@d7
    invoke-virtual {v1, v3}, Landroid/net/ip/IpManager;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@da
    .line 327
    :cond_4
    move-object/from16 v0, p0

    #@dc
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@de
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get0(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/content/Context;

    #@e1
    move-result-object v1

    #@e2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e5
    move-result-object v1

    #@e6
    .line 328
    const v3, 0x104005b

    #@e9
    .line 327
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@ec
    move-result-object v14

    #@ed
    .line 329
    .local v14, "tcpBufferSizes":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f0
    move-result v1

    #@f1
    if-nez v1, :cond_5

    #@f3
    .line 330
    move-object/from16 v0, p0

    #@f5
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@f7
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get5(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/ip/IpManager;

    #@fa
    move-result-object v1

    #@fb
    invoke-virtual {v1, v14}, Landroid/net/ip/IpManager;->setTcpBufferSizes(Ljava/lang/String;)V

    #@fe
    .line 334
    :cond_5
    move-object/from16 v0, p0

    #@100
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@102
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get5(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/ip/IpManager;

    #@105
    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@108
    move-result-object v1

    #@109
    .line 335
    const/4 v3, 0x0

    #@10a
    .line 334
    invoke-virtual {v1, v3}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withProvisioningTimeoutMs(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@10d
    move-result-object v1

    #@10e
    invoke-virtual {v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@111
    move-result-object v13

    #@112
    .line 337
    .local v13, "provisioningConfiguration":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    move-object/from16 v0, p0

    #@114
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@116
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get5(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/ip/IpManager;

    #@119
    move-result-object v1

    #@11a
    invoke-virtual {v1, v13}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11d
    monitor-exit v2

    #@11e
    .line 340
    invoke-virtual {v11}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->waitForProvisioning()Landroid/net/LinkProperties;

    #@121
    move-result-object v12

    #@122
    .line 341
    .restart local v12    # "linkProperties":Landroid/net/LinkProperties;
    if-nez v12, :cond_1

    #@124
    .line 342
    const-string/jumbo v1, "EthernetNetworkFactory"

    #@127
    const-string/jumbo v2, "IP provisioning error"

    #@12a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 345
    move-object/from16 v0, p0

    #@12f
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@131
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get2(Lcom/android/server/ethernet/EthernetNetworkFactory;)Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@134
    move-result-object v1

    #@135
    const/4 v2, -0x1

    #@136
    invoke-virtual {v1, v2}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->setScoreFilter(I)V

    #@139
    .line 346
    move-object/from16 v0, p0

    #@13b
    iget-object v2, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@13d
    monitor-enter v2

    #@13e
    .line 347
    :try_start_2
    move-object/from16 v0, p0

    #@140
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@142
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-wrap2(Lcom/android/server/ethernet/EthernetNetworkFactory;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@145
    monitor-exit v2

    #@146
    .line 349
    return-void

    #@147
    .line 318
    .end local v12    # "linkProperties":Landroid/net/LinkProperties;
    .end local v13    # "provisioningConfiguration":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .end local v14    # "tcpBufferSizes":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@148
    monitor-exit v2

    #@149
    throw v1

    #@14a
    .line 346
    .restart local v12    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v13    # "provisioningConfiguration":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .restart local v14    # "tcpBufferSizes":Ljava/lang/String;
    :catchall_1
    move-exception v1

    #@14b
    monitor-exit v2

    #@14c
    throw v1

    #@14d
    .line 360
    .end local v11    # "ipmCallback":Landroid/net/ip/IpManager$WaitForProvisioningCallback;
    .end local v13    # "provisioningConfiguration":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .end local v14    # "tcpBufferSizes":Ljava/lang/String;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    #@14f
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@151
    invoke-static {v1, v12}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-set2(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    #@154
    .line 361
    move-object/from16 v0, p0

    #@156
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@158
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get10(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@15b
    move-result-object v1

    #@15c
    const/4 v2, 0x1

    #@15d
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@160
    .line 362
    move-object/from16 v0, p0

    #@162
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@164
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get10(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@167
    move-result-object v1

    #@168
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@16a
    move-object/from16 v0, p0

    #@16c
    iget-object v3, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@16e
    invoke-static {v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get3(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;

    #@171
    move-result-object v3

    #@172
    const/4 v4, 0x0

    #@173
    invoke-virtual {v1, v2, v4, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@176
    .line 365
    move-object/from16 v0, p0

    #@178
    iget-object v0, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@17a
    move-object/from16 v16, v0

    #@17c
    new-instance v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1$2;

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v2, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@182
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get2(Lcom/android/server/ethernet/EthernetNetworkFactory;)Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    #@185
    move-result-object v2

    #@186
    invoke-virtual {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->getLooper()Landroid/os/Looper;

    #@189
    move-result-object v3

    #@18a
    move-object/from16 v0, p0

    #@18c
    iget-object v2, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@18e
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get0(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/content/Context;

    #@191
    move-result-object v4

    #@192
    .line 366
    const-string/jumbo v5, "Ethernet"

    #@195
    move-object/from16 v0, p0

    #@197
    iget-object v2, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@199
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get10(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@19c
    move-result-object v6

    #@19d
    move-object/from16 v0, p0

    #@19f
    iget-object v2, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@1a1
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get9(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkCapabilities;

    #@1a4
    move-result-object v7

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget-object v2, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@1a9
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get6(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/LinkProperties;

    #@1ac
    move-result-object v8

    #@1ad
    .line 367
    const/16 v9, 0x46

    #@1af
    move-object/from16 v2, p0

    #@1b1
    .line 365
    invoke-direct/range {v1 .. v9}, Lcom/android/server/ethernet/EthernetNetworkFactory$1$2;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory$1;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    #@1b4
    move-object/from16 v0, v16

    #@1b6
    invoke-static {v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-set3(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    #@1b9
    .line 391
    move-object/from16 v0, p0

    #@1bb
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@1bd
    const/4 v2, 0x0

    #@1be
    invoke-static {v1, v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-set1(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1c1
    monitor-exit v15

    #@1c2
    .line 395
    const-string/jumbo v1, "EthernetNetworkFactory"

    #@1c5
    const-string/jumbo v2, "exiting ipProvisioningThread(%s): mNetworkInfo=%s"

    #@1c8
    const/4 v3, 0x2

    #@1c9
    new-array v3, v3, [Ljava/lang/Object;

    #@1cb
    .line 396
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@1ce
    move-result-object v4

    #@1cf
    const/4 v5, 0x0

    #@1d0
    aput-object v4, v3, v5

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    iget-object v4, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@1d6
    invoke-static {v4}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get10(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@1d9
    move-result-object v4

    #@1da
    const/4 v5, 0x1

    #@1db
    aput-object v4, v3, v5

    #@1dd
    .line 395
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e0
    move-result-object v2

    #@1e1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e4
    .line 288
    return-void

    #@1e5
    .line 353
    :catchall_2
    move-exception v1

    #@1e6
    monitor-exit v15

    #@1e7
    throw v1
.end method
