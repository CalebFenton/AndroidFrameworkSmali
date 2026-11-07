.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Handler;

.field public final synthetic blacklist f$1:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;->f$1:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;->f$0:Landroid/os/Handler;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;->f$1:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Landroid/permission/PermissionControllerManager;->lambda$countPermissionApps$20(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method
