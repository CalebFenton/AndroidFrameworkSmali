.class Lcom/android/server/content/SyncManager$2;
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
    .line 259
    iput-object p1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

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
    .line 261
    iget-object v1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get13(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@9
    move-result v0

    #@a
    .line 262
    .local v0, "idle":Z
    iget-object v1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    #@c
    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->-set2(Lcom/android/server/content/SyncManager;Z)Z

    #@f
    .line 263
    if-eqz v0, :cond_0

    #@11
    .line 264
    iget-object v1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    #@13
    .line 265
    sget-object v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@15
    .line 266
    const/4 v3, 0x0

    #@16
    .line 264
    invoke-virtual {v1, v2, v3}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@19
    .line 260
    :goto_0
    return-void

    #@1a
    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    #@1c
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-wrap16(Lcom/android/server/content/SyncManager;)V

    #@1f
    goto :goto_0
.end method
