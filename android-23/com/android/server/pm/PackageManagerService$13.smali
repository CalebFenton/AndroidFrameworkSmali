.class Lcom/android/server/pm/PackageManagerService$13;
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
    .line 13239
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    #@6
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 13241
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@4
    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 13243
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@9
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@b
    monitor-enter v4

    #@c
    .line 13244
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    #@10
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    #@12
    invoke-static {v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap1(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v2

    #@16
    .local v2, "succeeded":Z
    monitor-exit v4

    #@17
    .line 13246
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@19
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    #@1b
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    #@1d
    const/4 v6, 0x1

    #@1e
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap23(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    #@21
    .line 13247
    if-eqz v2, :cond_0

    #@23
    .line 13250
    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    #@25
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    #@2b
    .line 13251
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_0

    #@2d
    .line 13252
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    #@30
    .line 13255
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@32
    if-eqz v3, :cond_1

    #@34
    .line 13257
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@36
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    #@38
    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 13240
    :cond_1
    :goto_0
    return-void

    #@3c
    .line 13243
    .end local v2    # "succeeded":Z
    :catchall_0
    move-exception v3

    #@3d
    monitor-exit v4

    #@3e
    throw v3

    #@3f
    .line 13258
    .restart local v2    # "succeeded":Z
    :catch_0
    move-exception v1

    #@40
    .line 13259
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PackageManager"

    #@43
    const-string/jumbo v4, "Observer no longer exists."

    #@46
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    goto :goto_0
.end method
