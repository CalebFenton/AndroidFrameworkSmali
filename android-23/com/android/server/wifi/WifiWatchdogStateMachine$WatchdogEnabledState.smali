.class Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogEnabledState"
.end annotation


# static fields
.field private static synthetic -android_net_NetworkInfo$DetailedStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$android$net$NetworkInfo$DetailedState:[I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method private static synthetic -getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    #@10
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x3

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    #@19
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x4

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    #@22
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x5

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@2b
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x1

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@34
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x6

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@3d
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x7

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@46
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/16 v2, 0x8

    #@4c
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    #@4e
    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@50
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@53
    move-result v1

    #@54
    const/16 v2, 0x9

    #@56
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    #@58
    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@5a
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@5d
    move-result v1

    #@5e
    const/16 v2, 0xa

    #@60
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    #@62
    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@64
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@67
    move-result v1

    #@68
    const/16 v2, 0xb

    #@6a
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    #@6c
    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    #@6e
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@71
    move-result v1

    #@72
    const/16 v2, 0xc

    #@74
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    #@76
    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@78
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@7b
    move-result v1

    #@7c
    const/16 v2, 0xd

    #@7e
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    #@80
    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #@82
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@85
    move-result v1

    #@86
    const/4 v2, 0x2

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    #@89
    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@8b
    return-object v0

    #@8c
    :catch_0
    move-exception v1

    #@8d
    goto :goto_c

    #@8e
    :catch_1
    move-exception v1

    #@8f
    goto :goto_b

    #@90
    :catch_2
    move-exception v1

    #@91
    goto :goto_a

    #@92
    :catch_3
    move-exception v1

    #@93
    goto :goto_9

    #@94
    :catch_4
    move-exception v1

    #@95
    goto :goto_8

    #@96
    :catch_5
    move-exception v1

    #@97
    goto :goto_7

    #@98
    :catch_6
    move-exception v1

    #@99
    goto :goto_6

    #@9a
    :catch_7
    move-exception v1

    #@9b
    goto :goto_5

    #@9c
    :catch_8
    move-exception v1

    #@9d
    goto :goto_4

    #@9e
    :catch_9
    move-exception v1

    #@9f
    goto :goto_3

    #@a0
    :catch_a
    move-exception v1

    #@a1
    goto :goto_2

    #@a2
    :catch_b
    move-exception v1

    #@a3
    goto/16 :goto_1

    #@a5
    :catch_c
    move-exception v1

    #@a6
    goto/16 :goto_0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@0
    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    #@0
    .prologue
    .line 524
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 531
    iget v3, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v3, :pswitch_data_0

    #@8
    .line 587
    :pswitch_0
    return v5

    #@9
    .line 533
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@b
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap0(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 534
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@13
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@15
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get13(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    #@18
    move-result-object v4

    #@19
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@1c
    .line 590
    :cond_0
    :goto_0
    return v6

    #@1d
    .line 538
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f
    check-cast v0, Landroid/content/Intent;

    #@21
    .line 540
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "networkInfo"

    #@24
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Landroid/net/NetworkInfo;

    #@2a
    .line 543
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2c
    const-string/jumbo v3, "wifiInfo"

    #@2f
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/net/wifi/WifiInfo;

    #@35
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    #@38
    .line 544
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@3a
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@3c
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    #@3f
    move-result-object v3

    #@40
    if-eqz v3, :cond_1

    #@42
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@44
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    :goto_1
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    #@4f
    .line 546
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->-getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@5a
    move-result v4

    #@5b
    aget v3, v3, v4

    #@5d
    packed-switch v3, :pswitch_data_1

    #@60
    .line 565
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@62
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@64
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    #@67
    move-result-object v4

    #@68
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@6b
    goto :goto_0

    #@6c
    :cond_1
    move-object v3, v4

    #@6d
    .line 544
    goto :goto_1

    #@6e
    .line 548
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@70
    .line 549
    const-string/jumbo v3, "linkProperties"

    #@73
    .line 548
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@76
    move-result-object v3

    #@77
    check-cast v3, Landroid/net/LinkProperties;

    #@79
    invoke-static {v4, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set3(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    #@7c
    .line 550
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@7e
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get10(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_4

    #@84
    .line 551
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@86
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    #@89
    move-result-object v3

    #@8a
    if-eqz v3, :cond_2

    #@8c
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@8e
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@91
    move-result-object v3

    #@92
    if-nez v3, :cond_3

    #@94
    .line 552
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@96
    new-instance v4, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v5, "Ignore, wifiinfo "

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@a4
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    #@a7
    move-result-object v5

    #@a8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    const-string/jumbo v5, " bssid "

    #@af
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v4

    #@b3
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@b5
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@b8
    move-result-object v5

    #@b9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v4

    #@c1
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap3(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    #@c4
    .line 553
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@c6
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 555
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@cd
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@cf
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get12(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    #@d2
    move-result-object v4

    #@d3
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 558
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@da
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    #@dd
    goto/16 :goto_0

    #@df
    .line 562
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@e1
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@e3
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get9(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    #@e6
    move-result-object v4

    #@e7
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 571
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ee
    check-cast v0, Landroid/content/Intent;

    #@f0
    .line 573
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "newState"

    #@f3
    .line 572
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@f6
    move-result-object v2

    #@f7
    check-cast v2, Landroid/net/wifi/SupplicantState;

    #@f9
    .line 574
    .local v2, "supplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    #@fb
    if-ne v2, v3, :cond_0

    #@fd
    .line 575
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@ff
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@101
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get15(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    #@104
    move-result-object v4

    #@105
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@108
    move-result-object v4

    #@109
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    #@10c
    .line 576
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@10e
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@110
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    #@113
    move-result-object v4

    #@114
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@117
    move-result-object v4

    #@118
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    #@11b
    goto/16 :goto_0

    #@11d
    .line 581
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "supplicantState":Landroid/net/wifi/SupplicantState;
    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@11f
    if-nez v3, :cond_0

    #@121
    .line 582
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@123
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@125
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    #@128
    move-result-object v4

    #@129
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@12c
    goto/16 :goto_0

    #@12e
    .line 531
    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    #@13c
    .line 546
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
