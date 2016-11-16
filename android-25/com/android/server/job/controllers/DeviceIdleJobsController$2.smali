.class Lcom/android/server/job/controllers/DeviceIdleJobsController$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleJobsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/DeviceIdleJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/DeviceIdleJobsController;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 84
    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    .line 83
    if-eqz v1, :cond_4

    #@16
    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    #@18
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    #@1a
    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-get0(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    #@1d
    move-result-object v1

    #@1e
    if-eqz v1, :cond_3

    #@20
    .line 86
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    #@22
    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-get0(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@29
    move-result v1

    #@2a
    if-nez v1, :cond_2

    #@2c
    .line 87
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    #@2e
    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-get0(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    #@35
    move-result v1

    #@36
    .line 85
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateIdleMode(Z)V

    #@39
    .line 81
    :cond_1
    :goto_1
    return-void

    #@3a
    .line 86
    :cond_2
    const/4 v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 88
    :cond_3
    const/4 v1, 0x0

    #@3d
    goto :goto_0

    #@3e
    .line 89
    :cond_4
    const-string/jumbo v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    #@41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_1

    #@47
    .line 90
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    #@49
    invoke-virtual {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateWhitelist()V

    #@4c
    goto :goto_1
.end method
