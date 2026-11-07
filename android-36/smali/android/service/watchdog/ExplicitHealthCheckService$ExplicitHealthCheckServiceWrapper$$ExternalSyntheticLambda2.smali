.class public final synthetic Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    iput-object p2, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    iget-object v1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->$r8$lambda$_OTuZVPjSVa5XTIHPo8EH0TiEas(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    return-void
.end method
