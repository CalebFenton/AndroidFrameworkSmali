.class Lcom/android/server/tv/TvInputManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    #@0
    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

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
    const/4 v3, 0x0

    #@1
    .line 268
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 269
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 270
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@10
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@13
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v2

    #@17
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap19(Lcom/android/server/tv/TvInputManagerService;I)V

    #@1a
    .line 267
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 271
    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 272
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@26
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@29
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2c
    move-result v2

    #@2d
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap15(Lcom/android/server/tv/TvInputManagerService;I)V

    #@30
    goto :goto_0
.end method
