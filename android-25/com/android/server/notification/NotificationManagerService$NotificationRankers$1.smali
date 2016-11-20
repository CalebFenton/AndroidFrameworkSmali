.class Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onNotificationEnqueued(Lcom/android/server/notification/NotificationRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

.field final synthetic val$fromUser:Z

.field final synthetic val$importance:I

.field final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$sbnToPost:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationRankers;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$NotificationRankers;
    .param p2, "val$info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "val$sbnToPost"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "val$importance"    # I
    .param p5, "val$fromUser"    # Z

    #@0
    .prologue
    .line 3871
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@2
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@4
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->val$sbnToPost:Landroid/service/notification/StatusBarNotification;

    #@6
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->val$importance:I

    #@8
    iput-boolean p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->val$fromUser:Z

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 3874
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->val$sbnToPost:Landroid/service/notification/StatusBarNotification;

    #@6
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->val$importance:I

    #@8
    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;->val$fromUser:Z

    #@a
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->-wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationRankers;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V

    #@d
    .line 3873
    return-void
.end method
