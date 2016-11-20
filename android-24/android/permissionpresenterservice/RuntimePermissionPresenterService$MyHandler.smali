.class final Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;
.super Landroid/os/Handler;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method public constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 107
    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    #@2
    .line 108
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 107
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 113
    iget v7, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v7, :pswitch_data_0

    #@6
    .line 112
    :goto_0
    return-void

    #@7
    .line 115
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@b
    .line 116
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@d
    check-cast v3, Ljava/lang/String;

    #@f
    .line 117
    .local v3, "packageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@11
    check-cast v2, Landroid/os/RemoteCallback;

    #@13
    .line 118
    .local v2, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@16
    .line 120
    iget-object v7, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    #@18
    invoke-virtual {v7, v3}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;

    #@1b
    move-result-object v4

    #@1c
    .line 121
    .local v4, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    if-eqz v4, :cond_0

    #@1e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_1

    #@24
    .line 127
    :cond_0
    invoke-virtual {v2, v9}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    #@27
    goto :goto_0

    #@28
    .line 122
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    #@2a
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@2d
    .line 123
    .local v5, "result":Landroid/os/Bundle;
    const-string/jumbo v7, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    #@30
    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    #@33
    .line 125
    invoke-virtual {v2, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    #@36
    goto :goto_0

    #@37
    .line 132
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callback":Landroid/os/RemoteCallback;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    .end local v5    # "result":Landroid/os/Bundle;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@39
    check-cast v2, Landroid/os/RemoteCallback;

    #@3b
    .line 133
    .restart local v2    # "callback":Landroid/os/RemoteCallback;
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@3d
    const/4 v8, 0x1

    #@3e
    if-ne v7, v8, :cond_3

    #@40
    const/4 v6, 0x1

    #@41
    .line 134
    .local v6, "system":Z
    :goto_1
    iget-object v7, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    #@43
    invoke-virtual {v7, v6}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onGetAppsUsingPermissions(Z)Ljava/util/List;

    #@46
    move-result-object v0

    #@47
    .line 135
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_2

    #@49
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@4c
    move-result v7

    #@4d
    if-eqz v7, :cond_4

    #@4f
    .line 140
    :cond_2
    invoke-virtual {v2, v9}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    #@52
    goto :goto_0

    #@53
    .line 133
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "system":Z
    :cond_3
    const/4 v6, 0x0

    #@54
    .restart local v6    # "system":Z
    goto :goto_1

    #@55
    .line 136
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    #@57
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@5a
    .line 137
    .restart local v5    # "result":Landroid/os/Bundle;
    const-string/jumbo v7, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    #@5d
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    #@60
    .line 138
    invoke-virtual {v2, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    #@63
    goto :goto_0

    #@64
    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
