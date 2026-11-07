.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic blacklist f$0:Landroid/permission/PermissionControllerManager;

.field public final synthetic blacklist f$1:Ljava/util/Map;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/permission/PermissionControllerManager;Ljava/util/Map;ZI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;->f$0:Landroid/permission/PermissionControllerManager;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;->f$1:Ljava/util/Map;

    iput-boolean p3, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;->f$2:Z

    iput p4, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;->f$3:I

    return-void
.end method


# virtual methods
.method public final blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;->f$0:Landroid/permission/PermissionControllerManager;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;->f$1:Ljava/util/Map;

    iget-boolean v2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;->f$2:Z

    iget v3, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;->f$3:I

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/permission/PermissionControllerManager;->$r8$lambda$ZNZXR9TD1f-Ar4c5fcWcaB0UTok(Landroid/permission/PermissionControllerManager;Ljava/util/Map;ZILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
