.class public Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;
.super Ljava/lang/Object;
.source "OnDevicePersonalizationFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

    invoke-direct {v0, p0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Landroid/content/Context;)Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationConfigManager;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationConfigManager;

    invoke-direct {v0, p0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationConfigManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$2(Landroid/content/Context;)Landroid/federatedcompute/FederatedComputeManager;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/federatedcompute/FederatedComputeManager;

    invoke-direct {v0, p0}, Landroid/federatedcompute/FederatedComputeManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$3(Landroid/content/Context;)Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;

    invoke-direct {v0, p0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$4(Landroid/os/IBinder;)Landroid/ondevicepersonalization/OnDevicePersonalizationSystemServiceManager;
    .registers 2
    .param p0, "s"    # Landroid/os/IBinder;

    .line 72
    new-instance v0, Landroid/ondevicepersonalization/OnDevicePersonalizationSystemServiceManager;

    invoke-direct {v0, p0}, Landroid/ondevicepersonalization/OnDevicePersonalizationSystemServiceManager;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 54
    const-class v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

    new-instance v1, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "on_device_personalization_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 57
    const-class v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationConfigManager;

    new-instance v1, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "on_device_personalization_config_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 61
    const-class v0, Landroid/federatedcompute/FederatedComputeManager;

    new-instance v1, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "federated_compute_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 64
    const-class v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;

    new-instance v1, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "on_device_personalization_system_event_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 68
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 69
    const-class v0, Landroid/ondevicepersonalization/OnDevicePersonalizationSystemServiceManager;

    new-instance v1, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "ondevicepersonalization_system_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V

    .line 74
    :cond_42
    return-void
.end method
