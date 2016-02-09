.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    .line 147
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 152
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@3
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get0(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    #@6
    move-result-object v1

    #@7
    .line 153
    .local v1, "cb":Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    iget v4, p1, Landroid/os/Message;->what:I

    #@9
    packed-switch v4, :pswitch_data_0

    #@c
    .line 151
    :cond_0
    :goto_0
    return-void

    #@d
    .line 155
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    monitor-enter v4

    #@10
    .line 156
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@12
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v4

    #@16
    .line 158
    if-eqz v1, :cond_0

    #@18
    .line 159
    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    #@1b
    goto :goto_0

    #@1c
    .line 155
    :catchall_0
    move-exception v3

    #@1d
    monitor-exit v4

    #@1e
    throw v3

    #@1f
    .line 163
    :pswitch_1
    if-eqz v1, :cond_0

    #@21
    .line 164
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@23
    if-eqz v4, :cond_1

    #@25
    const/4 v3, 0x1

    #@26
    :cond_1
    invoke-interface {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    #@29
    goto :goto_0

    #@2a
    .line 168
    :pswitch_2
    if-eqz v1, :cond_0

    #@2c
    .line 170
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2e
    monitor-enter v4

    #@2f
    .line 171
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@31
    iget-boolean v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    #@33
    if-eqz v3, :cond_2

    #@35
    const-string/jumbo v0, "android.os.action.CHARGING"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@38
    .local v0, "action":Ljava/lang/String;
    :goto_1
    monitor-exit v4

    #@39
    .line 174
    new-instance v2, Landroid/content/Intent;

    #@3b
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3e
    .line 175
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    #@40
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@43
    .line 176
    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    #@46
    goto :goto_0

    #@47
    .line 172
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_2
    const-string/jumbo v0, "android.os.action.DISCHARGING"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4a
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_1

    #@4b
    .line 170
    .end local v0    # "action":Ljava/lang/String;
    :catchall_1
    move-exception v3

    #@4c
    monitor-exit v4

    #@4d
    throw v3

    #@4e
    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
