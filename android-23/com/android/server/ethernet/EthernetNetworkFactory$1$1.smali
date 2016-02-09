.class Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;
.super Landroid/net/NetworkAgent;
.source "EthernetNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ethernet/EthernetNetworkFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;


# direct methods
.method constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory$1;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 8
    .param p1, "this$1"    # Lcom/android/server/ethernet/EthernetNetworkFactory$1;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/content/Context;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Landroid/net/NetworkInfo;
    .param p6, "$anonymous4"    # Landroid/net/NetworkCapabilities;
    .param p7, "$anonymous5"    # Landroid/net/LinkProperties;
    .param p8, "$anonymous6"    # I

    #@0
    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move-object v2, p3

    #@5
    move-object v3, p4

    #@6
    move-object v4, p5

    #@7
    move-object v5, p6

    #@8
    move-object v6, p7

    #@9
    move/from16 v7, p8

    #@b
    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    #@e
    .line 320
    return-void
.end method


# virtual methods
.method public unwanted()V
    .locals 6

    #@0
    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@2
    iget-object v2, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@4
    monitor-enter v2

    #@5
    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@7
    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@9
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get7(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkAgent;

    #@c
    move-result-object v1

    #@d
    if-ne p0, v1, :cond_0

    #@f
    .line 324
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    #@16
    .line 326
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@18
    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@1a
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get5(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/LinkProperties;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    #@21
    .line 327
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@23
    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@25
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get9(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@28
    move-result-object v1

    #@29
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@2b
    .line 328
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@2d
    iget-object v4, v4, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2f
    invoke-static {v4}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get3(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    .line 327
    const/4 v5, 0x0

    #@34
    invoke-virtual {v1, v3, v5, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 329
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@39
    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@3b
    invoke-virtual {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateAgent()V

    #@3e
    .line 330
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@40
    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@42
    const/4 v3, 0x0

    #@43
    invoke-static {v1, v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-set1(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 332
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@48
    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@4a
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get6(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/os/INetworkManagementService;

    #@4d
    move-result-object v1

    #@4e
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get4()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-interface {v1, v3}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    :goto_0
    monitor-exit v2

    #@56
    .line 321
    return-void

    #@57
    .line 333
    :catch_0
    move-exception v0

    #@58
    .line 334
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "EthernetNetworkFactory"

    #@5b
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v4, "Failed to clear addresses or disable ipv6"

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@72
    goto :goto_0

    #@73
    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@74
    monitor-exit v2

    #@75
    throw v1

    #@76
    .line 337
    :cond_0
    :try_start_3
    const-string/jumbo v1, "EthernetNetworkFactory"

    #@79
    const-string/jumbo v3, "Ignoring unwanted as we have a more modern instance"

    #@7c
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7f
    goto :goto_0
.end method
