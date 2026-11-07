.class public Landroid/scheduling/SchedulingFrameworkInitializer;
.super Ljava/lang/Object;
.source "SchedulingFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/scheduling/RebootReadinessManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 42
    new-instance v0, Landroid/scheduling/RebootReadinessManager;

    .line 43
    invoke-static {p1}, Landroid/scheduling/IRebootReadinessManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/scheduling/IRebootReadinessManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/scheduling/RebootReadinessManager;-><init>(Landroid/content/Context;Landroid/scheduling/IRebootReadinessManager;)V

    .line 42
    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 40
    const-class v0, Landroid/scheduling/RebootReadinessManager;

    new-instance v1, Landroid/scheduling/SchedulingFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/scheduling/SchedulingFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "reboot_readiness"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 44
    return-void
.end method
