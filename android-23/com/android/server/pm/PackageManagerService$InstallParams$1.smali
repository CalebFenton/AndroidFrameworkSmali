.class Lcom/android/server/pm/PackageManagerService$InstallParams$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$InstallParams;->handleStartCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

.field final synthetic val$verificationId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$InstallParams;
    .param p2, "val$verificationId"    # I

    #@0
    .prologue
    .line 10745
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    #@2
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->val$verificationId:I

    #@4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 10748
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    #@2
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@6
    .line 10749
    const/16 v2, 0x10

    #@8
    .line 10748
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 10750
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->val$verificationId:I

    #@e
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@10
    .line 10751
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    #@12
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@14
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@16
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    #@18
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1a
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Lcom/android/server/pm/PackageManagerService;)J

    #@1d
    move-result-wide v2

    #@1e
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@21
    .line 10747
    return-void
.end method
