.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic blacklist f$0:Landroid/permission/PermissionControllerManager;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/permission/PermissionControllerManager;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;->f$0:Landroid/permission/PermissionControllerManager;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;->f$0:Landroid/permission/PermissionControllerManager;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;->f$2:Ljava/util/List;

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, v2, p1}, Landroid/permission/PermissionControllerManager;->$r8$lambda$OAORQ7ETNZpZfw4mhvhDYjplsxU(Landroid/permission/PermissionControllerManager;Ljava/lang/String;Ljava/util/List;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
