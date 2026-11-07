.class Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;
.super Landroid/service/watchdog/IExplicitHealthCheckService$Stub;
.source "ExplicitHealthCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/watchdog/ExplicitHealthCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExplicitHealthCheckServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/watchdog/ExplicitHealthCheckService;


# direct methods
.method public static synthetic blacklist $r8$lambda$BZYPgTlSmd4SrBx534fWBQQ5vtA(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$getSupportedPackages$3(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_OTuZVPjSVa5XTIHPo8EH0TiEas(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$cancel$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fjLS3d_TjVLL-2b9QhE50Cqce48(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$request$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gXlYW_AzybbYvnyIng4oEQSnatg(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$getRequestedPackages$4(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iXuMWjNTtxHFvL2g619i02QNUvY(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$setCallback$0(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 319
    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-direct {p0}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/service/watchdog/ExplicitHealthCheckService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V

    return-void
.end method

.method private synthetic blacklist lambda$cancel$2(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 332
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onCancelHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$getRequestedPackages$4(Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 350
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    .line 351
    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetRequestedPackages()Ljava/util/List;

    move-result-object v0

    .line 352
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Requested  package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.requested_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 355
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 356
    return-void
.end method

.method private synthetic blacklist lambda$getSupportedPackages$3(Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 338
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    .line 339
    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetSupportedPackages()Ljava/util/List;

    move-result-object v0

    .line 340
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;"
    const-string v1, "Supported package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.supported_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 343
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 344
    return-void
.end method

.method private synthetic blacklist lambda$request$1(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onRequestHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$setCallback$0(Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 322
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/os/RemoteCallback;)V

    invoke-static {v0, v1}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fputmHealthCheckResultCallback(Landroid/service/watchdog/ExplicitHealthCheckService;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public blacklist cancel(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method

.method public blacklist getRequestedPackages(Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method public blacklist getSupportedPackages(Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public blacklist request(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method

.method public blacklist setCallback(Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method
