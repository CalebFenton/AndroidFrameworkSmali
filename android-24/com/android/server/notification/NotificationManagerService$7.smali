.class Lcom/android/server/notification/NotificationManagerService$7;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onConfigChanged()V
    .locals 1

    #@0
    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    #@5
    .line 941
    return-void
.end method

.method onPolicyChanged()V
    .locals 2

    #@0
    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    const-string/jumbo v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap32(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    #@8
    .line 958
    return-void
.end method

.method onZenModeChanged()V
    .locals 4

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap32(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    #@8
    .line 948
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    .line 949
    new-instance v1, Landroid/content/Intent;

    #@10
    const-string/jumbo v2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    #@13
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 950
    const/high16 v2, 0x4000000

    #@18
    .line 949
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1b
    move-result-object v1

    #@1c
    .line 951
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1e
    const-string/jumbo v3, "android.permission.MANAGE_NOTIFICATIONS"

    #@21
    .line 948
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@24
    .line 952
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@26
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@28
    monitor-enter v1

    #@29
    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2b
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap34(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v1

    #@2f
    .line 946
    return-void

    #@30
    .line 952
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method
