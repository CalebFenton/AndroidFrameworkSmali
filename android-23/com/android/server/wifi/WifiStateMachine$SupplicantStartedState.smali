.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 5829
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 5833
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@a
    .line 5834
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@21
    .line 5836
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v1

    #@2b
    .line 5837
    const v2, 0x10e0026

    #@2e
    .line 5836
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@31
    move-result v0

    #@32
    .line 5839
    .local v0, "defaultInterval":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@36
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3d
    move-result-object v2

    #@3e
    .line 5840
    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    #@41
    .line 5841
    int-to-long v4, v0

    #@42
    .line 5839
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@45
    move-result-wide v2

    #@46
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@49
    .line 5843
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4b
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@51
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)J

    #@54
    move-result-wide v2

    #@55
    long-to-int v2, v2

    #@56
    div-int/lit16 v2, v2, 0x3e8

    #@58
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    #@5b
    .line 5844
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5d
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->setExternalSim(Z)Z

    #@64
    .line 5847
    invoke-static {v6}, Lcom/android/server/wifi/WifiNative;->setDfsFlag(Z)Z

    #@67
    .line 5850
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@69
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;)V

    #@6c
    .line 5852
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@71
    .line 5853
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@73
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@76
    move-result-object v1

    #@77
    const/4 v2, 0x0

    #@78
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    #@7b
    .line 5831
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 5960
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@a
    .line 5961
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_0

    #@12
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@21
    .line 5959
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v11, 0x0

    #@3
    .line 5858
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v10

    #@9
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object v10

    #@d
    invoke-static {v9, p1, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@10
    .line 5860
    iget v9, p1, Landroid/os/Message;->what:I

    #@12
    sparse-switch v9, :sswitch_data_0

    #@15
    .line 5953
    return v11

    #@16
    .line 5862
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    .line 5863
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@25
    move-result-object v9

    #@26
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@29
    .line 5955
    :cond_0
    :goto_0
    return v8

    #@2a
    .line 5865
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@31
    move-result-object v9

    #@32
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@35
    goto :goto_0

    #@36
    .line 5869
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38
    const-string/jumbo v9, "Connection lost, restart supplicant"

    #@3b
    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@3e
    .line 5870
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@40
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@43
    .line 5871
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@48
    .line 5872
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@4d
    move-result-object v7

    #@4e
    const v9, 0x2006f

    #@51
    invoke-virtual {v7, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@54
    .line 5873
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@59
    move-result v7

    #@5a
    if-eqz v7, :cond_2

    #@5c
    .line 5874
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5e
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@60
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@63
    move-result-object v9

    #@64
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@67
    .line 5878
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@69
    const-wide/16 v10, 0x1388

    #@6b
    const v9, 0x2000b

    #@6e
    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    #@71
    goto :goto_0

    #@72
    .line 5876
    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@74
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@79
    move-result-object v9

    #@7a
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@7d
    goto :goto_1

    #@7e
    .line 5882
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@80
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    #@83
    .line 5883
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@85
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->closeRadioScanStats()V

    #@88
    .line 5884
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8a
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;)V

    #@8d
    .line 5885
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8f
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;)V

    #@92
    .line 5886
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@94
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get46(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@97
    move-result v7

    #@98
    if-nez v7, :cond_3

    #@9a
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9c
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@9f
    move-result v7

    #@a0
    if-eqz v7, :cond_4

    #@a2
    .line 5888
    :cond_3
    iget v7, p1, Landroid/os/Message;->what:I

    #@a4
    const v9, 0x24005

    #@a7
    if-ne v7, v9, :cond_5

    #@a9
    const/4 v4, 0x1

    #@aa
    .line 5889
    .local v4, "scanSucceeded":Z
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ac
    invoke-virtual {v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    #@af
    .line 5891
    .end local v4    # "scanSucceeded":Z
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b1
    invoke-static {v7, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@b4
    .line 5892
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b6
    invoke-static {v7, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set26(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@b9
    .line 5893
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bb
    invoke-static {v7, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set24(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@be
    .line 5894
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c0
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    #@c3
    move-result-object v7

    #@c4
    invoke-interface {v7}, Ljava/util/Queue;->size()I

    #@c7
    move-result v7

    #@c8
    if-lez v7, :cond_0

    #@ca
    .line 5895
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cc
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ce
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    #@d1
    move-result-object v7

    #@d2
    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    #@d5
    move-result-object v7

    #@d6
    check-cast v7, Landroid/os/Message;

    #@d8
    invoke-virtual {v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    #@db
    goto/16 :goto_0

    #@dd
    .line 5888
    :cond_5
    const/4 v4, 0x0

    #@de
    .restart local v4    # "scanSucceeded":Z
    goto :goto_2

    #@df
    .line 5898
    .end local v4    # "scanSucceeded":Z
    :sswitch_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e1
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@e4
    move-result-object v9

    #@e5
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->ping()Z

    #@e8
    move-result v2

    #@e9
    .line 5899
    .local v2, "ok":Z
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@eb
    iget v10, p1, Landroid/os/Message;->what:I

    #@ed
    if-eqz v2, :cond_6

    #@ef
    move v7, v8

    #@f0
    :cond_6
    invoke-static {v9, p1, v10, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@f3
    goto/16 :goto_0

    #@f5
    .line 5902
    .end local v2    # "ok":Z
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f7
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@fa
    move-result-object v7

    #@fb
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->getFreqCapability()Ljava/lang/String;

    #@fe
    move-result-object v1

    #@ff
    .line 5903
    .local v1, "freqs":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@101
    iget v9, p1, Landroid/os/Message;->what:I

    #@103
    invoke-static {v7, p1, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@106
    goto/16 :goto_0

    #@108
    .line 5907
    .end local v1    # "freqs":Ljava/lang/String;
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10a
    const-string/jumbo v9, "Failed to start soft AP with a running supplicant"

    #@10d
    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@110
    .line 5908
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@112
    const/16 v9, 0xe

    #@114
    invoke-static {v7, v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@117
    goto/16 :goto_0

    #@119
    .line 5911
    :sswitch_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11b
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@11d
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->-set33(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@120
    .line 5912
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@122
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@125
    move-result-object v9

    #@126
    invoke-virtual {v9, v7}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@129
    goto/16 :goto_0

    #@12b
    .line 5917
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12d
    if-eqz v7, :cond_0

    #@12f
    .line 5918
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@131
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@133
    check-cast v7, Ljava/lang/String;

    #@135
    invoke-static {v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set42(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@138
    goto/16 :goto_0

    #@13a
    .line 5922
    :sswitch_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@13f
    move-result v9

    #@140
    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@143
    move-result-object v6

    #@144
    .line 5923
    .local v6, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-nez v6, :cond_7

    #@146
    .line 5925
    new-instance v6, Landroid/net/wifi/WifiLinkLayerStats;

    #@148
    .end local v6    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-direct {v6}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    #@14b
    .line 5927
    .restart local v6    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14d
    iget v9, p1, Landroid/os/Message;->what:I

    #@14f
    invoke-static {v7, p1, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@152
    goto/16 :goto_0

    #@154
    .line 5930
    .end local v6    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@156
    check-cast v0, Ljava/lang/String;

    #@158
    .line 5932
    .local v0, "country":Ljava/lang/String;
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@15a
    if-ne v7, v8, :cond_8

    #@15c
    const/4 v3, 0x1

    #@15d
    .line 5933
    .local v3, "persist":Z
    :goto_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@15f
    .line 5935
    .local v5, "sequence":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@161
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@164
    move-result-object v7

    #@165
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@168
    move-result v7

    #@169
    if-eq v5, v7, :cond_9

    #@16b
    .line 5936
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@16e
    move-result v7

    #@16f
    if-eqz v7, :cond_0

    #@171
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@173
    const-string/jumbo v9, "set country code ignored due to sequnce num"

    #@176
    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@179
    goto/16 :goto_0

    #@17b
    .line 5932
    .end local v3    # "persist":Z
    .end local v5    # "sequence":I
    :cond_8
    const/4 v3, 0x0

    #@17c
    .restart local v3    # "persist":Z
    goto :goto_3

    #@17d
    .line 5939
    .restart local v5    # "sequence":I
    :cond_9
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@180
    move-result v7

    #@181
    if-eqz v7, :cond_a

    #@183
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@185
    new-instance v9, Ljava/lang/StringBuilder;

    #@187
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18a
    const-string/jumbo v10, "set country code "

    #@18d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v9

    #@191
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v9

    #@195
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v9

    #@199
    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@19c
    .line 5940
    :cond_a
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@19e
    invoke-virtual {v0, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1a1
    move-result-object v0

    #@1a2
    .line 5942
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a4
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1a7
    move-result-object v7

    #@1a8
    if-eqz v7, :cond_b

    #@1aa
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ac
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1af
    move-result-object v7

    #@1b0
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b3
    move-result v7

    #@1b4
    if-eqz v7, :cond_b

    #@1b6
    .line 5950
    :goto_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b8
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@1bb
    move-result-object v7

    #@1bc
    const v9, 0x23010

    #@1bf
    invoke-virtual {v7, v9, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@1c2
    goto/16 :goto_0

    #@1c4
    .line 5943
    :cond_b
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c6
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1c9
    move-result-object v7

    #@1ca
    invoke-virtual {v7, v0}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    #@1cd
    move-result v7

    #@1ce
    if-eqz v7, :cond_c

    #@1d0
    .line 5944
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d2
    invoke-static {v7, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@1d5
    goto :goto_4

    #@1d6
    .line 5946
    :cond_c
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d8
    new-instance v9, Ljava/lang/StringBuilder;

    #@1da
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1dd
    const-string/jumbo v10, "Failed to set country code "

    #@1e0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v9

    #@1e4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v9

    #@1e8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v9

    #@1ec
    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1ef
    goto :goto_4

    #@1f0
    .line 5860
    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_5
        0x20033 -> :sswitch_3
        0x2003c -> :sswitch_4
        0x2003f -> :sswitch_8
        0x20048 -> :sswitch_6
        0x20050 -> :sswitch_9
        0x2008d -> :sswitch_7
        0x24002 -> :sswitch_1
        0x24005 -> :sswitch_2
        0x24011 -> :sswitch_2
    .end sparse-switch
.end method
