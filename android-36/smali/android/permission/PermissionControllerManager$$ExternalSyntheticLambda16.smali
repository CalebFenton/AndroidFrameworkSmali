.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Landroid/permission/AdminPermissionControlParams;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;->f$1:Landroid/permission/AdminPermissionControlParams;

    return-void
.end method


# virtual methods
.method public final blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;->f$1:Landroid/permission/AdminPermissionControlParams;

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, p1}, Landroid/permission/PermissionControllerManager;->lambda$setRuntimePermissionGrantStateByDeviceAdmin$2(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
