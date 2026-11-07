.class public Landroid/health/connect/HealthServicesInitializer;
.super Ljava/lang/Object;
.source "HealthServicesInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/health/connect/HealthConnectManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 49
    invoke-static {p0}, Landroid/health/connect/HealthServicesInitializer;->shouldReturnHealthConnectManager(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_8
    nop

    .line 54
    invoke-static {p1}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IHealthConnectService;

    move-result-object v0

    .line 55
    .local v0, "service":Landroid/health/connect/aidl/IHealthConnectService;
    new-instance v1, Landroid/health/connect/HealthConnectManager;

    invoke-direct {v1, p0, v0}, Landroid/health/connect/HealthConnectManager;-><init>(Landroid/content/Context;Landroid/health/connect/aidl/IHealthConnectService;)V

    return-object v1
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 45
    const-class v0, Landroid/health/connect/HealthConnectManager;

    new-instance v1, Landroid/health/connect/HealthServicesInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/HealthServicesInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "healthconnect"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 57
    return-void
.end method

.method private static blacklist shouldReturnHealthConnectManager(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 63
    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 64
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_3a

    .line 68
    :cond_1e
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_39

    .line 69
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 70
    const-string v1, "android.permission.MANAGE_HEALTH_PERMISSIONS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_37

    move v2, v3

    goto :goto_38

    :cond_37
    nop

    .line 69
    :goto_38
    return v2

    .line 74
    :cond_39
    return v3

    .line 65
    :cond_3a
    :goto_3a
    return v2
.end method
