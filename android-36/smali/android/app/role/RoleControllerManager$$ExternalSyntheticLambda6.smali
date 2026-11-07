.class public final synthetic Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/role/RoleControllerManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/role/RoleControllerManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda6;->f$0:Landroid/app/role/RoleControllerManager;

    return-void
.end method


# virtual methods
.method public final blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda6;->f$0:Landroid/app/role/RoleControllerManager;

    check-cast p1, Landroid/app/role/IRoleController;

    invoke-static {v0, p1}, Landroid/app/role/RoleControllerManager;->$r8$lambda$0EloyO_-GeplHJ5zXe8j-56ktpw(Landroid/app/role/RoleControllerManager;Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
