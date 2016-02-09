.class Lcom/android/server/content/SyncManager$1;
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
    .line 237
    iput-object p1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

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
    const/4 v2, 0x2

    #@1
    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 241
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 242
    const-string/jumbo v1, "SyncManager"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 243
    const-string/jumbo v1, "SyncManager"

    #@1a
    const-string/jumbo v2, "Internal storage is low."

    #@1d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    #@22
    const/4 v2, 0x1

    #@23
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->-set4(Lcom/android/server/content/SyncManager;Z)Z

    #@26
    .line 246
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    #@28
    .line 247
    sget-object v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2a
    .line 248
    const/4 v3, 0x0

    #@2b
    .line 246
    invoke-virtual {v1, v2, v3}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@2e
    .line 239
    :cond_1
    :goto_0
    return-void

    #@2f
    .line 249
    :cond_2
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_OK"

    #@32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 250
    const-string/jumbo v1, "SyncManager"

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 251
    const-string/jumbo v1, "SyncManager"

    #@44
    const-string/jumbo v2, "Internal storage is ok."

    #@47
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 253
    :cond_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    #@4c
    const/4 v2, 0x0

    #@4d
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->-set4(Lcom/android/server/content/SyncManager;Z)Z

    #@50
    .line 254
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    #@52
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-wrap16(Lcom/android/server/content/SyncManager;)V

    #@55
    goto :goto_0
.end method
