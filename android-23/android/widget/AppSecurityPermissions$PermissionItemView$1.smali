.class Landroid/widget/AppSecurityPermissions$PermissionItemView$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;


# direct methods
.method constructor <init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@0
    .prologue
    .line 234
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 237
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@2
    invoke-virtual {v1}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v0

    #@a
    .line 238
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@c
    invoke-static {v1}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->-get1(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@12
    iget-object v2, v2, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@14
    iget-object v2, v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    #@16
    .line 239
    new-instance v3, Landroid/os/UserHandle;

    #@18
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@1a
    invoke-static {v4}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->-get0(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    #@21
    move-result v4

    #@22
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@25
    .line 238
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    #@28
    .line 240
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@2a
    const/16 v2, 0x8

    #@2c
    invoke-virtual {v1, v2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setVisibility(I)V

    #@2f
    .line 236
    return-void
.end method
