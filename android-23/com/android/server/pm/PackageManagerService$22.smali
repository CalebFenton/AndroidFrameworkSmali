.class Lcom/android/server/pm/PackageManagerService$22;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$installedLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "val$packageName"    # Ljava/lang/String;
    .param p4, "val$moveId"    # I

    #@0
    .prologue
    .line 15940
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$22;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    #@4
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$22;->val$packageName:Ljava/lang/String;

    #@6
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$22;->val$moveId:I

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
    .line 15952
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@5
    .line 15956
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$22;->val$packageName:Ljava/lang/String;

    #@9
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap35(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    #@c
    .line 15958
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    #@f
    move-result v0

    #@10
    .line 15959
    .local v0, "status":I
    sparse-switch v0, :sswitch_data_0

    #@13
    .line 15969
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@15
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    #@18
    move-result-object v1

    #@19
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$22;->val$moveId:I

    #@1b
    .line 15970
    const/4 v3, -0x6

    #@1c
    .line 15969
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    #@1f
    .line 15948
    :goto_0
    return-void

    #@20
    .line 15961
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@22
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$22;->val$moveId:I

    #@28
    .line 15962
    const/16 v3, -0x64

    #@2a
    .line 15961
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    #@2d
    goto :goto_0

    #@2e
    .line 15965
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@30
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    #@33
    move-result-object v1

    #@34
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$22;->val$moveId:I

    #@36
    .line 15966
    const/4 v3, -0x1

    #@37
    .line 15965
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    #@3a
    goto :goto_0

    #@3b
    .line 15959
    nop

    #@3c
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
    .line 15943
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@5
    throw v0
.end method
