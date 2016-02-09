.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsLocationProvider;

    #@0
    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

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
    const/4 v7, 0x0

    #@1
    .line 436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 438
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->-get0()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    const-string/jumbo v4, "GpsLocationProvider"

    #@e
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "receive broadcast intent, action: "

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 439
    :cond_0
    const-string/jumbo v4, "com.android.internal.location.ALARM_WAKEUP"

    #@28
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 440
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@30
    invoke-static {v4, v7}, Lcom/android/server/location/GpsLocationProvider;->-wrap27(Lcom/android/server/location/GpsLocationProvider;Z)V

    #@33
    .line 435
    :cond_1
    :goto_0
    return-void

    #@34
    .line 441
    :cond_2
    const-string/jumbo v4, "com.android.internal.location.ALARM_TIMEOUT"

    #@37
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_3

    #@3d
    .line 442
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@3f
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->-wrap21(Lcom/android/server/location/GpsLocationProvider;)V

    #@42
    goto :goto_0

    #@43
    .line 443
    :cond_3
    const-string/jumbo v4, "android.intent.action.DATA_SMS_RECEIVED"

    #@46
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_4

    #@4c
    .line 444
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@4e
    invoke-static {v4, p2}, Lcom/android/server/location/GpsLocationProvider;->-wrap12(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    #@51
    goto :goto_0

    #@52
    .line 445
    :cond_4
    const-string/jumbo v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@55
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_5

    #@5b
    .line 446
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@5d
    invoke-static {v4, p2}, Lcom/android/server/location/GpsLocationProvider;->-wrap13(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    #@60
    goto :goto_0

    #@61
    .line 447
    :cond_5
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    #@64
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v4

    #@68
    if-eqz v4, :cond_7

    #@6a
    .line 450
    const-string/jumbo v4, "networkInfo"

    #@6d
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@70
    move-result-object v2

    #@71
    check-cast v2, Landroid/net/NetworkInfo;

    #@73
    .line 452
    .local v2, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@75
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->-get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    #@78
    move-result-object v4

    #@79
    const-string/jumbo v5, "connectivity"

    #@7c
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7f
    move-result-object v1

    #@80
    .line 451
    check-cast v1, Landroid/net/ConnectivityManager;

    #@82
    .line 453
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    #@85
    move-result v4

    #@86
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@89
    move-result-object v2

    #@8a
    .line 456
    const-string/jumbo v4, "noConnectivity"

    #@8d
    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@90
    move-result v4

    #@91
    if-nez v4, :cond_6

    #@93
    .line 457
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    #@96
    move-result v4

    #@97
    if-eqz v4, :cond_6

    #@99
    .line 460
    const/4 v3, 0x2

    #@9a
    .line 463
    .local v3, "networkState":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@9c
    invoke-virtual {v4, v3, v2}, Lcom/android/server/location/GpsLocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    #@9f
    goto :goto_0

    #@a0
    .line 458
    .end local v3    # "networkState":I
    :cond_6
    const/4 v3, 0x1

    #@a1
    .line 457
    .restart local v3    # "networkState":I
    goto :goto_1

    #@a2
    .line 464
    .end local v1    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "networkState":I
    :cond_7
    const-string/jumbo v4, "android.os.action.POWER_SAVE_MODE_CHANGED"

    #@a5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v4

    #@a9
    if-nez v4, :cond_8

    #@ab
    .line 465
    const-string/jumbo v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@ae
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v4

    #@b2
    .line 464
    if-nez v4, :cond_8

    #@b4
    .line 466
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    #@b7
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v4

    #@bb
    .line 464
    if-nez v4, :cond_8

    #@bd
    .line 467
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    #@c0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v4

    #@c4
    .line 464
    if-eqz v4, :cond_9

    #@c6
    .line 468
    :cond_8
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@c8
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->-wrap29(Lcom/android/server/location/GpsLocationProvider;)V

    #@cb
    goto/16 :goto_0

    #@cd
    .line 469
    :cond_9
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    #@d0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v4

    #@d4
    if-eqz v4, :cond_1

    #@d6
    .line 470
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@d8
    invoke-static {v4, p1}, Lcom/android/server/location/GpsLocationProvider;->-wrap28(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V

    #@db
    goto/16 :goto_0
.end method
