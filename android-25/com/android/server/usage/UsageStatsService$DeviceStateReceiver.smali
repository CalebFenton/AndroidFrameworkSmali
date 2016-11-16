.class Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 287
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    #@8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 288
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@10
    const-string/jumbo v3, "plugged"

    #@13
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/server/usage/UsageStatsService;->setChargingState(Z)V

    #@1d
    .line 285
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 289
    :cond_2
    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 290
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@29
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->onDeviceIdleModeChanged()V

    #@2c
    goto :goto_0
.end method
