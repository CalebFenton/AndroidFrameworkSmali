.class public Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;
.super Ljava/lang/Object;
.source "SdkSandboxManagerFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/sdksandbox/SdkSandboxManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 48
    new-instance v0, Landroid/app/sdksandbox/SdkSandboxManager;

    .line 49
    invoke-static {p1}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/ISdkSandboxManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/sdksandbox/SdkSandboxManager;-><init>(Landroid/content/Context;Landroid/app/sdksandbox/ISdkSandboxManager;)V

    .line 48
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Landroid/content/Context;)Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    invoke-direct {v0, p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$2(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p0, "service"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    move-object v0, p0

    check-cast v0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    invoke-virtual {v0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->initialize(Landroid/content/Context;)Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 46
    const-class v0, Landroid/app/sdksandbox/SdkSandboxManager;

    new-instance v1, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "sdk_sandbox"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 52
    const-class v0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    new-instance v1, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "sdk_sandbox_controller_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 57
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    move-result-object v0

    new-instance v1, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->registerServiceMutator(Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;)V

    .line 61
    return-void
.end method
