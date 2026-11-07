.class public final synthetic Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

.field public final synthetic blacklist f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    iput-object p2, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    iget-object v1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;->f$1:Landroid/os/RemoteCallback;

    invoke-static {v0, v1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->$r8$lambda$gXlYW_AzybbYvnyIng4oEQSnatg(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    return-void
.end method
