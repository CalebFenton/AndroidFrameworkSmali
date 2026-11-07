.class public abstract Landroid/service/watchdog/ExplicitHealthCheckService;
.super Landroid/app/Service;
.source "ExplicitHealthCheckService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;,
        Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    }
.end annotation


# static fields
.field public static final whitelist BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

.field public static final whitelist EXTRA_HEALTH_CHECK_PASSED_PACKAGE:Ljava/lang/String; = "android.service.watchdog.extra.HEALTH_CHECK_PASSED_PACKAGE"

.field public static final blacklist EXTRA_REQUESTED_PACKAGES:Ljava/lang/String; = "android.service.watchdog.extra.requested_packages"

.field public static final blacklist EXTRA_SUPPORTED_PACKAGES:Ljava/lang/String; = "android.service.watchdog.extra.supported_packages"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.watchdog.ExplicitHealthCheckService"

.field private static final blacklist TAG:Ljava/lang/String; = "ExplicitHealthCheckService"


# instance fields
.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHealthCheckResultCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWrapper:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$48hGHmrDYo1O9yd1I4awdL3pXqg(Landroid/service/watchdog/ExplicitHealthCheckService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->lambda$notifyHealthCheckPassed$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QK7YhRX5gZRHMJw9GpeECq9QEOY(Landroid/service/watchdog/ExplicitHealthCheckService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->lambda$notifyHealthCheckPassed$1(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHealthCheckResultCallback(Landroid/service/watchdog/ExplicitHealthCheckService;Ljava/util/function/Consumer;)V
    .registers 2

    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHealthCheckResultCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 117
    new-instance v0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/service/watchdog/ExplicitHealthCheckService-IA;)V

    iput-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mWrapper:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    .line 157
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist executeCallback(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHealthCheckResultCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_19

    .line 191
    const-string v0, "Package passing explicit health check must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.service.watchdog.extra.HEALTH_CHECK_PASSED_PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHealthCheckResultCallback:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 196
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_31

    .line 197
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System missed explicit health check result for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckService"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_31
    return-void
.end method

.method private synthetic blacklist lambda$notifyHealthCheckPassed$0(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 207
    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->executeCallback(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyHealthCheckPassed$1(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 209
    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->executeCallback(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final whitelist notifyHealthCheckPassed(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_f

    .line 207
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$$ExternalSyntheticLambda0;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_19

    .line 209
    :cond_f
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$$ExternalSyntheticLambda1;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    :goto_19
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mWrapper:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    return-object v0
.end method

.method public abstract whitelist onCancelHealthCheck(Ljava/lang/String;)V
.end method

.method public abstract whitelist onGetRequestedPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist onGetSupportedPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist onRequestHealthCheck(Ljava/lang/String;)V
.end method

.method public final whitelist setHealthCheckPassedCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 186
    iput-object p2, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHealthCheckResultCallback:Ljava/util/function/Consumer;

    .line 187
    return-void
.end method
