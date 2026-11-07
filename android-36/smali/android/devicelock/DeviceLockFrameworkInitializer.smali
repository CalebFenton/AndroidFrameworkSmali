.class public final Landroid/devicelock/DeviceLockFrameworkInitializer;
.super Ljava/lang/Object;
.source "DeviceLockFrameworkInitializer.java"


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

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/devicelock/DeviceLockManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 42
    new-instance v0, Landroid/devicelock/DeviceLockManager;

    .line 43
    invoke-static {p1}, Landroid/devicelock/IDeviceLockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/devicelock/IDeviceLockService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/devicelock/DeviceLockManager;-><init>(Landroid/content/Context;Landroid/devicelock/IDeviceLockService;)V

    .line 42
    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 40
    const-class v0, Landroid/devicelock/DeviceLockManager;

    new-instance v1, Landroid/devicelock/DeviceLockFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/devicelock/DeviceLockFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "device_lock"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 44
    return-void
.end method
