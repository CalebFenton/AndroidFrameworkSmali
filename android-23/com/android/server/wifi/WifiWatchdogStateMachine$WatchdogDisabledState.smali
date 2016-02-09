.class Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogDisabledState"
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
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

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
    const/4 v2, 0x2

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
    const/4 v2, 0x3

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
    const/4 v2, 0x4

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
    const/4 v2, 0x5

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
    const/4 v2, 0x1

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    #@89
    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

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
    .line 487
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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
    .line 489
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 495
    iget v2, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v2, :pswitch_data_0

    #@6
    .line 515
    :goto_0
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 497
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@a
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap0(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 498
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@12
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@14
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    #@17
    move-result-object v3

    #@18
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@1b
    .line 499
    :cond_0
    return v4

    #@1c
    .line 501
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    check-cast v0, Landroid/content/Intent;

    #@20
    .line 503
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "networkInfo"

    #@23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroid/net/NetworkInfo;

    #@29
    .line 505
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->-getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@34
    move-result v3

    #@35
    aget v2, v2, v3

    #@37
    packed-switch v2, :pswitch_data_1

    #@3a
    goto :goto_0

    #@3b
    .line 508
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@3d
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    #@40
    goto :goto_0

    #@41
    .line 495
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@4a
    .line 505
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
