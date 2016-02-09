.class Lcom/android/server/wifi/WifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic -android_net_NetworkInfo$DetailedStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$android$net$NetworkInfo$DetailedState:[I

.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method private static synthetic -getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiNotificationController$1;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiNotificationController$1;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

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
    const/4 v2, 0x4

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
    const/4 v2, 0x5

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
    const/4 v2, 0x1

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
    const/4 v2, 0x2

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
    const/4 v2, 0x3

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
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@4f
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@59
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@63
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    #@6d
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@77
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #@81
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    #@89
    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiNotificationController$1;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

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

.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNotificationController;

    #@0
    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@f
    const-string/jumbo v1, "wifi_state"

    #@12
    .line 111
    const/4 v2, 0x4

    #@13
    .line 110
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v1

    #@17
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNotificationController;->-set2(Lcom/android/server/wifi/WifiNotificationController;I)I

    #@1a
    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@1c
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->-wrap1(Lcom/android/server/wifi/WifiNotificationController;)V

    #@1f
    .line 108
    :cond_0
    :goto_0
    return-void

    #@20
    .line 113
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 114
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    #@27
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 115
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@2f
    .line 116
    const-string/jumbo v0, "networkInfo"

    #@32
    .line 115
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/net/NetworkInfo;

    #@38
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiNotificationController;->-set0(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    #@3b
    .line 118
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController$1;->-getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I

    #@3e
    move-result-object v0

    #@3f
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@41
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->-get1(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@4c
    move-result v1

    #@4d
    aget v0, v0, v1

    #@4f
    packed-switch v0, :pswitch_data_0

    #@52
    goto :goto_0

    #@53
    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@55
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->-wrap1(Lcom/android/server/wifi/WifiNotificationController;)V

    #@58
    goto :goto_0

    #@59
    .line 125
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    .line 126
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    #@60
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_0

    #@66
    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@68
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@6a
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->-get1(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    #@6d
    move-result-object v1

    #@6e
    .line 128
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@70
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->-get2(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    #@77
    move-result-object v2

    #@78
    .line 127
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiNotificationController;->-wrap0(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    #@7b
    goto :goto_0

    #@7c
    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
