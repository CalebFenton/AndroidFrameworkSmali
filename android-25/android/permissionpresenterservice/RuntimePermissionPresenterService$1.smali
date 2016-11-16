.class Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;
.super Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    #@0
    .prologue
    .line 85
    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    #@2
    invoke-direct {p0}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    #@0
    .prologue
    .line 88
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 89
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 90
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 91
    iget-object v1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    #@a
    invoke-static {v1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->-get0(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 87
    return-void
.end method

.method public getAppsUsingPermissions(ZLandroid/os/RemoteCallback;)V
    .locals 4
    .param p1, "system"    # Z
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    iget-object v0, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    #@3
    invoke-static {v0}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->-get0(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    .line 98
    if-eqz p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 97
    :goto_0
    const/4 v3, 0x2

    #@b
    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 96
    return-void

    #@13
    :cond_0
    move v0, v1

    #@14
    .line 98
    goto :goto_0
.end method
