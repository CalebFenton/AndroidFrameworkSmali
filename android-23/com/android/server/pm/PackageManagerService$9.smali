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
    .line 10110
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
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v13, 0x0

    #@3
    .line 10112
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@7
    invoke-virtual {v10, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@a
    .line 10114
    new-instance v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@c
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e
    invoke-direct {v7, v10}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    #@11
    .line 10115
    .local v7, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$currentStatus:I

    #@13
    iput v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@15
    .line 10116
    const/4 v10, -0x1

    #@16
    iput v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    #@18
    .line 10117
    iput-object v11, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@1a
    .line 10118
    new-instance v10, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@1c
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1e
    invoke-direct {v10, v11}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    #@21
    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@23
    .line 10119
    iget v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@25
    if-ne v10, v14, :cond_0

    #@27
    .line 10120
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@29
    iget v11, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@2b
    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    #@2e
    .line 10121
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@30
    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@32
    monitor-enter v11

    #@33
    .line 10122
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@35
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@37
    invoke-static {v10, v12, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap25(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v11

    #@3b
    .line 10124
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@3d
    iget v11, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@3f
    iget v12, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    #@41
    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    #@44
    .line 10130
    :cond_0
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@46
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@48
    if-eqz v10, :cond_4

    #@4a
    const/4 v9, 0x1

    #@4b
    .line 10131
    .local v9, "update":Z
    :goto_0
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4d
    if-nez v10, :cond_5

    #@4f
    const/4 v5, 0x0

    #@50
    .line 10132
    .local v5, "flags":I
    :goto_1
    if-nez v9, :cond_7

    #@52
    .line 10133
    const v10, 0x8000

    #@55
    and-int/2addr v10, v5

    #@56
    if-eqz v10, :cond_6

    #@58
    const/4 v2, 0x1

    #@59
    .line 10139
    .local v2, "doRestore":Z
    :goto_2
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5b
    iget v10, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    #@5d
    if-gez v10, :cond_1

    #@5f
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@61
    iput v14, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    #@63
    .line 10140
    :cond_1
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@65
    iget v8, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    #@67
    add-int/lit8 v11, v8, 0x1

    #@69
    iput v11, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    #@6b
    .line 10142
    .local v8, "token":I
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    #@6d
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6f
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@71
    invoke-direct {v1, v10, v11, v7}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    #@74
    .line 10143
    .local v1, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@76
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@78
    invoke-virtual {v10, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@7b
    .line 10146
    iget v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@7d
    if-ne v10, v14, :cond_2

    #@7f
    if-eqz v2, :cond_2

    #@81
    .line 10152
    const-string/jumbo v10, "backup"

    #@84
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@87
    move-result-object v10

    #@88
    .line 10151
    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@8b
    move-result-object v0

    #@8c
    .line 10153
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_9

    #@8e
    .line 10157
    const/4 v10, 0x0

    #@8f
    :try_start_1
    invoke-interface {v0, v10}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    #@92
    move-result v10

    #@93
    if-eqz v10, :cond_8

    #@95
    .line 10158
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@97
    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@99
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@9b
    invoke-interface {v0, v10, v8}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@9e
    .line 10174
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_2
    :goto_3
    if-nez v2, :cond_3

    #@a0
    .line 10178
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@a2
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@a4
    const/16 v11, 0x9

    #@a6
    invoke-virtual {v10, v11, v8, v13}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    #@a9
    move-result-object v6

    #@aa
    .line 10179
    .local v6, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@ac
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@ae
    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    #@b1
    .line 10111
    .end local v6    # "msg":Landroid/os/Message;
    :cond_3
    return-void

    #@b2
    .line 10121
    .end local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v2    # "doRestore":Z
    .end local v5    # "flags":I
    .end local v8    # "token":I
    .end local v9    # "update":Z
    :catchall_0
    move-exception v10

    #@b3
    monitor-exit v11

    #@b4
    throw v10

    #@b5
    .line 10130
    :cond_4
    const/4 v9, 0x0

    #@b6
    .restart local v9    # "update":Z
    goto :goto_0

    #@b7
    .line 10131
    :cond_5
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@b9
    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@bb
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    #@bd
    .restart local v5    # "flags":I
    goto :goto_1

    #@be
    .line 10133
    :cond_6
    const/4 v2, 0x0

    #@bf
    .restart local v2    # "doRestore":Z
    goto :goto_2

    #@c0
    .line 10132
    .end local v2    # "doRestore":Z
    :cond_7
    const/4 v2, 0x0

    #@c1
    .restart local v2    # "doRestore":Z
    goto :goto_2

    #@c2
    .line 10160
    .restart local v0    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v8    # "token":I
    :cond_8
    const/4 v2, 0x0

    #@c3
    goto :goto_3

    #@c4
    .line 10164
    :catch_0
    move-exception v4

    #@c5
    .line 10165
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PackageManager"

    #@c8
    const-string/jumbo v11, "Exception trying to enqueue restore"

    #@cb
    invoke-static {v10, v11, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ce
    .line 10166
    const/4 v2, 0x0

    #@cf
    goto :goto_3

    #@d0
    .line 10169
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    const-string/jumbo v10, "PackageManager"

    #@d3
    const-string/jumbo v11, "Backup Manager not found!"

    #@d6
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d9
    .line 10170
    const/4 v2, 0x0

    #@da
    goto :goto_3

    #@db
    .line 10162
    :catch_1
    move-exception v3

    #@dc
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method
