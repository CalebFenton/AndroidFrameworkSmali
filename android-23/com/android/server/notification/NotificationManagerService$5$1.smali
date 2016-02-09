.class Lcom/android/server/notification/NotificationManagerService$5$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$5;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$5;

.field final synthetic val$conditions:[Landroid/service/notification/Condition;

.field final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$5;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$5;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p4, "val$conditions"    # [Landroid/service/notification/Condition;

    #@0
    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->this$1:Lcom/android/server/notification/NotificationManagerService$5;

    #@2
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->val$pkg:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@6
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->val$conditions:[Landroid/service/notification/Condition;

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
    .line 1617
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->this$1:Lcom/android/server/notification/NotificationManagerService$5;

    #@2
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->val$pkg:Ljava/lang/String;

    #@a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->val$conditions:[Landroid/service/notification/Condition;

    #@e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/ConditionProviders;->notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    #@11
    .line 1616
    return-void
.end method
