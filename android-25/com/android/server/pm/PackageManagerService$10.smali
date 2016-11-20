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
    .line 12465
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
    const/4 v6, 0x1

    #@1
    .line 12468
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_3

    #@c
    .line 12469
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    #@16
    .line 12470
    .local v0, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@18
    iget v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@1a
    if-eq v3, v6, :cond_1

    #@1c
    .line 12468
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 12473
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$pkgName:Ljava/lang/String;

    #@21
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@23
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@25
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@27
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 12475
    const/4 v2, 0x0

    #@30
    .local v2, "uIndex":I
    :goto_1
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@32
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    #@34
    array-length v3, v3

    #@35
    if-ge v2, v3, :cond_0

    #@37
    .line 12476
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$userId:I

    #@39
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@3b
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    #@3d
    aget v4, v4, v2

    #@3f
    if-ne v3, v4, :cond_2

    #@41
    .line 12481
    return-void

    #@42
    .line 12475
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_1

    #@45
    .line 12490
    .end local v0    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v2    # "uIndex":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@47
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$10;->val$pkgName:Ljava/lang/String;

    #@49
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$10;->val$installerPackage:Ljava/lang/String;

    #@4b
    new-array v6, v6, [I

    #@4d
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$10;->val$userId:I

    #@4f
    const/4 v8, 0x0

    #@50
    aput v7, v6, v8

    #@52
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap37(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[I)V

    #@55
    .line 12467
    return-void
.end method
