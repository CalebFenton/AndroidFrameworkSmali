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
    .line 880
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
    .line 883
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    #@5
    .line 882
    return-void
.end method

.method onPolicyChanged()V
    .locals 2

    #@0
    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    const-string/jumbo v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap23(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    #@8
    .line 895
    return-void
.end method

.method onZenModeChanged()V
    .locals 2

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap23(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    #@8
    .line 889
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@c
    monitor-enter v1

    #@d
    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap25(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 887
    return-void

    #@14
    .line 889
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method
