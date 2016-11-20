.class Lcom/android/server/am/ActivityManagerService$8;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$pkgUidF:I

.field final synthetic val$userIdF:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;IILandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$pkgUidF"    # I
    .param p3, "val$userIdF"    # I
    .param p4, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    #@0
    .prologue
    .line 5492
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$8;->val$pkgUidF:I

    #@4
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$8;->val$userIdF:I

    #@6
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@8
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5496
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v3

    #@5
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@8
    .line 5497
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c
    move-object/from16 v0, p0

    #@e
    iget v4, v0, Lcom/android/server/am/ActivityManagerService$8;->val$pkgUidF:I

    #@10
    move-object/from16 v0, p1

    #@12
    invoke-static {v2, v0, v4}, Lcom/android/server/am/ActivityManagerService;->-wrap8(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v3

    #@16
    .line 5496
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@19
    .line 5500
    new-instance v5, Landroid/content/Intent;

    #@1b
    const-string/jumbo v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    #@1e
    .line 5501
    const-string/jumbo v3, "package"

    #@21
    const/4 v4, 0x0

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@27
    move-result-object v3

    #@28
    .line 5500
    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@2b
    .line 5502
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.UID"

    #@2e
    move-object/from16 v0, p0

    #@30
    iget v3, v0, Lcom/android/server/am/ActivityManagerService$8;->val$pkgUidF:I

    #@32
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@35
    .line 5503
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@38
    move-object/from16 v0, p0

    #@3a
    iget v3, v0, Lcom/android/server/am/ActivityManagerService$8;->val$pkgUidF:I

    #@3c
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@3f
    move-result v3

    #@40
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@43
    .line 5504
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@47
    const-string/jumbo v3, "android"

    #@4a
    .line 5505
    move-object/from16 v0, p0

    #@4c
    iget v15, v0, Lcom/android/server/am/ActivityManagerService$8;->val$userIdF:I

    #@4e
    .line 5504
    const/16 v4, 0x3e8

    #@50
    .line 5505
    const/4 v6, 0x0

    #@51
    const/4 v7, 0x0

    #@52
    const/4 v8, 0x0

    #@53
    const/4 v9, 0x0

    #@54
    const/4 v10, 0x0

    #@55
    const/4 v11, 0x0

    #@56
    const/4 v12, 0x0

    #@57
    const/4 v13, 0x0

    #@58
    const/4 v14, 0x0

    #@59
    .line 5504
    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I

    #@5c
    .line 5507
    move-object/from16 v0, p0

    #@5e
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@60
    if-eqz v2, :cond_0

    #@62
    .line 5508
    move-object/from16 v0, p0

    #@64
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@66
    move-object/from16 v0, p1

    #@68
    move/from16 v1, p2

    #@6a
    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    #@6d
    .line 5495
    :cond_0
    return-void

    #@6e
    .line 5496
    .end local v5    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    #@6f
    monitor-exit v3

    #@70
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@73
    throw v2
.end method
