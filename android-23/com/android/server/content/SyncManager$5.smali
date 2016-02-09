.class Lcom/android/server/content/SyncManager$5;
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
    .line 349
    iput-object p1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

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
    .line 352
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get9(Lcom/android/server/content/SyncManager;)Z

    #@5
    move-result v0

    #@6
    .line 356
    .local v0, "wasConnected":Z
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    #@8
    iget-object v2, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    #@a
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap5(Lcom/android/server/content/SyncManager;)Z

    #@d
    move-result v2

    #@e
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->-set1(Lcom/android/server/content/SyncManager;Z)Z

    #@11
    .line 357
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    #@13
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get9(Lcom/android/server/content/SyncManager;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 358
    if-nez v0, :cond_1

    #@1b
    .line 359
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
    .line 360
    const-string/jumbo v1, "SyncManager"

    #@28
    const-string/jumbo v2, "Reconnection detected: clearing all backoffs"

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    #@30
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get20(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    #@33
    move-result-object v2

    #@34
    monitor-enter v2

    #@35
    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    #@37
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@3a
    move-result-object v1

    #@3b
    iget-object v3, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    #@3d
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get20(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked(Lcom/android/server/content/SyncQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    monitor-exit v2

    #@45
    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    #@47
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-wrap16(Lcom/android/server/content/SyncManager;)V

    #@4a
    .line 351
    :cond_2
    return-void

    #@4b
    .line 362
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit v2

    #@4d
    throw v1
.end method
