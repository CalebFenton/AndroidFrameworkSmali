.class Lcom/android/server/pm/PackageManagerService$15;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
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
    .line 13477
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    #@6
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 13479
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@4
    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 13481
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@9
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@b
    monitor-enter v3

    #@c
    .line 13482
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    #@10
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    #@12
    invoke-static {v2, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap2(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v1

    #@16
    .local v1, "succeded":Z
    monitor-exit v3

    #@17
    .line 13484
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@19
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    #@1b
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap23(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    #@21
    .line 13485
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 13487
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@27
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    #@29
    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2c
    .line 13478
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 13481
    .end local v1    # "succeded":Z
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2

    #@30
    .line 13488
    .restart local v1    # "succeded":Z
    :catch_0
    move-exception v0

    #@31
    .line 13489
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    #@34
    const-string/jumbo v3, "Observer no longer exists."

    #@37
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    goto :goto_0
.end method
