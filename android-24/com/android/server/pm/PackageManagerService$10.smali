.class Lcom/android/server/pm/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installerPackage:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$pkgName"    # Ljava/lang/String;
    .param p3, "val$userId"    # I
    .param p4, "val$installerPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 12409
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$pkgName:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$userId:I

    #@6
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$10;->val$installerPackage:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 12412
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v3

    #@9
    if-ge v1, v3, :cond_2

    #@b
    .line 12413
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@d
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    #@15
    .line 12414
    .local v0, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$pkgName:Ljava/lang/String;

    #@17
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@19
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@1b
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 12416
    const/4 v2, 0x0

    #@26
    .local v2, "uIndex":I
    :goto_1
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@28
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    #@2a
    array-length v3, v3

    #@2b
    if-ge v2, v3, :cond_1

    #@2d
    .line 12417
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$userId:I

    #@2f
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@31
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    #@33
    aget v4, v4, v2

    #@35
    if-ne v3, v4, :cond_0

    #@37
    .line 12422
    return-void

    #@38
    .line 12416
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 12412
    .end local v2    # "uIndex":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 12431
    .end local v0    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@40
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$10;->val$pkgName:Ljava/lang/String;

    #@42
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$10;->val$installerPackage:Ljava/lang/String;

    #@44
    const/4 v6, 0x1

    #@45
    new-array v6, v6, [I

    #@47
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$10;->val$userId:I

    #@49
    const/4 v8, 0x0

    #@4a
    aput v7, v6, v8

    #@4c
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap37(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[I)V

    #@4f
    .line 12411
    return-void
.end method
