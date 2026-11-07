.class public final synthetic Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Landroid/app/role/IRoleController;

    invoke-static {p1}, Landroid/app/role/RoleControllerManager;->lambda$getLegacyFallbackDisabledRoles$7(Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
