.class public final synthetic Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda11;->f$0:Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final whitelist onResult(Landroid/os/Bundle;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda11;->f$0:Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-static {v0, p1}, Landroid/app/role/RoleControllerManager;->lambda$getLegacyFallbackDisabledRoles$6(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Landroid/os/Bundle;)V

    return-void
.end method
