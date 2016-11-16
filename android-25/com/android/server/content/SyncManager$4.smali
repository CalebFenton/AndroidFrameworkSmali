.class Lcom/android/server/content/SyncManager$4;
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
    .line 367
    iput-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get4(Lcom/android/server/content/SyncManager;)Z

    #@5
    move-result v0

    #@6
    .line 374
    .local v0, "wasConnected":Z
    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    #@8
    iget-object v2, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    #@a
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap6(Lcom/android/server/content/SyncManager;)Z

    #@d
    move-result v2

    #@e
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->-set1(Lcom/android/server/content/SyncManager;Z)Z

    #@11
    .line 375
    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    #@13
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get4(Lcom/android/server/content/SyncManager;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 376
    if-nez v0, :cond_0

    #@1b
    .line 377
    const-string/jumbo v1, "SyncManager"

    #@1e
    const/4 v2, 0x2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 378
    const-string/jumbo v1, "SyncManager"

    #@28
    const-string/jumbo v2, "Reconnection detected: clearing all backoffs"

    #@2b
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    #@30
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-wrap9(Lcom/android/server/content/SyncManager;)V

    #@33
    .line 369
    :cond_1
    return-void
.end method
