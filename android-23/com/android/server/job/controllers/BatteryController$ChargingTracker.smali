.class public Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChargingTracker"
.end annotation


# instance fields
.field private mBatteryHealthy:Z

.field private mCharging:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BatteryController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/BatteryController;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method isOnStablePower()Z
    .locals 1

    #@0
    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 162
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->onReceiveInternal(Landroid/content/Intent;)V

    #@3
    .line 161
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 167
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 168
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.BATTERY_LOW"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 176
    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    #@11
    .line 166
    :cond_0
    :goto_0
    return-void

    #@12
    .line 177
    :cond_1
    const-string/jumbo v1, "android.intent.action.BATTERY_OKAY"

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 182
    iput-boolean v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    #@1d
    .line 183
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    #@1f
    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->-wrap0(Lcom/android/server/job/controllers/BatteryController;)V

    #@22
    goto :goto_0

    #@23
    .line 184
    :cond_2
    const-string/jumbo v1, "android.os.action.CHARGING"

    #@26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 189
    iput-boolean v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    #@2e
    .line 190
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    #@30
    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->-wrap0(Lcom/android/server/job/controllers/BatteryController;)V

    #@33
    goto :goto_0

    #@34
    .line 191
    :cond_3
    const-string/jumbo v1, "android.os.action.DISCHARGING"

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 195
    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    #@3f
    .line 196
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    #@41
    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->-wrap0(Lcom/android/server/job/controllers/BatteryController;)V

    #@44
    goto :goto_0
.end method

.method public startTracking()V
    .locals 3

    #@0
    .prologue
    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 142
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_LOW"

    #@8
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 143
    const-string/jumbo v2, "android.intent.action.BATTERY_OKAY"

    #@e
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 145
    const-string/jumbo v2, "android.os.action.CHARGING"

    #@14
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 146
    const-string/jumbo v2, "android.os.action.DISCHARGING"

    #@1a
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 147
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    #@1f
    iget-object v2, v2, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@24
    .line 151
    const-class v2, Landroid/os/BatteryManagerInternal;

    #@26
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/os/BatteryManagerInternal;

    #@2c
    .line 152
    .local v0, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_0

    #@32
    const/4 v2, 0x0

    #@33
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    #@35
    .line 153
    const/4 v2, 0x7

    #@36
    invoke-virtual {v0, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    #@39
    move-result v2

    #@3a
    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    #@3c
    .line 138
    return-void

    #@3d
    .line 152
    :cond_0
    const/4 v2, 0x1

    #@3e
    goto :goto_0
.end method
