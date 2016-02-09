.class Lcom/android/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 148
    const-string/jumbo v3, "JobSchedulerService"

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "Receieved: "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 149
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    #@22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 152
    const-string/jumbo v3, "android.intent.extra.REPLACING"

    #@2f
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_0

    #@35
    .line 153
    const-string/jumbo v2, "android.intent.extra.UID"

    #@38
    const/4 v3, -0x1

    #@39
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@3c
    move-result v0

    #@3d
    .line 157
    .local v0, "uidRemoved":I
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@3f
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(I)V

    #@42
    .line 147
    .end local v0    # "uidRemoved":I
    :cond_0
    :goto_0
    return-void

    #@43
    .line 159
    :cond_1
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    #@46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_2

    #@50
    .line 160
    const-string/jumbo v3, "android.intent.extra.user_handle"

    #@53
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@56
    move-result v1

    #@57
    .line 164
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@59
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    #@5c
    goto :goto_0

    #@5d
    .line 165
    .end local v1    # "userId":I
    :cond_2
    const-string/jumbo v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v3

    #@68
    if-eqz v3, :cond_0

    #@6a
    .line 166
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@6c
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@6e
    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mPowerManager:Landroid/os/PowerManager;

    #@70
    if-eqz v4, :cond_3

    #@72
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@74
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPowerManager:Landroid/os/PowerManager;

    #@76
    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@79
    move-result v2

    #@7a
    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->updateIdleMode(Z)V

    #@7d
    goto :goto_0
.end method
