.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;
.super Landroid/content/BroadcastReceiver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@0
    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 328
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "onReceive: action="

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@1e
    .line 329
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    #@21
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 330
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@29
    const/4 v4, 0x1

    #@2a
    iput-boolean v4, v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    #@2c
    .line 331
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2e
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    #@31
    .line 332
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@33
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    #@36
    .line 333
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@38
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    #@3b
    .line 325
    :cond_0
    :goto_0
    return-void

    #@3c
    .line 334
    :cond_1
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    #@3f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_2

    #@45
    .line 335
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@47
    iput-boolean v3, v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    #@49
    .line 336
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@4b
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    #@4e
    .line 337
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@50
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    #@53
    .line 338
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@55
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    #@58
    goto :goto_0

    #@59
    .line 339
    :cond_2
    const-string/jumbo v4, "com.android.internal.telephony.data-reconnect"

    #@5c
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_3

    #@62
    .line 340
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@64
    new-instance v4, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v5, "Reconnect alarm. Previous state was "

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@72
    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@7f
    .line 341
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@81
    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    #@84
    goto :goto_0

    #@85
    .line 342
    :cond_3
    const-string/jumbo v4, "com.android.internal.telephony.data-restart-trysetup"

    #@88
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_4

    #@8e
    .line 343
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@90
    const-string/jumbo v4, "Restart trySetup alarm"

    #@93
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@96
    .line 344
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@98
    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V

    #@9b
    goto :goto_0

    #@9c
    .line 345
    :cond_4
    const-string/jumbo v4, "com.android.internal.telephony.data-stall"

    #@9f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v4

    #@a3
    if-eqz v4, :cond_5

    #@a5
    .line 346
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@a7
    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    #@aa
    goto :goto_0

    #@ab
    .line 347
    :cond_5
    const-string/jumbo v4, "com.android.internal.telephony.provisioning_apn_alarm"

    #@ae
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v4

    #@b2
    if-eqz v4, :cond_6

    #@b4
    .line 348
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@b6
    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    #@b9
    goto :goto_0

    #@ba
    .line 349
    :cond_6
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    #@bd
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v4

    #@c1
    if-eqz v4, :cond_8

    #@c3
    .line 351
    const-string/jumbo v4, "networkInfo"

    #@c6
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@c9
    move-result-object v2

    #@ca
    check-cast v2, Landroid/net/NetworkInfo;

    #@cc
    .line 352
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@ce
    if-eqz v2, :cond_7

    #@d0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    #@d3
    move-result v3

    #@d4
    :cond_7
    iput-boolean v3, v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    #@d6
    .line 353
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@d8
    new-instance v4, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v5, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    #@e0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@e6
    iget-boolean v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    #@e8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v4

    #@ec
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@f3
    goto/16 :goto_0

    #@f5
    .line 354
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_8
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    #@f8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v4

    #@fc
    if-eqz v4, :cond_0

    #@fe
    .line 355
    const-string/jumbo v4, "wifi_state"

    #@101
    .line 356
    const/4 v5, 0x4

    #@102
    .line 355
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@105
    move-result v4

    #@106
    .line 356
    const/4 v5, 0x3

    #@107
    .line 355
    if-ne v4, v5, :cond_a

    #@109
    const/4 v1, 0x1

    #@10a
    .line 358
    .local v1, "enabled":Z
    :goto_1
    if-nez v1, :cond_9

    #@10c
    .line 361
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@10e
    iput-boolean v3, v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    #@110
    .line 363
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@112
    new-instance v4, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v5, "WIFI_STATE_CHANGED_ACTION: enabled="

    #@11a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v4

    #@11e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@121
    move-result-object v4

    #@122
    .line 364
    const-string/jumbo v5, " mIsWifiConnected="

    #@125
    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v4

    #@129
    .line 364
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@12b
    iget-boolean v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    #@12d
    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@130
    move-result-object v4

    #@131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v4

    #@135
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@138
    goto/16 :goto_0

    #@13a
    .line 355
    .end local v1    # "enabled":Z
    :cond_a
    const/4 v1, 0x0

    #@13b
    .restart local v1    # "enabled":Z
    goto :goto_1
.end method
