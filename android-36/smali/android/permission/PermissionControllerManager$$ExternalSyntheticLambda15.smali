.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;->f$0:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;->f$0:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/permission/PermissionControllerManager;->lambda$revokeRuntimePermissions$1(Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;Ljava/util/Map;Ljava/lang/Throwable;)V

    return-void
.end method
