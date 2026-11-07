.class public Landroid/telephony/TelephonyFrameworkInitializer;
.super Ljava/lang/Object;
.source "TelephonyFrameworkInitializer.java"


# static fields
.field static final blacklist ENABLE_CHECKING_TELEPHONY_FEATURES:J = 0x13b44eb3L

.field private static volatile blacklist sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static blacklist getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;
    .registers 1

    .line 150
    sget-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    return-object v0
.end method

.method private static blacklist hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "ro.vendor.api_level"

    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "vendorApiLevel":I
    const v1, 0x316a4

    const/4 v2, 0x1

    if-ge v0, v1, :cond_10

    return v2

    .line 85
    :cond_10
    const-wide/32 v3, 0x13b44eb3

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    .line 88
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    new-instance v0, Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$2(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 112
    const-string v0, "android.hardware.telephony.subscription"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 113
    new-instance v0, Landroid/telephony/CarrierConfigManager;

    invoke-direct {v0, p0}, Landroid/telephony/CarrierConfigManager;-><init>(Landroid/content/Context;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 112
    :goto_f
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$3(Landroid/content/Context;)Landroid/telephony/euicc/EuiccManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 118
    const-string v0, "android.hardware.telephony.euicc"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 119
    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 118
    :goto_f
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$4(Landroid/content/Context;)Landroid/telephony/euicc/EuiccCardManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 124
    const-string v0, "android.hardware.telephony.euicc"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 125
    new-instance v0, Landroid/telephony/euicc/EuiccCardManager;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/EuiccCardManager;-><init>(Landroid/content/Context;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 124
    :goto_f
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$5(Landroid/content/Context;)Landroid/telephony/ims/ImsManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 130
    const-string v0, "android.hardware.telephony.ims"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 131
    new-instance v0, Landroid/telephony/ims/ImsManager;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 130
    :goto_f
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$6(Landroid/content/Context;)Landroid/telephony/SmsManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 136
    const-string v0, "android.hardware.telephony.messaging"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 137
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    goto :goto_11

    .line 138
    :cond_10
    const/4 v0, 0x0

    .line 136
    :goto_11
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$7(Landroid/content/Context;)Landroid/telephony/satellite/SatelliteManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 143
    const-string v0, "android.hardware.telephony.satellite"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 144
    new-instance v0, Landroid/telephony/satellite/SatelliteManager;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager;-><init>(Landroid/content/Context;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 143
    :goto_f
    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 99
    const-class v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v2, "phone"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 104
    const-class v0, Landroid/telephony/SubscriptionManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 109
    const-class v0, Landroid/telephony/CarrierConfigManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "carrier_config"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 115
    const-class v0, Landroid/telephony/euicc/EuiccManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "euicc"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 121
    const-class v0, Landroid/telephony/euicc/EuiccCardManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "euicc_card"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 127
    const-class v0, Landroid/telephony/ims/ImsManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda5;-><init>()V

    const-string/jumbo v2, "telephony_ims"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 133
    const-class v0, Landroid/telephony/SmsManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda6;-><init>()V

    const-string/jumbo v2, "sms"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 140
    const-class v0, Landroid/telephony/satellite/SatelliteManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda7;-><init>()V

    const-string/jumbo v2, "satellite"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 146
    return-void
.end method

.method public static blacklist setTelephonyServiceManager(Landroid/os/TelephonyServiceManager;)V
    .registers 3
    .param p0, "telephonyServiceManager"    # Landroid/os/TelephonyServiceManager;

    .line 69
    sget-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string/jumbo v1, "setTelephonyServiceManager called twice!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 71
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TelephonyServiceManager;

    sput-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    .line 72
    return-void
.end method
