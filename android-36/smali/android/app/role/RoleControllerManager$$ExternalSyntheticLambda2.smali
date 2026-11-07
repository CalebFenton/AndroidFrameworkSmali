.class public final synthetic Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/role/RoleControllerManager;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/role/RoleControllerManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/role/RoleControllerManager;

    iput-object p2, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput p4, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/role/RoleControllerManager;

    iget-object v1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget v3, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;->f$3:I

    check-cast p1, Landroid/app/role/IRoleController;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/app/role/RoleControllerManager;->$r8$lambda$k3BF_MHkuZUIZzYUt_PkJ2WkZOs(Landroid/app/role/RoleControllerManager;Ljava/lang/String;Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
