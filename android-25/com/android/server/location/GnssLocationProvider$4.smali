.class Lcom/android/server/location/GnssLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    #@0
    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 490
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 491
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const-string/jumbo v1, "GnssLocationProvider"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "receive broadcast intent, action: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 492
    :cond_0
    if-nez v0, :cond_1

    #@26
    .line 493
    return-void

    #@27
    .line 496
    :cond_1
    const-string/jumbo v1, "com.android.internal.location.ALARM_WAKEUP"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 497
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@32
    const/4 v2, 0x0

    #@33
    invoke-static {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap31(Lcom/android/server/location/GnssLocationProvider;Z)V

    #@36
    .line 489
    :cond_2
    :goto_0
    return-void

    #@37
    .line 498
    :cond_3
    const-string/jumbo v1, "com.android.internal.location.ALARM_TIMEOUT"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_4

    #@40
    .line 499
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@42
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap23(Lcom/android/server/location/GnssLocationProvider;)V

    #@45
    goto :goto_0

    #@46
    .line 500
    :cond_4
    const-string/jumbo v1, "android.intent.action.DATA_SMS_RECEIVED"

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_5

    #@4f
    .line 501
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@51
    invoke-static {v1, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap12(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    #@54
    goto :goto_0

    #@55
    .line 502
    :cond_5
    const-string/jumbo v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_6

    #@5e
    .line 503
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@60
    invoke-static {v1, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap13(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    #@63
    goto :goto_0

    #@64
    .line 504
    :cond_6
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    #@67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v1

    #@6b
    if-nez v1, :cond_7

    #@6d
    .line 505
    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v1

    #@74
    .line 504
    if-nez v1, :cond_7

    #@76
    .line 506
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v1

    #@7d
    .line 504
    if-nez v1, :cond_7

    #@7f
    .line 507
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v1

    #@86
    .line 504
    if-eqz v1, :cond_8

    #@88
    .line 508
    :cond_7
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@8a
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap33(Lcom/android/server/location/GnssLocationProvider;)V

    #@8d
    goto :goto_0

    #@8e
    .line 509
    :cond_8
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v1

    #@95
    if-eqz v1, :cond_2

    #@97
    .line 510
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@99
    invoke-static {v1, p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap32(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    #@9c
    goto :goto_0
.end method
