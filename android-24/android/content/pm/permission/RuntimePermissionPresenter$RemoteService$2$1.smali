.class Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->onResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;

.field final synthetic val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

.field final synthetic val$reportedApps:Ljava/util/List;

.field final synthetic val$system:Z


# direct methods
.method constructor <init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;ZLjava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;
    .param p2, "val$callback"    # Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .param p3, "val$system"    # Z

    #@0
    .prologue
    .line 285
    .local p4, "val$reportedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;->this$2:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;

    #@2
    iput-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    #@4
    iput-boolean p3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;->val$system:Z

    #@6
    iput-object p4, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;->val$reportedApps:Ljava/util/List;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    #@2
    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;->val$system:Z

    #@4
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;->val$reportedApps:Ljava/util/List;

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;->getAppsUsingPermissions(ZLjava/util/List;)V

    #@9
    .line 287
    return-void
.end method
