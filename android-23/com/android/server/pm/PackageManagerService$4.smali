.class Lcom/android/server/pm/PackageManagerService$4;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$volumeUuid"    # Ljava/lang/String;
    .param p3, "val$freeStorageSize"    # J
    .param p5, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    #@0
    .prologue
    .line 2921
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$4;->val$volumeUuid:Ljava/lang/String;

    #@4
    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$freeStorageSize:J

    #@6
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2923
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@5
    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    .line 2924
    const/4 v1, -0x1

    #@9
    .line 2925
    .local v1, "retCode":I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@b
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 2926
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@10
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@12
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$4;->val$volumeUuid:Ljava/lang/String;

    #@14
    iget-wide v6, p0, Lcom/android/server/pm/PackageManagerService$4;->val$freeStorageSize:J

    #@16
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    #@19
    move-result v1

    #@1a
    .line 2927
    if-gez v1, :cond_0

    #@1c
    .line 2928
    const-string/jumbo v4, "PackageManager"

    #@1f
    const-string/jumbo v5, "Couldn\'t clear application caches"

    #@22
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    monitor-exit v3

    #@26
    .line 2931
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 2933
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@2c
    if-ltz v1, :cond_1

    #@2e
    const/4 v2, 0x1

    #@2f
    :cond_1
    const/4 v4, 0x0

    #@30
    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@33
    .line 2922
    :cond_2
    :goto_0
    return-void

    #@34
    .line 2925
    :catchall_0
    move-exception v2

    #@35
    monitor-exit v3

    #@36
    throw v2

    #@37
    .line 2934
    :catch_0
    move-exception v0

    #@38
    .line 2935
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    #@3b
    const-string/jumbo v3, "RemoveException when invoking call back"

    #@3e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_0
.end method
