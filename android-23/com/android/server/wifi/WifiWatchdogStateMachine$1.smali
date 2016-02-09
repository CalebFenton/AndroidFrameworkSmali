.class Lcom/android/server/wifi/WifiWatchdogStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@0
    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 360
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 361
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@f
    .line 362
    const-string/jumbo v2, "newRssi"

    #@12
    const/16 v3, -0xc8

    #@14
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@17
    move-result v2

    #@18
    .line 361
    const v3, 0x21003

    #@1b
    .line 362
    const/4 v4, 0x0

    #@1c
    .line 361
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@23
    .line 358
    :cond_0
    :goto_0
    return-void

    #@24
    .line 363
    :cond_1
    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 364
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2f
    const v2, 0x21004

    #@32
    invoke-virtual {v1, v2, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@35
    goto :goto_0

    #@36
    .line 365
    :cond_2
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 366
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@41
    const v2, 0x21002

    #@44
    invoke-virtual {v1, v2, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@47
    goto :goto_0

    #@48
    .line 367
    :cond_3
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_4

    #@51
    .line 368
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@53
    const v2, 0x21008

    #@56
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    #@59
    goto :goto_0

    #@5a
    .line 369
    :cond_4
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_5

    #@63
    .line 370
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@65
    const v2, 0x21009

    #@68
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    #@6b
    goto :goto_0

    #@6c
    .line 371
    :cond_5
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_0

    #@75
    .line 372
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@77
    .line 373
    const-string/jumbo v2, "wifi_state"

    #@7a
    const/4 v3, 0x4

    #@7b
    .line 372
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7e
    move-result v2

    #@7f
    const v3, 0x21005

    #@82
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(II)V

    #@85
    goto :goto_0
.end method
