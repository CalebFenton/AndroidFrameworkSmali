.class Lcom/android/server/pm/PackageManagerService$14;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$userId"    # I
    .param p4, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    #@0
    .prologue
    .line 16421
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    #@6
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 16423
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@5
    invoke-virtual {v4, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    .line 16425
    const/4 v2, 0x0

    #@9
    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@b
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    #@d
    .line 16426
    const-string/jumbo v7, "clearApplicationUserData"

    #@10
    .line 16425
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@13
    move-result-object v2

    #@14
    .line 16427
    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@16
    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@18
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@19
    .line 16428
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1b
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    #@1d
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    #@1f
    invoke-static {v4, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap1(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result v3

    #@23
    .local v3, "succeeded":Z
    :try_start_2
    monitor-exit v6

    #@24
    .line 16430
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@26
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    #@28
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    #@2a
    const/4 v8, 0x1

    #@2b
    invoke-static {v4, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@2e
    .line 16431
    if-eqz v2, :cond_0

    #@30
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    #@33
    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    #@35
    throw v5

    #@36
    .line 16427
    .end local v3    # "succeeded":Z
    :catchall_0
    move-exception v4

    #@37
    :try_start_4
    monitor-exit v6

    #@38
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@39
    .line 16431
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :catch_0
    move-exception v4

    #@3a
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3b
    :catchall_1
    move-exception v5

    #@3c
    move-object v9, v5

    #@3d
    move-object v5, v4

    #@3e
    move-object v4, v9

    #@3f
    :goto_1
    if-eqz v2, :cond_1

    #@41
    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    #@44
    :cond_1
    :goto_2
    if-eqz v5, :cond_3

    #@46
    throw v5

    #@47
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :catch_1
    move-exception v5

    #@48
    goto :goto_0

    #@49
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v3    # "succeeded":Z
    :catch_2
    move-exception v6

    #@4a
    if-nez v5, :cond_2

    #@4c
    move-object v5, v6

    #@4d
    goto :goto_2

    #@4e
    :cond_2
    if-eq v5, v6, :cond_1

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@53
    goto :goto_2

    #@54
    :cond_3
    throw v4

    #@55
    .line 16432
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :cond_4
    if-eqz v3, :cond_5

    #@57
    .line 16435
    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    #@59
    .line 16434
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    #@5f
    .line 16436
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_5

    #@61
    .line 16437
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    #@64
    .line 16440
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@66
    if-eqz v4, :cond_6

    #@68
    .line 16442
    :try_start_7
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@6a
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    #@6c
    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    #@6f
    .line 16422
    :cond_6
    :goto_3
    return-void

    #@70
    .line 16443
    :catch_3
    move-exception v1

    #@71
    .line 16444
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    #@74
    const-string/jumbo v5, "Observer no longer exists."

    #@77
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    goto :goto_3

    #@7b
    .line 16431
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v3    # "succeeded":Z
    :catchall_2
    move-exception v4

    #@7c
    goto :goto_1
.end method
