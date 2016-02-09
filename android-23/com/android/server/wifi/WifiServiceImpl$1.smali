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
    .line 1346
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1350
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    #@8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 1351
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@10
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@13
    move-result-object v4

    #@14
    const v5, 0x26002

    #@17
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@1a
    .line 1348
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 1352
    :cond_1
    const-string/jumbo v4, "android.intent.action.USER_PRESENT"

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_2

    #@24
    .line 1353
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@26
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@29
    move-result-object v4

    #@2a
    const v5, 0x2600c

    #@2d
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@30
    goto :goto_0

    #@31
    .line 1354
    :cond_2
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    #@34
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_3

    #@3a
    .line 1355
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@3c
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@3f
    move-result-object v4

    #@40
    const v5, 0x26003

    #@43
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@46
    goto :goto_0

    #@47
    .line 1356
    :cond_3
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    #@4a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_4

    #@50
    .line 1357
    const-string/jumbo v4, "plugged"

    #@53
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@56
    move-result v2

    #@57
    .line 1358
    .local v2, "pluggedType":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@59
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@5c
    move-result-object v4

    #@5d
    const v6, 0x26004

    #@60
    const/4 v7, 0x0

    #@61
    invoke-virtual {v4, v6, v2, v5, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    #@64
    goto :goto_0

    #@65
    .line 1359
    .end local v2    # "pluggedType":I
    :cond_4
    const-string/jumbo v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    #@68
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_5

    #@6e
    .line 1360
    const-string/jumbo v4, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    #@71
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@74
    move-result v3

    #@75
    .line 1362
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@77
    iget-object v4, v4, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@79
    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    #@7c
    goto :goto_0

    #@7d
    .line 1363
    .end local v3    # "state":I
    :cond_5
    const-string/jumbo v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@80
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v4

    #@84
    if-eqz v4, :cond_7

    #@86
    .line 1364
    const-string/jumbo v4, "phoneinECMState"

    #@89
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@8c
    move-result v1

    #@8d
    .line 1365
    .local v1, "emergencyMode":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@8f
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@92
    move-result-object v6

    #@93
    if-eqz v1, :cond_6

    #@95
    const/4 v4, 0x1

    #@96
    :goto_1
    const v7, 0x26001

    #@99
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    #@9c
    goto/16 :goto_0

    #@9e
    :cond_6
    move v4, v5

    #@9f
    goto :goto_1

    #@a0
    .line 1366
    .end local v1    # "emergencyMode":Z
    :cond_7
    const-string/jumbo v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@a3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v4

    #@a7
    if-eqz v4, :cond_0

    #@a9
    .line 1367
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@ab
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    #@ae
    goto/16 :goto_0
.end method
