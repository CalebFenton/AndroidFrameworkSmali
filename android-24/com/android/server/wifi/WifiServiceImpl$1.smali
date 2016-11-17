.class Lcom/android/server/wifi/WifiServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    #@0
    .prologue
    .line 1358
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1361
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1362
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.action.SCREEN_ON"

    #@9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v7

    #@d
    if-eqz v7, :cond_1

    #@f
    .line 1363
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@11
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get8(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@14
    move-result-object v5

    #@15
    const v6, 0x26002

    #@18
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@1b
    .line 1360
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 1364
    :cond_1
    const-string/jumbo v7, "android.intent.action.USER_PRESENT"

    #@1f
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_2

    #@25
    .line 1365
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@27
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get8(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@2a
    move-result-object v5

    #@2b
    const v6, 0x2600c

    #@2e
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@31
    goto :goto_0

    #@32
    .line 1366
    :cond_2
    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    #@35
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_3

    #@3b
    .line 1367
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@3d
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get8(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@40
    move-result-object v5

    #@41
    const v6, 0x26003

    #@44
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@47
    goto :goto_0

    #@48
    .line 1368
    :cond_3
    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    #@4b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_4

    #@51
    .line 1369
    const-string/jumbo v5, "plugged"

    #@54
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@57
    move-result v3

    #@58
    .line 1370
    .local v3, "pluggedType":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@5a
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get8(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@5d
    move-result-object v5

    #@5e
    const v7, 0x26004

    #@61
    const/4 v8, 0x0

    #@62
    invoke-virtual {v5, v7, v3, v6, v8}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    #@65
    goto :goto_0

    #@66
    .line 1371
    .end local v3    # "pluggedType":I
    :cond_4
    const-string/jumbo v7, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    #@69
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v7

    #@6d
    if-eqz v7, :cond_5

    #@6f
    .line 1372
    const-string/jumbo v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    #@72
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@75
    move-result v4

    #@76
    .line 1374
    .local v4, "state":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@78
    iget-object v5, v5, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@7a
    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    #@7d
    goto :goto_0

    #@7e
    .line 1375
    .end local v4    # "state":I
    :cond_5
    const-string/jumbo v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@81
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v7

    #@85
    if-eqz v7, :cond_7

    #@87
    .line 1376
    const-string/jumbo v7, "phoneinECMState"

    #@8a
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@8d
    move-result v1

    #@8e
    .line 1377
    .local v1, "emergencyMode":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@90
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->-get8(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@93
    move-result-object v7

    #@94
    if-eqz v1, :cond_6

    #@96
    :goto_1
    const v8, 0x26001

    #@99
    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    #@9c
    goto/16 :goto_0

    #@9e
    :cond_6
    move v5, v6

    #@9f
    goto :goto_1

    #@a0
    .line 1378
    .end local v1    # "emergencyMode":Z
    :cond_7
    const-string/jumbo v7, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    #@a3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v7

    #@a7
    if-eqz v7, :cond_9

    #@a9
    .line 1379
    const-string/jumbo v7, "phoneInEmergencyCall"

    #@ac
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@af
    move-result v2

    #@b0
    .line 1380
    .local v2, "inCall":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@b2
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->-get8(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@b5
    move-result-object v7

    #@b6
    if-eqz v2, :cond_8

    #@b8
    :goto_2
    const v8, 0x2600e

    #@bb
    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    #@be
    goto/16 :goto_0

    #@c0
    :cond_8
    move v5, v6

    #@c1
    goto :goto_2

    #@c2
    .line 1381
    .end local v2    # "inCall":Z
    :cond_9
    const-string/jumbo v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@c5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v5

    #@c9
    if-eqz v5, :cond_0

    #@cb
    .line 1382
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@cd
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    #@d0
    goto/16 :goto_0
.end method
