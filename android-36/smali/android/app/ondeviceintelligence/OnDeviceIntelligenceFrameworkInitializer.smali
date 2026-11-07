.class public Landroid/app/ondeviceintelligence/OnDeviceIntelligenceFrameworkInitializer;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceFrameworkInitializer.java"


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

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 49
    nop

    .line 50
    invoke-static {p1}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    move-result-object v0

    .line 51
    .local v0, "manager":Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;
    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;-><init>(Landroid/content/Context;Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;)V

    return-object v1
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 46
    const-class v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;

    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "on_device_intelligence"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 53
    return-void
.end method
