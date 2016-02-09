.class Lcom/android/server/pm/PackageManagerService$11;
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

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILandroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$userId"    # I
    .param p4, "val$flags"    # I
    .param p5, "val$observer"    # Landroid/content/pm/IPackageDeleteObserver2;

    #@0
    .prologue
    .line 12623
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    #@6
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$flags:I

    #@8
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 12625
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@4
    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 12626
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@9
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    #@b
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    #@d
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$flags:I

    #@f
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap11(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    #@12
    move-result v1

    #@13
    .line 12627
    .local v1, "returnCode":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 12629
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    #@19
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v1, v4}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 12624
    :cond_0
    :goto_0
    return-void

    #@20
    .line 12630
    :catch_0
    move-exception v0

    #@21
    .line 12631
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    #@24
    const-string/jumbo v3, "Observer no longer exists."

    #@27
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    goto :goto_0
.end method
