.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;II[ILandroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$deleteAllUsers"    # Z
    .param p3, "val$packageName"    # Ljava/lang/String;
    .param p4, "val$userId"    # I
    .param p5, "val$deleteFlags"    # I
    .param p6, "val$users"    # [I
    .param p7, "val$observer"    # Landroid/content/pm/IPackageDeleteObserver2;

    #@0
    .prologue
    .line 15525
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    #@4
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    #@6
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    #@8
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    #@a
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    #@c
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    #@e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    #@0
    .prologue
    .line 15527
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@4
    invoke-virtual {v5, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 15529
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    #@9
    if-nez v5, :cond_0

    #@b
    .line 15530
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@d
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    #@f
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    #@11
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    #@13
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    #@16
    move-result v2

    #@17
    .line 15554
    .local v2, "returnCode":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    #@19
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    #@1b
    const/4 v7, 0x0

    #@1c
    invoke-interface {v5, v6, v2, v7}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 15526
    :goto_1
    return-void

    #@20
    .line 15532
    .end local v2    # "returnCode":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@22
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    #@24
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    #@26
    invoke-static {v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap9(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    #@29
    move-result-object v0

    #@2a
    .line 15534
    .local v0, "blockUninstallUserIds":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 15535
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@32
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    #@34
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    #@36
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    #@38
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    #@3b
    move-result v2

    #@3c
    .restart local v2    # "returnCode":I
    goto :goto_0

    #@3d
    .line 15538
    .end local v2    # "returnCode":I
    :cond_1
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    #@3f
    and-int/lit8 v3, v5, -0x3

    #@41
    .line 15539
    .local v3, "userFlags":I
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    #@43
    const/4 v5, 0x0

    #@44
    array-length v7, v6

    #@45
    :goto_2
    if-ge v5, v7, :cond_3

    #@47
    aget v4, v6, v5

    #@49
    .line 15540
    .local v4, "userId":I
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@4c
    move-result v8

    #@4d
    if-nez v8, :cond_2

    #@4f
    .line 15541
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@51
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    #@53
    invoke-static {v8, v9, v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    #@56
    move-result v2

    #@57
    .line 15542
    .restart local v2    # "returnCode":I
    const/4 v8, 0x1

    #@58
    if-eq v2, v8, :cond_2

    #@5a
    .line 15543
    const-string/jumbo v8, "PackageManager"

    #@5d
    new-instance v9, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v10, "Package delete failed for user "

    #@65
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v9

    #@6d
    .line 15544
    const-string/jumbo v10, ", returnCode "

    #@70
    .line 15543
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 15539
    .end local v2    # "returnCode":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@81
    goto :goto_2

    #@82
    .line 15550
    .end local v4    # "userId":I
    :cond_3
    const/4 v2, -0x4

    #@83
    .restart local v2    # "returnCode":I
    goto :goto_0

    #@84
    .line 15555
    .end local v0    # "blockUninstallUserIds":[I
    .end local v3    # "userFlags":I
    :catch_0
    move-exception v1

    #@85
    .line 15556
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PackageManager"

    #@88
    const-string/jumbo v6, "Observer no longer exists."

    #@8b
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    goto :goto_1
.end method
