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
    .line 230
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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 234
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@4
    const/4 v2, -0x1

    #@5
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    .line 235
    .local v0, "userId":I
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 236
    if-ltz v0, :cond_0

    #@18
    .line 237
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@1a
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@1c
    const/4 v2, 0x2

    #@1d
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@24
    .line 233
    :cond_0
    :goto_0
    return-void

    #@25
    .line 239
    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    #@28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 240
    if-ltz v0, :cond_0

    #@34
    .line 241
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@36
    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsService;->postCheckIdleStates(I)V

    #@39
    goto :goto_0
.end method
