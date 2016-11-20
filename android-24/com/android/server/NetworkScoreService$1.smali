.class Lcom/android/server/NetworkScoreService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkScoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

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
    const/16 v3, -0x2710

    #@2
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@9
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c
    move-result v1

    #@d
    .line 78
    .local v1, "userId":I
    if-ne v1, v3, :cond_0

    #@f
    return-void

    #@10
    .line 80
    :cond_0
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 81
    iget-object v2, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

    #@1b
    invoke-static {v2, v1}, Lcom/android/server/NetworkScoreService;->-wrap2(Lcom/android/server/NetworkScoreService;I)V

    #@1e
    .line 74
    :cond_1
    return-void
.end method
