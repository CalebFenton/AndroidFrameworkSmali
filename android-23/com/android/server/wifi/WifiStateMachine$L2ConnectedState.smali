.class Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 7943
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 11

    #@0
    .prologue
    .line 7946
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)I

    #@5
    move-result v1

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set36(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@b
    .line 7947
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 7948
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1a
    move-result v1

    #@1b
    const v2, 0x20053

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@22
    .line 7950
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@27
    move-result-object v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 7951
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    const-string/jumbo v1, "Have NetworkAgent when entering L2Connected"

    #@2f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@32
    .line 7952
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@36
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@39
    .line 7954
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@3d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@40
    .line 7956
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@49
    move-result v0

    #@4a
    if-nez v0, :cond_2

    #@4c
    .line 7957
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    #@51
    move-result-object v0

    #@52
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@54
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    #@5b
    .line 7959
    :cond_2
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5d
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@5f
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@61
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@63
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@6a
    move-result-object v2

    #@6b
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6d
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@70
    move-result-object v3

    #@71
    .line 7960
    const-string/jumbo v4, "WifiNetworkAgent"

    #@74
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@79
    move-result-object v5

    #@7a
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7c
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;

    #@7f
    move-result-object v6

    #@80
    .line 7961
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@82
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    #@85
    move-result-object v7

    #@86
    const/16 v8, 0x3c

    #@88
    .line 7959
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    #@8b
    invoke-static {v10, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@8e
    .line 7966
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@90
    const-string/jumbo v1, "L2ConnectedState"

    #@93
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    #@96
    .line 7969
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@98
    new-instance v1, Landroid/net/IpReachabilityMonitor;

    #@9a
    .line 7970
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9c
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    .line 7971
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$1;

    #@a2
    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$1;-><init>(Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;)V

    #@a5
    .line 7969
    invoke-direct {v1, v2, v3}, Landroid/net/IpReachabilityMonitor;-><init>(Ljava/lang/String;Landroid/net/IpReachabilityMonitor$Callback;)V

    #@a8
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set23(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/IpReachabilityMonitor;)Landroid/net/IpReachabilityMonitor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@ab
    .line 7945
    :goto_0
    return-void

    #@ac
    .line 7977
    :catch_0
    move-exception v9

    #@ad
    .line 7978
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "Failed to create IpReachabilityMonitor"

    #@b0
    invoke-static {v0, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b3
    goto :goto_0
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 7984
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 7985
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/net/IpReachabilityMonitor;->stop()V

    #@12
    .line 7986
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set23(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/IpReachabilityMonitor;)Landroid/net/IpReachabilityMonitor;

    #@17
    .line 7994
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 7995
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    .line 7996
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "leaving L2ConnectedState state nid="

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@2e
    move-result v2

    #@2f
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 7997
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    if-eqz v1, :cond_1

    #@3e
    .line 7998
    const-string/jumbo v1, " "

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 8001
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@50
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    if-nez v1, :cond_2

    #@56
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@5b
    move-result v1

    #@5c
    const/4 v2, -0x1

    #@5d
    if-eq v1, v2, :cond_3

    #@5f
    .line 8002
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@61
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@64
    .line 7983
    :cond_3
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 20
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 8008
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@11
    .line 8010
    move-object/from16 v0, p1

    #@13
    iget v2, v0, Landroid/os/Message;->what:I

    #@15
    sparse-switch v2, :sswitch_data_0

    #@18
    .line 8318
    const/4 v2, 0x0

    #@19
    return v2

    #@1a
    .line 8012
    :sswitch_0
    move-object/from16 v0, p0

    #@1c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    #@21
    .line 8321
    :cond_0
    :goto_0
    :sswitch_1
    const/4 v2, 0x1

    #@22
    return v2

    #@23
    .line 8015
    :sswitch_2
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    #@2a
    .line 8016
    move-object/from16 v0, p1

    #@2c
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@2e
    const/4 v3, 0x1

    #@2f
    if-ne v2, v3, :cond_2

    #@31
    .line 8017
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_1

    #@37
    move-object/from16 v0, p0

    #@39
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    const-string/jumbo v3, "DHCP successful"

    #@3e
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@41
    .line 8018
    :cond_1
    move-object/from16 v0, p0

    #@43
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45
    move-object/from16 v0, p1

    #@47
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@49
    check-cast v2, Landroid/net/DhcpResults;

    #@4b
    const/4 v5, 0x1

    #@4c
    invoke-static {v3, v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V

    #@4f
    goto :goto_0

    #@50
    .line 8021
    :cond_2
    move-object/from16 v0, p1

    #@52
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@54
    const/4 v3, 0x2

    #@55
    if-ne v2, v3, :cond_0

    #@57
    .line 8022
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5b
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@5e
    move-result-object v2

    #@5f
    const/4 v3, 0x4

    #@60
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    #@63
    .line 8023
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_4

    #@69
    .line 8024
    const/4 v9, -0x1

    #@6a
    .line 8025
    .local v9, "count":I
    move-object/from16 v0, p0

    #@6c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@71
    move-result-object v8

    #@72
    .line 8026
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_3

    #@74
    .line 8027
    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@76
    .line 8029
    :cond_3
    move-object/from16 v0, p0

    #@78
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7a
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v5, "DHCP failure count="

    #@82
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@91
    .line 8031
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "count":I
    :cond_4
    move-object/from16 v0, p0

    #@93
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@95
    const/4 v3, 0x2

    #@96
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@99
    goto :goto_0

    #@9a
    .line 8036
    :sswitch_3
    move-object/from16 v0, p0

    #@9c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9e
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;)V

    #@a1
    .line 8037
    move-object/from16 v0, p0

    #@a3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a5
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;)V

    #@a8
    .line 8038
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ac
    move-object/from16 v0, p0

    #@ae
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b0
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@b3
    move-result-object v3

    #@b4
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@b7
    goto/16 :goto_0

    #@b9
    .line 8042
    :sswitch_4
    move-object/from16 v0, p0

    #@bb
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bd
    const/4 v3, 0x1

    #@be
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@c1
    .line 8043
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c5
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;)V

    #@c8
    .line 8044
    move-object/from16 v0, p0

    #@ca
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d0
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@d3
    move-result-object v3

    #@d4
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@d7
    goto/16 :goto_0

    #@d9
    .line 8047
    :sswitch_5
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@dc
    move-result v2

    #@dd
    if-eqz v2, :cond_5

    #@df
    move-object/from16 v0, p1

    #@e1
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e3
    if-eqz v2, :cond_5

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e9
    move-object/from16 v0, p1

    #@eb
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ed
    check-cast v2, Ljava/lang/String;

    #@ef
    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@f2
    .line 8048
    :cond_5
    move-object/from16 v0, p0

    #@f4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f6
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap27(Lcom/android/server/wifi/WifiStateMachine;)V

    #@f9
    .line 8049
    move-object/from16 v0, p0

    #@fb
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@101
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@104
    move-result-object v3

    #@105
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@108
    goto/16 :goto_0

    #@10a
    .line 8052
    :sswitch_6
    move-object/from16 v0, p0

    #@10c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10e
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@111
    move-result-object v2

    #@112
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@115
    .line 8053
    move-object/from16 v0, p0

    #@117
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@119
    move-object/from16 v0, p0

    #@11b
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11d
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@120
    move-result-object v3

    #@121
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@124
    goto/16 :goto_0

    #@126
    .line 8056
    :sswitch_7
    move-object/from16 v0, p1

    #@128
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@12a
    const/4 v3, 0x1

    #@12b
    if-ne v2, v3, :cond_0

    #@12d
    .line 8057
    move-object/from16 v0, p0

    #@12f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@131
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@134
    move-result-object v2

    #@135
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@138
    .line 8058
    move-object/from16 v0, p0

    #@13a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13c
    const/4 v3, 0x1

    #@13d
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set43(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@140
    .line 8059
    move-object/from16 v0, p0

    #@142
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@144
    move-object/from16 v0, p0

    #@146
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@148
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@14b
    move-result-object v3

    #@14c
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@14f
    goto/16 :goto_0

    #@151
    .line 8063
    :sswitch_8
    move-object/from16 v0, p1

    #@153
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@155
    const/4 v3, 0x1

    #@156
    if-eq v2, v3, :cond_6

    #@158
    .line 8064
    move-object/from16 v0, p0

    #@15a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15c
    const v3, 0x20049

    #@15f
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@162
    .line 8065
    move-object/from16 v0, p0

    #@164
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@166
    move-object/from16 v0, p1

    #@168
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@16b
    .line 8066
    move-object/from16 v0, p1

    #@16d
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@16f
    const/4 v3, 0x3

    #@170
    if-ne v2, v3, :cond_6

    #@172
    .line 8067
    move-object/from16 v0, p0

    #@174
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@176
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->noteWifiDisabledWhileAssociated()V

    #@179
    .line 8070
    :cond_6
    move-object/from16 v0, p0

    #@17b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@180
    move-result-object v2

    #@181
    .line 8071
    const/4 v3, -0x1

    #@182
    .line 8070
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@185
    goto/16 :goto_0

    #@187
    .line 8074
    :sswitch_9
    move-object/from16 v0, p0

    #@189
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@18e
    move-result v3

    #@18f
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@192
    .line 8075
    move-object/from16 v0, p0

    #@194
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@196
    move-object/from16 v0, p1

    #@198
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@19b
    goto/16 :goto_0

    #@19d
    .line 8078
    :sswitch_a
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1a0
    move-result v2

    #@1a1
    if-eqz v2, :cond_7

    #@1a3
    .line 8079
    move-object/from16 v0, p0

    #@1a5
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a7
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1ac
    const-string/jumbo v5, "CMD_START_SCAN source "

    #@1af
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v3

    #@1b3
    move-object/from16 v0, p1

    #@1b5
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@1b7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v3

    #@1bb
    .line 8080
    const-string/jumbo v5, " txSuccessRate="

    #@1be
    .line 8079
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v3

    #@1c2
    .line 8080
    const-string/jumbo v5, "%.2f"

    #@1c5
    const/4 v6, 0x1

    #@1c6
    new-array v6, v6, [Ljava/lang/Object;

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1cc
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1cf
    move-result-object v7

    #@1d0
    iget-wide v0, v7, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@1d2
    move-wide/from16 v18, v0

    #@1d4
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1d7
    move-result-object v7

    #@1d8
    const/16 v18, 0x0

    #@1da
    aput-object v7, v6, v18

    #@1dc
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1df
    move-result-object v5

    #@1e0
    .line 8079
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v3

    #@1e4
    .line 8081
    const-string/jumbo v5, " rxSuccessRate="

    #@1e7
    .line 8079
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v3

    #@1eb
    .line 8081
    const-string/jumbo v5, "%.2f"

    #@1ee
    const/4 v6, 0x1

    #@1ef
    new-array v6, v6, [Ljava/lang/Object;

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f5
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1f8
    move-result-object v7

    #@1f9
    iget-wide v0, v7, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@1fb
    move-wide/from16 v18, v0

    #@1fd
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@200
    move-result-object v7

    #@201
    const/16 v18, 0x0

    #@203
    aput-object v7, v6, v18

    #@205
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@208
    move-result-object v5

    #@209
    .line 8079
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v3

    #@20d
    .line 8082
    const-string/jumbo v5, " targetRoamBSSID="

    #@210
    .line 8079
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v3

    #@214
    .line 8082
    move-object/from16 v0, p0

    #@216
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@218
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@21b
    move-result-object v5

    #@21c
    .line 8079
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v3

    #@220
    .line 8083
    const-string/jumbo v5, " RSSI="

    #@223
    .line 8079
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v3

    #@227
    .line 8083
    move-object/from16 v0, p0

    #@229
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22b
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@22e
    move-result-object v5

    #@22f
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@232
    move-result v5

    #@233
    .line 8079
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@236
    move-result-object v3

    #@237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23a
    move-result-object v3

    #@23b
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@23e
    .line 8085
    :cond_7
    move-object/from16 v0, p1

    #@240
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@242
    const/4 v3, -0x2

    #@243
    if-ne v2, v3, :cond_1b

    #@245
    .line 8088
    move-object/from16 v0, p0

    #@247
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@249
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    #@24c
    move-result v2

    #@24d
    if-nez v2, :cond_8

    #@24f
    .line 8089
    const/4 v2, 0x1

    #@250
    return v2

    #@251
    .line 8091
    :cond_8
    move-object/from16 v0, p0

    #@253
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@255
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@258
    move-result v4

    #@259
    .line 8093
    .local v4, "shouldScan":Z
    move-object/from16 v0, p0

    #@25b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25d
    move-object/from16 v0, p1

    #@25f
    iget v3, v0, Landroid/os/Message;->arg2:I

    #@261
    .line 8095
    move-object/from16 v0, p0

    #@263
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@265
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@268
    move-result-object v5

    #@269
    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@26b
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@26e
    move-result v5

    #@26f
    .line 8096
    const/4 v6, 0x0

    #@270
    const/4 v7, 0x0

    #@271
    .line 8093
    invoke-static/range {v2 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachine;IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z

    #@274
    move-result v2

    #@275
    if-nez v2, :cond_9

    #@277
    .line 8097
    move-object/from16 v0, p0

    #@279
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()I

    #@27e
    move-result v3

    #@27f
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@282
    .line 8098
    move-object/from16 v0, p0

    #@284
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@286
    new-instance v3, Ljava/lang/StringBuilder;

    #@288
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28b
    const-string/jumbo v5, "L2Connected CMD_START_SCAN source "

    #@28e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@291
    move-result-object v3

    #@292
    .line 8099
    move-object/from16 v0, p1

    #@294
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@296
    .line 8098
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@299
    move-result-object v3

    #@29a
    .line 8100
    const-string/jumbo v5, " "

    #@29d
    .line 8098
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v3

    #@2a1
    .line 8100
    move-object/from16 v0, p1

    #@2a3
    iget v5, v0, Landroid/os/Message;->arg2:I

    #@2a5
    .line 8098
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v3

    #@2a9
    .line 8100
    const-string/jumbo v5, ", "

    #@2ac
    .line 8098
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v3

    #@2b0
    .line 8100
    move-object/from16 v0, p0

    #@2b2
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b4
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get22(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@2b7
    move-result-object v5

    #@2b8
    .line 8098
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2bb
    move-result-object v3

    #@2bc
    .line 8101
    const-string/jumbo v5, " -> obsolete"

    #@2bf
    .line 8098
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v3

    #@2c3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c6
    move-result-object v3

    #@2c7
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@2ca
    .line 8102
    const/4 v2, 0x1

    #@2cb
    return v2

    #@2cc
    .line 8104
    :cond_9
    move-object/from16 v0, p0

    #@2ce
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d0
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2d3
    move-result-object v2

    #@2d4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@2d7
    move-result v2

    #@2d8
    if-eqz v2, :cond_a

    #@2da
    .line 8105
    move-object/from16 v0, p0

    #@2dc
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2de
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e3
    const-string/jumbo v5, "L2Connected CMD_START_SCAN source "

    #@2e6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e9
    move-result-object v3

    #@2ea
    .line 8106
    move-object/from16 v0, p1

    #@2ec
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@2ee
    .line 8105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f1
    move-result-object v3

    #@2f2
    .line 8107
    const-string/jumbo v5, " "

    #@2f5
    .line 8105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v3

    #@2f9
    .line 8107
    move-object/from16 v0, p1

    #@2fb
    iget v5, v0, Landroid/os/Message;->arg2:I

    #@2fd
    .line 8105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@300
    move-result-object v3

    #@301
    .line 8107
    const-string/jumbo v5, ", "

    #@304
    .line 8105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@307
    move-result-object v3

    #@308
    .line 8107
    move-object/from16 v0, p0

    #@30a
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@30c
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get22(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@30f
    move-result-object v5

    #@310
    .line 8105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@313
    move-result-object v3

    #@314
    .line 8108
    const-string/jumbo v5, " ignore because P2P is connected"

    #@317
    .line 8105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31a
    move-result-object v3

    #@31b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31e
    move-result-object v3

    #@31f
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@322
    .line 8109
    move-object/from16 v0, p0

    #@324
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@326
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@329
    move-result v3

    #@32a
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@32d
    .line 8110
    const/4 v2, 0x1

    #@32e
    return v2

    #@32f
    .line 8112
    :cond_a
    const/16 v17, 0x0

    #@331
    .line 8113
    .local v17, "tryFullBandScan":Z
    const/4 v13, 0x0

    #@332
    .line 8114
    .local v13, "restrictChannelList":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@335
    move-result-wide v14

    #@336
    .line 8115
    .local v14, "now_ms":J
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@339
    move-result v2

    #@33a
    if-eqz v2, :cond_b

    #@33c
    .line 8116
    move-object/from16 v0, p0

    #@33e
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@340
    new-instance v3, Ljava/lang/StringBuilder;

    #@342
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@345
    const-string/jumbo v5, "CMD_START_SCAN with age="

    #@348
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v3

    #@34c
    .line 8117
    move-object/from16 v0, p0

    #@34e
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@350
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    #@353
    move-result-wide v6

    #@354
    sub-long v6, v14, v6

    #@356
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@359
    move-result-object v5

    #@35a
    .line 8116
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35d
    move-result-object v3

    #@35e
    .line 8118
    const-string/jumbo v5, " interval="

    #@361
    .line 8116
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@364
    move-result-object v3

    #@365
    .line 8118
    move-object/from16 v0, p0

    #@367
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@369
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@36c
    move-result-wide v6

    #@36d
    .line 8116
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@370
    move-result-object v3

    #@371
    .line 8119
    const-string/jumbo v5, " maxinterval="

    #@374
    .line 8116
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@377
    move-result-object v3

    #@378
    .line 8119
    const-wide/32 v6, 0x493e0

    #@37b
    .line 8116
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37e
    move-result-object v3

    #@37f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@382
    move-result-object v3

    #@383
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@386
    .line 8121
    :cond_b
    move-object/from16 v0, p0

    #@388
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38a
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@38d
    move-result-object v2

    #@38e
    if-eqz v2, :cond_13

    #@390
    .line 8122
    move-object/from16 v0, p0

    #@392
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@394
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@397
    move-result-object v2

    #@398
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@39a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@39d
    move-result v2

    #@39e
    if-eqz v2, :cond_d

    #@3a0
    .line 8123
    move-object/from16 v0, p0

    #@3a2
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3a4
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    #@3a7
    move-result-wide v2

    #@3a8
    sub-long v2, v14, v2

    #@3aa
    .line 8124
    move-object/from16 v0, p0

    #@3ac
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3ae
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@3b1
    move-result-wide v6

    #@3b2
    .line 8123
    cmp-long v2, v2, v6

    #@3b4
    if-lez v2, :cond_d

    #@3b6
    .line 8125
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@3b9
    move-result v2

    #@3ba
    if-eqz v2, :cond_c

    #@3bc
    .line 8126
    move-object/from16 v0, p0

    #@3be
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c0
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c5
    const-string/jumbo v5, "CMD_START_SCAN try full band scan age="

    #@3c8
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cb
    move-result-object v3

    #@3cc
    .line 8127
    move-object/from16 v0, p0

    #@3ce
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3d0
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    #@3d3
    move-result-wide v6

    #@3d4
    sub-long v6, v14, v6

    #@3d6
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3d9
    move-result-object v5

    #@3da
    .line 8126
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3dd
    move-result-object v3

    #@3de
    .line 8128
    const-string/jumbo v5, " interval="

    #@3e1
    .line 8126
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e4
    move-result-object v3

    #@3e5
    .line 8128
    move-object/from16 v0, p0

    #@3e7
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3e9
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@3ec
    move-result-wide v6

    #@3ed
    .line 8126
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3f0
    move-result-object v3

    #@3f1
    .line 8129
    const-string/jumbo v5, " maxinterval="

    #@3f4
    .line 8126
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f7
    move-result-object v3

    #@3f8
    .line 8129
    const-wide/32 v6, 0x493e0

    #@3fb
    .line 8126
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3fe
    move-result-object v3

    #@3ff
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@402
    move-result-object v3

    #@403
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@406
    .line 8131
    :cond_c
    const/16 v17, 0x1

    #@408
    .line 8134
    :cond_d
    move-object/from16 v0, p0

    #@40a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@40c
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@40f
    move-result-object v2

    #@410
    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@412
    .line 8135
    move-object/from16 v0, p0

    #@414
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@416
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@419
    move-result-object v5

    #@41a
    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    #@41c
    int-to-double v6, v5

    #@41d
    .line 8134
    cmpl-double v2, v2, v6

    #@41f
    if-gtz v2, :cond_e

    #@421
    .line 8136
    move-object/from16 v0, p0

    #@423
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@425
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@428
    move-result-object v2

    #@429
    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@42b
    .line 8137
    move-object/from16 v0, p0

    #@42d
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42f
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@432
    move-result-object v5

    #@433
    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    #@435
    int-to-double v6, v5

    #@436
    .line 8136
    cmpl-double v2, v2, v6

    #@438
    if-lez v2, :cond_10

    #@43a
    .line 8139
    :cond_e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@43d
    move-result v2

    #@43e
    if-eqz v2, :cond_f

    #@440
    .line 8140
    move-object/from16 v0, p0

    #@442
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@444
    const-string/jumbo v3, "CMD_START_SCAN prevent full band scan due to pkt rate"

    #@447
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@44a
    .line 8143
    :cond_f
    const/16 v17, 0x0

    #@44c
    .line 8146
    :cond_10
    move-object/from16 v0, p0

    #@44e
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@450
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@453
    move-result-object v2

    #@454
    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@456
    .line 8147
    move-object/from16 v0, p0

    #@458
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45a
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@45d
    move-result-object v5

    #@45e
    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    #@460
    int-to-double v6, v5

    #@461
    .line 8146
    cmpl-double v2, v2, v6

    #@463
    if-gtz v2, :cond_11

    #@465
    .line 8148
    move-object/from16 v0, p0

    #@467
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@469
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@46c
    move-result-object v2

    #@46d
    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@46f
    .line 8149
    move-object/from16 v0, p0

    #@471
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@473
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@476
    move-result-object v5

    #@477
    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    #@479
    int-to-double v6, v5

    #@47a
    .line 8148
    cmpl-double v2, v2, v6

    #@47c
    if-lez v2, :cond_13

    #@47e
    .line 8151
    :cond_11
    const/4 v13, 0x1

    #@47f
    .line 8152
    move-object/from16 v0, p0

    #@481
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@483
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@486
    move-result-object v2

    #@487
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    #@489
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@48c
    move-result v2

    #@48d
    if-nez v2, :cond_13

    #@48f
    .line 8153
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@492
    move-result v2

    #@493
    if-eqz v2, :cond_12

    #@495
    .line 8154
    move-object/from16 v0, p0

    #@497
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@499
    new-instance v3, Ljava/lang/StringBuilder;

    #@49b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49e
    const-string/jumbo v5, "CMD_START_SCAN source "

    #@4a1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a4
    move-result-object v3

    #@4a5
    move-object/from16 v0, p1

    #@4a7
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@4a9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4ac
    move-result-object v3

    #@4ad
    .line 8155
    const-string/jumbo v5, " ...and ignore scans"

    #@4b0
    .line 8154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b3
    move-result-object v3

    #@4b4
    .line 8156
    const-string/jumbo v5, " tx="

    #@4b7
    .line 8154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ba
    move-result-object v3

    #@4bb
    .line 8156
    const-string/jumbo v5, "%.2f"

    #@4be
    const/4 v6, 0x1

    #@4bf
    new-array v6, v6, [Ljava/lang/Object;

    #@4c1
    move-object/from16 v0, p0

    #@4c3
    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4c5
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@4c8
    move-result-object v7

    #@4c9
    iget-wide v0, v7, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@4cb
    move-wide/from16 v18, v0

    #@4cd
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@4d0
    move-result-object v7

    #@4d1
    const/16 v18, 0x0

    #@4d3
    aput-object v7, v6, v18

    #@4d5
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4d8
    move-result-object v5

    #@4d9
    .line 8154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4dc
    move-result-object v3

    #@4dd
    .line 8157
    const-string/jumbo v5, " rx="

    #@4e0
    .line 8154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e3
    move-result-object v3

    #@4e4
    .line 8157
    const-string/jumbo v5, "%.2f"

    #@4e7
    const/4 v6, 0x1

    #@4e8
    new-array v6, v6, [Ljava/lang/Object;

    #@4ea
    move-object/from16 v0, p0

    #@4ec
    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4ee
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@4f1
    move-result-object v7

    #@4f2
    iget-wide v0, v7, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@4f4
    move-wide/from16 v18, v0

    #@4f6
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@4f9
    move-result-object v7

    #@4fa
    const/16 v18, 0x0

    #@4fc
    aput-object v7, v6, v18

    #@4fe
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@501
    move-result-object v5

    #@502
    .line 8154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@505
    move-result-object v3

    #@506
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@509
    move-result-object v3

    #@50a
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@50d
    .line 8159
    :cond_12
    move-object/from16 v0, p0

    #@50f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@511
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get6()I

    #@514
    move-result v3

    #@515
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@518
    .line 8160
    const/4 v2, 0x1

    #@519
    return v2

    #@51a
    .line 8165
    :cond_13
    move-object/from16 v0, p0

    #@51c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@51e
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@521
    move-result-object v10

    #@522
    .line 8166
    .local v10, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@525
    move-result v2

    #@526
    if-eqz v2, :cond_14

    #@528
    .line 8167
    move-object/from16 v0, p0

    #@52a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@52c
    new-instance v3, Ljava/lang/StringBuilder;

    #@52e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@531
    const-string/jumbo v5, "CMD_START_SCAN full="

    #@534
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@537
    move-result-object v3

    #@538
    move/from16 v0, v17

    #@53a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53d
    move-result-object v3

    #@53e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@541
    move-result-object v3

    #@542
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@545
    .line 8170
    :cond_14
    if-eqz v10, :cond_1a

    #@547
    .line 8171
    move-object/from16 v0, p0

    #@549
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@54b
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@54e
    move-result-wide v2

    #@54f
    .line 8172
    move-object/from16 v0, p0

    #@551
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@553
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@556
    move-result-object v5

    #@557
    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@559
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@55c
    move-result v5

    #@55d
    int-to-long v6, v5

    #@55e
    .line 8171
    cmp-long v2, v2, v6

    #@560
    if-gez v2, :cond_15

    #@562
    .line 8174
    move-object/from16 v0, p0

    #@564
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@566
    .line 8175
    move-object/from16 v0, p0

    #@568
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56a
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@56d
    move-result-object v3

    #@56e
    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@570
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@573
    move-result v3

    #@574
    int-to-long v6, v3

    #@575
    .line 8174
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@578
    .line 8177
    :cond_15
    if-eqz v17, :cond_17

    #@57a
    .line 8178
    move-object/from16 v0, p0

    #@57c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@57e
    invoke-static {v2, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@581
    .line 8179
    move-object/from16 v0, p0

    #@583
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@585
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@588
    move-result-wide v2

    #@589
    .line 8180
    move-object/from16 v0, p0

    #@58b
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58d
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@590
    move-result-object v5

    #@591
    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    #@593
    int-to-long v6, v5

    #@594
    .line 8179
    cmp-long v2, v2, v6

    #@596
    if-gez v2, :cond_16

    #@598
    .line 8182
    move-object/from16 v0, p0

    #@59a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@59c
    .line 8183
    move-object/from16 v0, p0

    #@59e
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5a0
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@5a3
    move-result-wide v6

    #@5a4
    .line 8184
    move-object/from16 v0, p0

    #@5a6
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5a8
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@5ab
    move-result-object v3

    #@5ac
    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5ae
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5b1
    move-result v3

    #@5b2
    int-to-long v0, v3

    #@5b3
    move-wide/from16 v18, v0

    #@5b5
    .line 8183
    mul-long v6, v6, v18

    #@5b7
    .line 8184
    const-wide/16 v18, 0x8

    #@5b9
    .line 8183
    div-long v6, v6, v18

    #@5bb
    .line 8182
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@5be
    .line 8186
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@5c1
    move-result v2

    #@5c2
    if-eqz v2, :cond_16

    #@5c4
    .line 8187
    move-object/from16 v0, p0

    #@5c6
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5c8
    new-instance v3, Ljava/lang/StringBuilder;

    #@5ca
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5cd
    const-string/jumbo v5, "CMD_START_SCAN bump interval ="

    #@5d0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d3
    move-result-object v3

    #@5d4
    .line 8188
    move-object/from16 v0, p0

    #@5d6
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5d8
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@5db
    move-result-wide v6

    #@5dc
    .line 8187
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5df
    move-result-object v3

    #@5e0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e3
    move-result-object v3

    #@5e4
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@5e7
    .line 8191
    :cond_16
    move-object/from16 v0, p0

    #@5e9
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5eb
    .line 8192
    const/4 v3, 0x1

    #@5ec
    .line 8191
    move-object/from16 v0, p1

    #@5ee
    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    #@5f1
    goto/16 :goto_0

    #@5f3
    .line 8194
    :cond_17
    move-object/from16 v0, p0

    #@5f5
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5f7
    invoke-virtual {v2, v10, v13}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    #@5fa
    move-result v2

    #@5fb
    if-nez v2, :cond_0

    #@5fd
    .line 8196
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@600
    move-result v2

    #@601
    if-eqz v2, :cond_18

    #@603
    .line 8197
    move-object/from16 v0, p0

    #@605
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@607
    const-string/jumbo v3, "starting scan,  did not find channels -> full"

    #@60a
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@60d
    .line 8200
    :cond_18
    move-object/from16 v0, p0

    #@60f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@611
    invoke-static {v2, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@614
    .line 8201
    move-object/from16 v0, p0

    #@616
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@618
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@61b
    move-result-wide v2

    #@61c
    .line 8202
    move-object/from16 v0, p0

    #@61e
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@620
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@623
    move-result-object v5

    #@624
    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    #@626
    int-to-long v6, v5

    #@627
    .line 8201
    cmp-long v2, v2, v6

    #@629
    if-gez v2, :cond_19

    #@62b
    .line 8204
    move-object/from16 v0, p0

    #@62d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62f
    .line 8205
    move-object/from16 v0, p0

    #@631
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@633
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@636
    move-result-wide v6

    #@637
    .line 8206
    move-object/from16 v0, p0

    #@639
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@63b
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@63e
    move-result-object v3

    #@63f
    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    #@641
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@644
    move-result v3

    #@645
    int-to-long v0, v3

    #@646
    move-wide/from16 v18, v0

    #@648
    .line 8205
    mul-long v6, v6, v18

    #@64a
    .line 8206
    const-wide/16 v18, 0x8

    #@64c
    .line 8205
    div-long v6, v6, v18

    #@64e
    .line 8204
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@651
    .line 8208
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@654
    move-result v2

    #@655
    if-eqz v2, :cond_19

    #@657
    .line 8209
    move-object/from16 v0, p0

    #@659
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65b
    new-instance v3, Ljava/lang/StringBuilder;

    #@65d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@660
    const-string/jumbo v5, "CMD_START_SCAN bump interval ="

    #@663
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@666
    move-result-object v3

    #@667
    .line 8210
    move-object/from16 v0, p0

    #@669
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@66b
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)J

    #@66e
    move-result-wide v6

    #@66f
    .line 8209
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@672
    move-result-object v3

    #@673
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@676
    move-result-object v3

    #@677
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@67a
    .line 8213
    :cond_19
    move-object/from16 v0, p0

    #@67c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@67e
    .line 8214
    const/4 v3, 0x1

    #@67f
    .line 8213
    move-object/from16 v0, p1

    #@681
    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    #@684
    goto/16 :goto_0

    #@686
    .line 8219
    :cond_1a
    move-object/from16 v0, p0

    #@688
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68a
    const-string/jumbo v3, "CMD_START_SCAN : connected mode and no configuration"

    #@68d
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@690
    .line 8220
    move-object/from16 v0, p0

    #@692
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@694
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    #@697
    move-result v3

    #@698
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@69b
    goto/16 :goto_0

    #@69d
    .line 8224
    .end local v4    # "shouldScan":Z
    .end local v10    # "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "restrictChannelList":Z
    .end local v14    # "now_ms":J
    .end local v17    # "tryFullBandScan":Z
    :cond_1b
    const/4 v2, 0x0

    #@69e
    return v2

    #@69f
    .line 8229
    :sswitch_b
    move-object/from16 v0, p1

    #@6a1
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@6a3
    .line 8230
    .local v12, "netId":I
    move-object/from16 v0, p0

    #@6a5
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6a7
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@6aa
    move-result-object v2

    #@6ab
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@6ae
    move-result v2

    #@6af
    if-eq v2, v12, :cond_0

    #@6b1
    .line 8233
    const/4 v2, 0x0

    #@6b2
    return v2

    #@6b3
    .line 8238
    .end local v12    # "netId":I
    :sswitch_c
    move-object/from16 v0, p1

    #@6b5
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@6b7
    move-object/from16 v0, p0

    #@6b9
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6bb
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)I

    #@6be
    move-result v3

    #@6bf
    if-ne v2, v3, :cond_0

    #@6c1
    .line 8239
    move-object/from16 v0, p0

    #@6c3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c5
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@6c8
    move-result-object v2

    #@6c9
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6cb
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6ce
    move-result v2

    #@6cf
    if-eqz v2, :cond_1f

    #@6d1
    .line 8240
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get9()Z

    #@6d4
    move-result v2

    #@6d5
    if-eqz v2, :cond_1c

    #@6d7
    move-object/from16 v0, p0

    #@6d9
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6db
    new-instance v3, Ljava/lang/StringBuilder;

    #@6dd
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e0
    const-string/jumbo v5, " get link layer stats "

    #@6e3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e6
    move-result-object v3

    #@6e7
    move-object/from16 v0, p0

    #@6e9
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6eb
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get102(Lcom/android/server/wifi/WifiStateMachine;)I

    #@6ee
    move-result v5

    #@6ef
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f2
    move-result-object v3

    #@6f3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f6
    move-result-object v3

    #@6f7
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@6fa
    .line 8241
    :cond_1c
    move-object/from16 v0, p0

    #@6fc
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6fe
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    #@701
    move-result v3

    #@702
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@705
    move-result-object v16

    #@706
    .line 8242
    .local v16, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v16, :cond_1e

    #@708
    .line 8244
    move-object/from16 v0, p0

    #@70a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@70c
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@70f
    move-result-object v2

    #@710
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@713
    move-result v2

    #@714
    const/16 v3, -0x7f

    #@716
    if-eq v2, v3, :cond_1e

    #@718
    .line 8245
    move-object/from16 v0, v16

    #@71a
    iget v2, v0, Landroid/net/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    #@71c
    if-eqz v2, :cond_1d

    #@71e
    .line 8246
    move-object/from16 v0, v16

    #@720
    iget v2, v0, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    #@722
    if-nez v2, :cond_1e

    #@724
    .line 8247
    :cond_1d
    const/16 v16, 0x0

    #@726
    .line 8251
    .end local v16    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_1e
    move-object/from16 v0, p0

    #@728
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72a
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@72d
    .line 8252
    move-object/from16 v0, p0

    #@72f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@731
    move-object/from16 v0, v16

    #@733
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiLinkLayerStats;)V

    #@736
    .line 8254
    :cond_1f
    move-object/from16 v0, p0

    #@738
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@73a
    move-object/from16 v0, p0

    #@73c
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@73e
    .line 8255
    move-object/from16 v0, p0

    #@740
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@742
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)I

    #@745
    move-result v5

    #@746
    .line 8254
    const v6, 0x20053

    #@749
    .line 8255
    const/4 v7, 0x0

    #@74a
    .line 8254
    invoke-virtual {v3, v6, v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@74d
    move-result-object v3

    #@74e
    .line 8255
    const-wide/16 v6, 0xbb8

    #@750
    .line 8254
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@753
    .line 8257
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@756
    move-result v2

    #@757
    if-eqz v2, :cond_0

    #@759
    move-object/from16 v0, p0

    #@75b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@75d
    move-object/from16 v0, p0

    #@75f
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@761
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@764
    move-result-object v3

    #@765
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@768
    move-result v3

    #@769
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@76c
    goto/16 :goto_0

    #@76e
    .line 8263
    :sswitch_d
    move-object/from16 v0, p0

    #@770
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@772
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap20(Lcom/android/server/wifi/WifiStateMachine;)V

    #@775
    .line 8264
    move-object/from16 v0, p0

    #@777
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@779
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@77c
    move-result-object v2

    #@77d
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@77f
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@782
    move-result v2

    #@783
    if-eqz v2, :cond_21

    #@785
    .line 8265
    move-object/from16 v0, p0

    #@787
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@789
    move-object/from16 v0, p1

    #@78b
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@78d
    const/4 v5, 0x1

    #@78e
    if-ne v2, v5, :cond_20

    #@790
    const/4 v2, 0x1

    #@791
    :goto_1
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set18(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@794
    .line 8269
    :goto_2
    move-object/from16 v0, p0

    #@796
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@798
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)I

    #@79b
    move-result v3

    #@79c
    add-int/lit8 v3, v3, 0x1

    #@79e
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set36(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@7a1
    .line 8270
    move-object/from16 v0, p0

    #@7a3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7a5
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@7a8
    move-result v2

    #@7a9
    if-eqz v2, :cond_0

    #@7ab
    .line 8272
    move-object/from16 v0, p0

    #@7ad
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7af
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@7b2
    .line 8273
    move-object/from16 v0, p0

    #@7b4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7b6
    move-object/from16 v0, p0

    #@7b8
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7ba
    .line 8274
    move-object/from16 v0, p0

    #@7bc
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7be
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)I

    #@7c1
    move-result v5

    #@7c2
    .line 8273
    const v6, 0x20053

    #@7c5
    .line 8274
    const/4 v7, 0x0

    #@7c6
    .line 8273
    invoke-virtual {v3, v6, v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@7c9
    move-result-object v3

    #@7ca
    .line 8274
    const-wide/16 v6, 0xbb8

    #@7cc
    .line 8273
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@7cf
    goto/16 :goto_0

    #@7d1
    .line 8265
    :cond_20
    const/4 v2, 0x0

    #@7d2
    goto :goto_1

    #@7d3
    .line 8267
    :cond_21
    move-object/from16 v0, p0

    #@7d5
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7d7
    const/4 v3, 0x0

    #@7d8
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set18(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@7db
    goto :goto_2

    #@7dc
    .line 8278
    :sswitch_e
    new-instance v11, Landroid/net/wifi/RssiPacketCountInfo;

    #@7de
    invoke-direct {v11}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    #@7e1
    .line 8279
    .local v11, "info":Landroid/net/wifi/RssiPacketCountInfo;
    move-object/from16 v0, p0

    #@7e3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e5
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@7e8
    .line 8280
    move-object/from16 v0, p0

    #@7ea
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7ec
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@7ef
    move-result-object v2

    #@7f0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@7f3
    move-result v2

    #@7f4
    iput v2, v11, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    #@7f6
    .line 8281
    move-object/from16 v0, p0

    #@7f8
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7fa
    invoke-static {v2, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    #@7fd
    .line 8282
    move-object/from16 v0, p0

    #@7ff
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@801
    const v3, 0x25015

    #@804
    move-object/from16 v0, p1

    #@806
    invoke-static {v2, v0, v3, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@809
    goto/16 :goto_0

    #@80b
    .line 8285
    .end local v11    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    :sswitch_f
    move-object/from16 v0, p0

    #@80d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@80f
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@812
    move-result v2

    #@813
    if-nez v2, :cond_22

    #@815
    move-object/from16 v0, p0

    #@817
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@819
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@81c
    move-result-object v2

    #@81d
    iget-boolean v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    #@81f
    if-eqz v2, :cond_22

    #@821
    .line 8288
    move-object/from16 v0, p0

    #@823
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@825
    new-instance v3, Ljava/lang/StringBuilder;

    #@827
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@82a
    const-string/jumbo v5, "CMD_DELAYED_NETWORK_DISCONNECT and not debouncing - ignore "

    #@82d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@830
    move-result-object v3

    #@831
    .line 8289
    move-object/from16 v0, p1

    #@833
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@835
    .line 8288
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@838
    move-result-object v3

    #@839
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83c
    move-result-object v3

    #@83d
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@840
    .line 8290
    const/4 v2, 0x1

    #@841
    return v2

    #@842
    .line 8292
    :cond_22
    move-object/from16 v0, p0

    #@844
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@846
    new-instance v3, Ljava/lang/StringBuilder;

    #@848
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@84b
    const-string/jumbo v5, "CMD_DELAYED_NETWORK_DISCONNECT and debouncing - disconnect "

    #@84e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@851
    move-result-object v3

    #@852
    .line 8293
    move-object/from16 v0, p1

    #@854
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@856
    .line 8292
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@859
    move-result-object v3

    #@85a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85d
    move-result-object v3

    #@85e
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@861
    .line 8295
    move-object/from16 v0, p0

    #@863
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@865
    const/4 v3, 0x0

    #@866
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@869
    .line 8300
    move-object/from16 v0, p0

    #@86b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@86d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@870
    .line 8301
    move-object/from16 v0, p0

    #@872
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@874
    move-object/from16 v0, p0

    #@876
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@878
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@87b
    move-result-object v3

    #@87c
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@87f
    goto/16 :goto_0

    #@881
    .line 8305
    :sswitch_10
    move-object/from16 v0, p1

    #@883
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@885
    check-cast v2, Ljava/lang/String;

    #@887
    if-nez v2, :cond_23

    #@889
    .line 8306
    move-object/from16 v0, p0

    #@88b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@88d
    const-string/jumbo v3, "Associated command w/o BSSID"

    #@890
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@893
    goto/16 :goto_0

    #@895
    .line 8309
    :cond_23
    move-object/from16 v0, p0

    #@897
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@899
    move-object/from16 v0, p1

    #@89b
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@89d
    check-cast v2, Ljava/lang/String;

    #@89f
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set27(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@8a2
    .line 8310
    move-object/from16 v0, p0

    #@8a4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8a6
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@8a9
    move-result-object v2

    #@8aa
    if-eqz v2, :cond_0

    #@8ac
    .line 8311
    move-object/from16 v0, p0

    #@8ae
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8b0
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@8b3
    move-result-object v2

    #@8b4
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@8b7
    move-result-object v2

    #@8b8
    if-eqz v2, :cond_24

    #@8ba
    .line 8312
    move-object/from16 v0, p0

    #@8bc
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8be
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@8c1
    move-result-object v2

    #@8c2
    move-object/from16 v0, p0

    #@8c4
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8c6
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@8c9
    move-result-object v3

    #@8ca
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@8cd
    move-result-object v3

    #@8ce
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d1
    move-result v2

    #@8d2
    if-nez v2, :cond_0

    #@8d4
    .line 8313
    :cond_24
    move-object/from16 v0, p0

    #@8d6
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8d8
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@8db
    move-result-object v3

    #@8dc
    move-object/from16 v0, p1

    #@8de
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8e0
    check-cast v2, Ljava/lang/String;

    #@8e2
    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@8e5
    .line 8314
    move-object/from16 v0, p0

    #@8e7
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e9
    move-object/from16 v0, p0

    #@8eb
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8ed
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@8f0
    move-result-object v3

    #@8f1
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@8f4
    goto/16 :goto_0

    #@8f6
    .line 8010
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_a
        0x20048 -> :sswitch_8
        0x20049 -> :sswitch_6
        0x20050 -> :sswitch_9
        0x20052 -> :sswitch_d
        0x20053 -> :sswitch_c
        0x20057 -> :sswitch_f
        0x2008a -> :sswitch_3
        0x2008b -> :sswitch_4
        0x20093 -> :sswitch_10
        0x20095 -> :sswitch_5
        0x2300c -> :sswitch_7
        0x24003 -> :sswitch_1
        0x25001 -> :sswitch_b
        0x25014 -> :sswitch_e
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_2
    .end sparse-switch
.end method
