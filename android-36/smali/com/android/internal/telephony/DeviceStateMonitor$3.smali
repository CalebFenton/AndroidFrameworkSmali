.class Lcom/android/internal/telephony/DeviceStateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/DeviceStateMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 p1, 0x3

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/4 v1, 0x4

    const-string v3, "off"

    const-string v4, "on"

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_e6

    goto :goto_59

    :sswitch_2e
    const-string v7, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_59

    :cond_37
    move v6, p1

    goto :goto_59

    :sswitch_39
    const-string v7, "android.os.action.CHARGING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_59

    :cond_42
    const/4 v6, 0x2

    goto :goto_59

    :sswitch_44
    const-string v7, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_59

    :cond_4d
    move v6, v2

    goto :goto_59

    :sswitch_4f
    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_59

    :cond_58
    move v6, v5

    :goto_59
    packed-switch v6, :pswitch_data_f8

    .line 272
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected broadcast intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    return-void

    .line 249
    :pswitch_73
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$misPowerSaveModeOn(Lcom/android/internal/telephony/DeviceStateMonitor;)Z

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 251
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power Save mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_92

    move-object v3, v4

    :cond_92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    goto :goto_e0

    .line 254
    :pswitch_9d
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 255
    iput v2, p1, Landroid/os/Message;->arg1:I

    goto :goto_e0

    .line 258
    :pswitch_a6
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 259
    iput v5, p1, Landroid/os/Message;->arg1:I

    goto :goto_e0

    .line 262
    :pswitch_af
    const-string p1, "tetherArray"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_be

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_be

    move v5, v2

    .line 267
    :cond_be
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tethering "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_cd

    move-object v3, v4

    :cond_cd
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 268
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 269
    iput v5, p1, Landroid/os/Message;->arg1:I

    .line 275
    :goto_e0
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :sswitch_data_e6
    .sparse-switch
        -0x6898c375 -> :sswitch_4f
        -0x3465cce -> :sswitch_44
        0x388694fe -> :sswitch_39
        0x6a0dd473 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_af
        :pswitch_a6
        :pswitch_9d
        :pswitch_73
    .end packed-switch
.end method
