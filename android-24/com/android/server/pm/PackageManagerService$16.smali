.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "val$userId"    # I
    .param p4, "val$packageName"    # Ljava/lang/String;
    .param p5, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    #@0
    .prologue
    .line 16681
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    #@4
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    #@6
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    #@8
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 16683
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 16684
    const/4 v1, 0x3

    #@6
    .line 16688
    .local v1, "flags":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@8
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    #@a
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    #@c
    const/16 v6, 0x103

    #@e
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    #@11
    .line 16689
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@13
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    #@15
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    #@17
    const/16 v6, 0x203

    #@19
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v3

    #@1d
    .line 16691
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1f
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    #@21
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    #@23
    const/4 v5, 0x0

    #@24
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    #@27
    .line 16692
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 16694
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    #@2d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    #@2f
    const/4 v4, 0x1

    #@30
    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@33
    .line 16682
    :cond_0
    :goto_0
    return-void

    #@34
    .line 16683
    :catchall_0
    move-exception v2

    #@35
    monitor-exit v3

    #@36
    throw v2

    #@37
    .line 16695
    :catch_0
    move-exception v0

    #@38
    .line 16696
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    #@3b
    const-string/jumbo v3, "Observer no longer exists."

    #@3e
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_0
.end method
