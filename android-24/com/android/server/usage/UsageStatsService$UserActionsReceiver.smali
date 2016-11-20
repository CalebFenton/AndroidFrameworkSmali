.class Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserActionsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 252
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@4
    const/4 v3, -0x1

    #@5
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    .line 253
    .local v1, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 254
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    #@10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 255
    if-ltz v1, :cond_0

    #@18
    .line 256
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@1a
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@1c
    const/4 v3, 0x2

    #@1d
    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@24
    .line 251
    :cond_0
    :goto_0
    return-void

    #@25
    .line 258
    :cond_1
    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    #@28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 259
    if-ltz v1, :cond_0

    #@30
    .line 260
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@32
    invoke-virtual {v2, v1}, Lcom/android/server/usage/UsageStatsService;->postCheckIdleStates(I)V

    #@35
    goto :goto_0
.end method
