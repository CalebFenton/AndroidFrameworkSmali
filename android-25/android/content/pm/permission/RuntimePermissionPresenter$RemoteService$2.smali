.class Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

.field final synthetic val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$system:Z


# direct methods
.method constructor <init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Z)V
    .locals 0
    .param p1, "this$1"    # Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;
    .param p2, "val$handler"    # Landroid/os/Handler;
    .param p3, "val$callback"    # Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .param p4, "val$system"    # Z

    #@0
    .prologue
    .line 272
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->this$1:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    #@2
    iput-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$handler:Landroid/os/Handler;

    #@4
    iput-object p3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    #@6
    iput-boolean p4, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$system:Z

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 276
    const/4 v0, 0x0

    #@1
    .line 277
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz p1, :cond_0

    #@3
    .line 278
    const-string/jumbo v2, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    #@6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    .line 280
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    if-nez v0, :cond_1

    #@c
    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    .line 283
    :cond_1
    move-object v1, v0

    #@11
    .line 284
    .local v1, "reportedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$handler:Landroid/os/Handler;

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 285
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$handler:Landroid/os/Handler;

    #@17
    new-instance v3, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;

    #@19
    iget-object v4, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    #@1b
    iget-boolean v5, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$system:Z

    #@1d
    invoke-direct {v3, p0, v4, v5, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;ZLjava/util/List;)V

    #@20
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@23
    .line 274
    :goto_0
    return-void

    #@24
    .line 292
    :cond_2
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    #@26
    iget-boolean v3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$system:Z

    #@28
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;->getAppsUsingPermissions(ZLjava/util/List;)V

    #@2b
    goto :goto_0
.end method
