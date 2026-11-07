.class public final Landroid/net/ConnectivityFrameworkInitializerBaklava;
.super Ljava/lang/Object;
.source "ConnectivityFrameworkInitializerBaklava.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final blacklist ENABLE_CHECKING_TELEPHONY_FEATURES:J = 0x13b44eb3L

.field private static final blacklist VENDOR_API_FOR_ANDROID_V:I = 0x316a4


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getVcnFeatureDependency()Ljava/lang/String;
    .registers 2

    .line 70
    const-wide/32 v0, 0x13b44eb3

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_b

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 77
    const-string v1, "ro.vendor.api_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "vendorApiLevel":I
    const v1, 0x316a4

    if-ge v0, v1, :cond_1b

    .line 80
    const-string v1, "android.hardware.telephony"

    return-object v1

    .line 82
    :cond_1b
    const-string v1, "android.hardware.telephony.subscription"

    return-object v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/net/vcn/VcnManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 101
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerBaklava;->getVcnFeatureDependency()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "telephonyFeatureToCheck":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 105
    const/4 v1, 0x0

    return-object v1

    .line 107
    :cond_12
    nop

    .line 108
    invoke-static {p1}, Landroid/net/vcn/IVcnManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnManagementService;

    move-result-object v1

    .line 109
    .local v1, "service":Landroid/net/vcn/IVcnManagementService;
    new-instance v2, Landroid/net/vcn/VcnManager;

    invoke-direct {v2, p0, v1}, Landroid/net/vcn/VcnManager;-><init>(Landroid/content/Context;Landroid/net/vcn/IVcnManagementService;)V

    return-object v2
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 97
    const-class v0, Landroid/net/vcn/VcnManager;

    new-instance v1, Landroid/net/ConnectivityFrameworkInitializerBaklava$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/ConnectivityFrameworkInitializerBaklava$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "vcn_management"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 111
    return-void
.end method
