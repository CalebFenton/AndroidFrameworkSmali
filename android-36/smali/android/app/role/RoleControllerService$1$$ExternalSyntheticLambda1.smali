.class public final synthetic Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/role/RoleControllerService$1;

.field public final synthetic blacklist f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/role/RoleControllerService$1;Landroid/os/RemoteCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/role/RoleControllerService$1;

    iput-object p2, p0, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda1;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/role/RoleControllerService$1;

    iget-object v1, p0, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda1;->f$1:Landroid/os/RemoteCallback;

    invoke-static {v0, v1}, Landroid/app/role/RoleControllerService$1;->$r8$lambda$iIu2X-cQJtcMkX8b-wXV8vMoW8U(Landroid/app/role/RoleControllerService$1;Landroid/os/RemoteCallback;)V

    return-void
.end method
