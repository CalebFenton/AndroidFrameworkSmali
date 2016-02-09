.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

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
    const/4 v1, 0x0

    #@1
    .line 225
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    #@4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 226
    const-string/jumbo v2, "plugged"

    #@11
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@14
    move-result v0

    #@15
    .line 227
    .local v0, "plugged":I
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    #@17
    if-eqz v0, :cond_0

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    #@1d
    .line 224
    .end local v0    # "plugged":I
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 228
    :cond_2
    const-string/jumbo v1, "com.android.server.device_idle.STEP_IDLE_STATE"

    #@21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 229
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    #@2d
    monitor-enter v2

    #@2e
    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    #@30
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit v2

    #@34
    goto :goto_0

    #@35
    .line 229
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method
