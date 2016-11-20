.class Lcom/android/server/pm/PackageManagerService$27;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$moveId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;Lcom/android/server/pm/PackageManagerService$PackageFreezer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$installedLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "val$freezer"    # Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .param p4, "val$moveId"    # I

    #@0
    .prologue
    .line 20145
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    #@4
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@6
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    #@8
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 20157
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@5
    .line 20158
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@7
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    #@a
    .line 20160
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    #@d
    move-result v0

    #@e
    .line 20161
    .local v0, "status":I
    sparse-switch v0, :sswitch_data_0

    #@11
    .line 20171
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@13
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    #@16
    move-result-object v1

    #@17
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    #@19
    .line 20172
    const/4 v3, -0x6

    #@1a
    .line 20171
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    #@1d
    .line 20153
    :goto_0
    return-void

    #@1e
    .line 20163
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@20
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    #@23
    move-result-object v1

    #@24
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    #@26
    .line 20164
    const/16 v3, -0x64

    #@28
    .line 20163
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    #@2b
    goto :goto_0

    #@2c
    .line 20167
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2e
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    #@31
    move-result-object v1

    #@32
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    #@34
    .line 20168
    const/4 v3, -0x1

    #@35
    .line 20167
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    #@38
    goto :goto_0

    #@39
    .line 20161
    nop

    #@3a
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 20148
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@5
    throw v0
.end method
