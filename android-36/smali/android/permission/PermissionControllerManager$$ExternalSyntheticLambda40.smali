.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Throwable;

.field public final synthetic blacklist f$1:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;->f$0:Ljava/lang/Throwable;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;->f$1:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

    iput-object p3, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;->f$0:Ljava/lang/Throwable;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;->f$1:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroid/permission/PermissionControllerManager;->lambda$getAppPermissions$15(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;)V

    return-void
.end method
