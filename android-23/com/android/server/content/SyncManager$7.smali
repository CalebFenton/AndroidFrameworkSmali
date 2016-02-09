.class Lcom/android/server/content/SyncManager$7;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

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
    .line 388
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 389
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@9
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c
    move-result v1

    #@d
    .line 390
    .local v1, "userId":I
    if-ne v1, v3, :cond_0

    #@f
    return-void

    #@10
    .line 392
    :cond_0
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 393
    iget-object v2, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    #@1b
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->-wrap11(Lcom/android/server/content/SyncManager;I)V

    #@1e
    .line 387
    :cond_1
    :goto_0
    return-void

    #@1f
    .line 394
    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_STARTING"

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 395
    iget-object v2, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    #@2a
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->-wrap12(Lcom/android/server/content/SyncManager;I)V

    #@2d
    goto :goto_0

    #@2e
    .line 396
    :cond_3
    const-string/jumbo v2, "android.intent.action.USER_STOPPING"

    #@31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_1

    #@37
    .line 397
    iget-object v2, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    #@39
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->-wrap13(Lcom/android/server/content/SyncManager;I)V

    #@3c
    goto :goto_0
.end method
