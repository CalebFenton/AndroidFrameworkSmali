.class Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$oldSbnLightClone:Landroid/service/notification/StatusBarNotification;

.field final synthetic val$update:Landroid/service/notification/NotificationRankingUpdate;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p2, "val$info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "val$oldSbnLightClone"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "val$update"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 3310
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@2
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@4
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$oldSbnLightClone:Landroid/service/notification/StatusBarNotification;

    #@6
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$update:Landroid/service/notification/NotificationRankingUpdate;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$oldSbnLightClone:Landroid/service/notification/StatusBarNotification;

    #@6
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$update:Landroid/service/notification/NotificationRankingUpdate;

    #@8
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->-wrap5(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    #@b
    .line 3312
    return-void
.end method
