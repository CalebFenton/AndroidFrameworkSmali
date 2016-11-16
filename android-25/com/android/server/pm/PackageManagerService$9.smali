.class Lcom/android/server/pm/PackageManagerService$9;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$currentStatus"    # I
    .param p3, "val$args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@0
    .prologue
    .line 12368
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$currentStatus:I

    #@4
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    #@0
    .prologue
    .line 12370
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@4
    invoke-virtual {v10, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 12372
    new-instance v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@9
    invoke-direct {v7}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>()V

    #@c
    .line 12373
    .local v7, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$currentStatus:I

    #@e
    invoke-virtual {v7, v10}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    #@11
    .line 12374
    const/4 v10, -0x1

    #@12
    iput v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    #@14
    .line 12375
    const/4 v10, 0x0

    #@15
    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@17
    .line 12376
    const/4 v10, 0x0

    #@18
    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@1a
    .line 12377
    iget v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@1c
    const/4 v11, 0x1

    #@1d
    if-ne v10, v11, :cond_0

    #@1f
    .line 12378
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@21
    iget v11, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@23
    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    #@26
    .line 12379
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@28
    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@2a
    monitor-enter v11

    #@2b
    .line 12380
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2d
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@2f
    invoke-static {v10, v12, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap25(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v11

    #@33
    .line 12382
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@35
    iget v11, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@37
    iget v12, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    #@39
    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    #@3c
    .line 12388
    :cond_0
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@3e
    if-eqz v10, :cond_5

    #@40
    .line 12389
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@42
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@44
    if-eqz v10, :cond_4

    #@46
    const/4 v9, 0x1

    #@47
    .line 12390
    .local v9, "update":Z
    :goto_0
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@49
    if-nez v10, :cond_6

    #@4b
    const/4 v5, 0x0

    #@4c
    .line 12391
    .local v5, "flags":I
    :goto_1
    if-nez v9, :cond_8

    #@4e
    .line 12392
    const v10, 0x8000

    #@51
    and-int/2addr v10, v5

    #@52
    if-eqz v10, :cond_7

    #@54
    const/4 v2, 0x1

    #@55
    .line 12398
    .local v2, "doRestore":Z
    :goto_2
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@57
    iget v10, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    #@59
    if-gez v10, :cond_1

    #@5b
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5d
    const/4 v11, 0x1

    #@5e
    iput v11, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    #@60
    .line 12399
    :cond_1
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@62
    iget v8, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    #@64
    add-int/lit8 v11, v8, 0x1

    #@66
    iput v11, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    #@68
    .line 12401
    .local v8, "token":I
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    #@6a
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@6c
    invoke-direct {v1, v10, v7}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    #@6f
    .line 12402
    .local v1, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@71
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@73
    invoke-virtual {v10, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@76
    .line 12405
    iget v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@78
    const/4 v11, 0x1

    #@79
    if-ne v10, v11, :cond_2

    #@7b
    if-eqz v2, :cond_2

    #@7d
    .line 12411
    const-string/jumbo v10, "backup"

    #@80
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@83
    move-result-object v10

    #@84
    .line 12410
    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@87
    move-result-object v0

    #@88
    .line 12412
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_a

    #@8a
    .line 12415
    const-string/jumbo v10, "restore"

    #@8d
    const-wide/32 v12, 0x40000

    #@90
    invoke-static {v12, v13, v10, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@93
    .line 12418
    const/4 v10, 0x0

    #@94
    :try_start_1
    invoke-interface {v0, v10}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    #@97
    move-result v10

    #@98
    if-eqz v10, :cond_9

    #@9a
    .line 12419
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@9c
    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9e
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@a0
    invoke-interface {v0, v10, v8}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@a3
    .line 12435
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_2
    :goto_3
    if-nez v2, :cond_3

    #@a5
    .line 12440
    const-string/jumbo v10, "postInstall"

    #@a8
    const-wide/32 v12, 0x40000

    #@ab
    invoke-static {v12, v13, v10, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@ae
    .line 12442
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@b0
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@b2
    const/16 v11, 0x9

    #@b4
    const/4 v12, 0x0

    #@b5
    invoke-virtual {v10, v11, v8, v12}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    #@b8
    move-result-object v6

    #@b9
    .line 12443
    .local v6, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@bb
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@bd
    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    #@c0
    .line 12369
    .end local v6    # "msg":Landroid/os/Message;
    :cond_3
    return-void

    #@c1
    .line 12379
    .end local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v2    # "doRestore":Z
    .end local v5    # "flags":I
    .end local v8    # "token":I
    .end local v9    # "update":Z
    :catchall_0
    move-exception v10

    #@c2
    monitor-exit v11

    #@c3
    throw v10

    #@c4
    .line 12389
    :cond_4
    const/4 v9, 0x0

    #@c5
    .restart local v9    # "update":Z
    goto :goto_0

    #@c6
    .line 12388
    .end local v9    # "update":Z
    :cond_5
    const/4 v9, 0x0

    #@c7
    .restart local v9    # "update":Z
    goto :goto_0

    #@c8
    .line 12390
    :cond_6
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@ca
    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@cc
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    #@ce
    .restart local v5    # "flags":I
    goto/16 :goto_1

    #@d0
    .line 12392
    :cond_7
    const/4 v2, 0x0

    #@d1
    .restart local v2    # "doRestore":Z
    goto :goto_2

    #@d2
    .line 12391
    .end local v2    # "doRestore":Z
    :cond_8
    const/4 v2, 0x0

    #@d3
    .restart local v2    # "doRestore":Z
    goto :goto_2

    #@d4
    .line 12421
    .restart local v0    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v8    # "token":I
    :cond_9
    const/4 v2, 0x0

    #@d5
    goto :goto_3

    #@d6
    .line 12425
    :catch_0
    move-exception v4

    #@d7
    .line 12426
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PackageManager"

    #@da
    const-string/jumbo v11, "Exception trying to enqueue restore"

    #@dd
    invoke-static {v10, v11, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e0
    .line 12427
    const/4 v2, 0x0

    #@e1
    goto :goto_3

    #@e2
    .line 12430
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    const-string/jumbo v10, "PackageManager"

    #@e5
    const-string/jumbo v11, "Backup Manager not found!"

    #@e8
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@eb
    .line 12431
    const/4 v2, 0x0

    #@ec
    goto :goto_3

    #@ed
    .line 12423
    :catch_1
    move-exception v3

    #@ee
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method
