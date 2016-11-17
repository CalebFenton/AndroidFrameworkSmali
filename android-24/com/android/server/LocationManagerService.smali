.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$1;,
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$Receiver;,
        Lcom/android/server/LocationManagerService$UpdateRecord;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field public static final D:Z

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x1

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserProfiles:[I

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

.field private mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxyProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LocationManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/LocationManagerService;II)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .locals 1
    .param p1, "resolutionLevel"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/LocationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->applyAllProviderRequirementsLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .param p1, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/LocationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->shutdownComponents()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/LocationManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->switchUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/LocationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 109
    const-string/jumbo v0, "LocationManagerService"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    #@a
    .line 145
    new-instance v0, Landroid/location/LocationRequest;

    #@c
    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    #@f
    sput-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    #@11
    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 221
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    #@4
    .line 151
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@b
    .line 172
    new-instance v1, Ljava/util/HashSet;

    #@d
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@12
    .line 175
    new-instance v1, Ljava/util/HashSet;

    #@14
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@19
    .line 179
    new-instance v1, Ljava/util/HashMap;

    #@1b
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1e
    .line 178
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@20
    .line 182
    new-instance v1, Ljava/util/HashMap;

    #@22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@27
    .line 186
    new-instance v1, Ljava/util/ArrayList;

    #@29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 185
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@2e
    .line 190
    new-instance v1, Ljava/util/HashMap;

    #@30
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@33
    .line 189
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@35
    .line 194
    new-instance v1, Ljava/util/HashMap;

    #@37
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@3a
    .line 193
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3c
    .line 198
    new-instance v1, Ljava/util/HashMap;

    #@3e
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@41
    .line 197
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    #@43
    .line 200
    new-instance v1, Lcom/android/server/location/LocationRequestStatistics;

    #@45
    invoke-direct {v1}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    #@48
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    #@4a
    .line 203
    new-instance v1, Ljava/util/HashMap;

    #@4c
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@4f
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@51
    .line 208
    new-instance v1, Ljava/util/HashMap;

    #@53
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@56
    .line 207
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@58
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    #@5a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5d
    .line 211
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    #@5f
    .line 215
    iput v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@61
    .line 216
    const/4 v1, 0x1

    #@62
    new-array v1, v1, [I

    #@64
    aput v2, v1, v2

    #@66
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    #@68
    .line 2408
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    #@6a
    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    #@6d
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@6f
    .line 222
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@71
    .line 223
    const-string/jumbo v1, "appops"

    #@74
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@77
    move-result-object v1

    #@78
    check-cast v1, Landroid/app/AppOpsManager;

    #@7a
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@7c
    .line 228
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    #@7e
    .line 227
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@81
    move-result-object v0

    #@82
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    #@84
    .line 230
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/LocationManagerService$2;

    #@86
    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    #@89
    .line 229
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    #@8c
    .line 238
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    #@8e
    if-eqz v1, :cond_0

    #@90
    const-string/jumbo v1, "LocationManagerService"

    #@93
    const-string/jumbo v2, "Constructed"

    #@96
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 220
    :cond_0
    return-void
.end method

.method private addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/location/LocationProviderInterface;

    #@0
    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 1003
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@7
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 1001
    return-void
.end method

.method private addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2501
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 2502
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Provider \""

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, "\" already exists"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 2504
    :cond_0
    new-instance v0, Lcom/android/server/location/MockProvider;

    #@2c
    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V

    #@2f
    .line 2505
    .local v0, "provider":Lcom/android/server/location/MockProvider;
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@32
    .line 2506
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@34
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 2507
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@39
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 2508
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@3e
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 2500
    return-void
.end method

.method private applyAllProviderRequirementsLocked()V
    .locals 3

    #@0
    .prologue
    .line 1768
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    #@12
    .line 1770
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 1774
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 1767
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .locals 14
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1404
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@2
    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    #@8
    .line 1405
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_0

    #@a
    return-void

    #@b
    .line 1407
    :cond_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    #@d
    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Ljava/util/ArrayList;

    #@13
    .line 1408
    .local v5, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v8, Landroid/os/WorkSource;

    #@15
    invoke-direct {v8}, Landroid/os/WorkSource;-><init>()V

    #@18
    .line 1409
    .local v8, "worksource":Landroid/os/WorkSource;
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    #@1a
    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    #@1d
    .line 1411
    .local v2, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    if-eqz v5, :cond_5

    #@1f
    .line 1412
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v4

    #@23
    .local v4, "record$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v9

    #@27
    if-eqz v9, :cond_2

    #@29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@2f
    .line 1413
    .local v3, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@31
    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@33
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    #@36
    move-result v9

    #@37
    invoke-direct {p0, v9}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    #@3a
    move-result v9

    #@3b
    if-eqz v9, :cond_1

    #@3d
    .line 1415
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@3f
    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    #@41
    .line 1416
    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@43
    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@45
    .line 1417
    iget-object v11, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@47
    iget-object v11, v11, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@49
    .line 1418
    iget-object v12, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@4b
    iget v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    #@4d
    .line 1414
    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    #@50
    move-result v9

    #@51
    if-eqz v9, :cond_1

    #@53
    .line 1419
    iget-object v0, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@55
    .line 1420
    .local v0, "locationRequest":Landroid/location/LocationRequest;
    iget-object v9, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@57
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    .line 1421
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    #@5d
    move-result-wide v10

    #@5e
    iget-wide v12, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@60
    cmp-long v9, v10, v12

    #@62
    if-gez v9, :cond_1

    #@64
    .line 1422
    const/4 v9, 0x1

    #@65
    iput-boolean v9, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@67
    .line 1423
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    #@6a
    move-result-wide v10

    #@6b
    iput-wide v10, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@6d
    goto :goto_0

    #@6e
    .line 1429
    .end local v0    # "locationRequest":Landroid/location/LocationRequest;
    .end local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_2
    iget-boolean v9, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@70
    if-eqz v9, :cond_5

    #@72
    .line 1435
    iget-wide v10, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@74
    const-wide/16 v12, 0x3e8

    #@76
    add-long/2addr v10, v12

    #@77
    const-wide/16 v12, 0x3

    #@79
    mul-long/2addr v10, v12

    #@7a
    const-wide/16 v12, 0x2

    #@7c
    div-long v6, v10, v12

    #@7e
    .line 1436
    .local v6, "thresholdInterval":J
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@81
    move-result-object v4

    #@82
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@85
    move-result v9

    #@86
    if-eqz v9, :cond_5

    #@88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8b
    move-result-object v3

    #@8c
    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@8e
    .line 1437
    .restart local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@90
    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@92
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    #@95
    move-result v9

    #@96
    invoke-direct {p0, v9}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    #@99
    move-result v9

    #@9a
    if-eqz v9, :cond_3

    #@9c
    .line 1438
    iget-object v0, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@9e
    .line 1442
    .restart local v0    # "locationRequest":Landroid/location/LocationRequest;
    iget-object v9, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@a0
    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a3
    move-result v9

    #@a4
    if-eqz v9, :cond_3

    #@a6
    .line 1446
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    #@a9
    move-result-wide v10

    #@aa
    cmp-long v9, v10, v6

    #@ac
    if-gtz v9, :cond_3

    #@ae
    .line 1447
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@b0
    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    #@b2
    if-eqz v9, :cond_4

    #@b4
    .line 1448
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@b6
    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    #@b8
    invoke-virtual {v9}, Landroid/os/WorkSource;->size()I

    #@bb
    move-result v9

    #@bc
    if-lez v9, :cond_4

    #@be
    .line 1449
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@c0
    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    #@c2
    const/4 v10, 0x0

    #@c3
    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@c6
    move-result-object v9

    #@c7
    if-eqz v9, :cond_4

    #@c9
    .line 1452
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@cb
    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    #@cd
    invoke-virtual {v8, v9}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    #@d0
    goto :goto_1

    #@d1
    .line 1456
    :cond_4
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@d3
    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@d5
    .line 1457
    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@d7
    iget-object v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@d9
    .line 1455
    invoke-virtual {v8, v9, v10}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    #@dc
    goto :goto_1

    #@dd
    .line 1465
    .end local v0    # "locationRequest":Landroid/location/LocationRequest;
    .end local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v4    # "record$iterator":Ljava/util/Iterator;
    .end local v6    # "thresholdInterval":J
    :cond_5
    sget-boolean v9, Lcom/android/server/LocationManagerService;->D:Z

    #@df
    if-eqz v9, :cond_6

    #@e1
    const-string/jumbo v9, "LocationManagerService"

    #@e4
    new-instance v10, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v11, "provider request: "

    #@ec
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v10

    #@f0
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v10

    #@f4
    const-string/jumbo v11, " "

    #@f7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v10

    #@fb
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v10

    #@ff
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v10

    #@103
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 1466
    :cond_6
    invoke-interface {v1, v2, v8}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    #@109
    .line 1403
    return-void
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2469
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    const/16 v3, 0x3a

    #@9
    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method private checkCallerIsProvider()V
    .locals 2

    #@0
    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.INSTALL_LOCATION_PROVIDER"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2116
    return-void

    #@c
    .line 2126
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v0

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 2127
    return-void

    #@17
    .line 2130
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@19
    const-string/jumbo v1, "need INSTALL_LOCATION_PROVIDER permission, or UID of a currently bound location provider"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method private checkDeviceStatsAllowed()V
    .locals 3

    #@0
    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2
    .line 1170
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@5
    const/4 v2, 0x0

    #@6
    .line 1169
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1168
    return-void
.end method

.method private checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 7
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "hideFromAppOps"    # Z

    #@0
    .prologue
    .line 1623
    if-nez p2, :cond_0

    #@2
    if-nez p1, :cond_0

    #@4
    .line 1624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "need either listener or intent"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1625
    :cond_0
    if-eqz p2, :cond_1

    #@f
    if-eqz p1, :cond_1

    #@11
    .line 1626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "cannot register both listener and intent"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 1627
    :cond_1
    if-eqz p2, :cond_2

    #@1c
    .line 1628
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@1f
    move-object v0, p0

    #@20
    move-object v1, p2

    #@21
    move v2, p3

    #@22
    move v3, p4

    #@23
    move-object v4, p5

    #@24
    move-object v5, p6

    #@25
    move v6, p7

    #@26
    .line 1629
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    #@29
    move-result-object v0

    #@2a
    return-object v0

    #@2b
    :cond_2
    move-object v0, p0

    #@2c
    move-object v1, p1

    #@2d
    move v2, p3

    #@2e
    move v3, p4

    #@2f
    move-object v4, p5

    #@30
    move-object v5, p6

    #@31
    move v6, p7

    #@32
    .line 1631
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1601
    if-nez p1, :cond_0

    #@2
    .line 1602
    new-instance v3, Ljava/lang/SecurityException;

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "invalid package name: "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 1604
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v2

    #@20
    .line 1605
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@22
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 1606
    .local v0, "packages":[Ljava/lang/String;
    if-nez v0, :cond_1

    #@28
    .line 1607
    new-instance v3, Ljava/lang/SecurityException;

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "invalid UID "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 1609
    :cond_1
    const/4 v3, 0x0

    #@43
    array-length v4, v0

    #@44
    :goto_0
    if-ge v3, v4, :cond_3

    #@46
    aget-object v1, v0, v3

    #@48
    .line 1610
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_2

    #@4e
    return-void

    #@4f
    .line 1609
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_0

    #@52
    .line 1612
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "invalid package name: "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v3
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1616
    if-nez p1, :cond_0

    #@2
    .line 1617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "invalid pending intent: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1615
    :cond_0
    return-void
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .locals 2
    .param p1, "allowedResolutionLevel"    # I

    #@0
    .prologue
    .line 1100
    const/4 v0, 0x2

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 1101
    new-instance v0, Ljava/lang/SecurityException;

    #@5
    const-string/jumbo v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1099
    :cond_0
    return-void
.end method

.method private checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V
    .locals 4
    .param p1, "allowedResolutionLevel"    # I
    .param p2, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1148
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 1149
    .local v0, "requiredResolutionLevel":I
    if-ge p1, v0, :cond_0

    #@6
    .line 1150
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1158
    new-instance v1, Ljava/lang/SecurityException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Insufficient permission for \""

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 1159
    const-string/jumbo v3, "\" location provider."

    #@1e
    .line 1158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 1152
    :pswitch_0
    new-instance v1, Ljava/lang/SecurityException;

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "\""

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, "\" location provider "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 1153
    const-string/jumbo v3, "requires ACCESS_FINE_LOCATION permission."

    #@46
    .line 1152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@51
    throw v1

    #@52
    .line 1155
    :pswitch_1
    new-instance v1, Ljava/lang/SecurityException;

    #@54
    new-instance v2, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v3, "\""

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    const-string/jumbo v3, "\" location provider "

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    .line 1156
    const-string/jumbo v3, "requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    #@6e
    .line 1155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@79
    throw v1

    #@7a
    .line 1147
    :cond_0
    return-void

    #@7b
    .line 1150
    nop

    #@7c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkUpdateAppOpsAllowed()V
    .locals 3

    #@0
    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2
    .line 1175
    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    #@5
    const/4 v2, 0x0

    #@6
    .line 1174
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1173
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;
    .locals 6
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "resolutionLevel"    # I

    #@0
    .prologue
    const-wide/32 v4, 0x927c0

    #@3
    .line 1575
    new-instance v0, Landroid/location/LocationRequest;

    #@5
    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    #@8
    .line 1576
    .local v0, "sanitizedRequest":Landroid/location/LocationRequest;
    const/4 v1, 0x2

    #@9
    if-ge p2, v1, :cond_1

    #@b
    .line 1577
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    #@e
    move-result v1

    #@f
    sparse-switch v1, :sswitch_data_0

    #@12
    .line 1586
    :goto_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    #@15
    move-result-wide v2

    #@16
    cmp-long v1, v2, v4

    #@18
    if-gez v1, :cond_0

    #@1a
    .line 1587
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    #@1d
    .line 1589
    :cond_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    #@20
    move-result-wide v2

    #@21
    cmp-long v1, v2, v4

    #@23
    if-gez v1, :cond_1

    #@25
    .line 1590
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    #@28
    .line 1594
    :cond_1
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    #@2b
    move-result-wide v2

    #@2c
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    #@2f
    move-result-wide v4

    #@30
    cmp-long v1, v2, v4

    #@32
    if-lez v1, :cond_2

    #@34
    .line 1595
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    #@37
    move-result-wide v2

    #@38
    invoke-virtual {p1, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    #@3b
    .line 1597
    :cond_2
    return-object v0

    #@3c
    .line 1579
    :sswitch_0
    const/16 v1, 0x66

    #@3e
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    #@41
    goto :goto_0

    #@42
    .line 1582
    :sswitch_1
    const/16 v1, 0xc9

    #@44
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    #@47
    goto :goto_0

    #@48
    .line 1577
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xcb -> :sswitch_1
    .end sparse-switch
.end method

.method private doesUidHavePackage(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2138
    if-nez p2, :cond_0

    #@3
    .line 2139
    return v3

    #@4
    .line 2141
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 2142
    .local v1, "packageNames":[Ljava/lang/String;
    if-nez v1, :cond_1

    #@c
    .line 2143
    return v3

    #@d
    .line 2145
    :cond_1
    array-length v4, v1

    #@e
    move v2, v3

    #@f
    :goto_0
    if-ge v2, v4, :cond_3

    #@11
    aget-object v0, v1, v2

    #@13
    .line 2146
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 2147
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 2145
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2150
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method private ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 384
    .local p1, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v3

    #@6
    .line 385
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v8

    #@c
    .line 386
    .local v8, "systemPackageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-static {v10, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    #@11
    move-result-object v7

    #@12
    .line 389
    .local v7, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    new-instance v10, Landroid/content/Intent;

    #@14
    const-string/jumbo v11, "com.android.location.service.FusedLocationProvider"

    #@17
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 390
    iget v11, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@1c
    const/16 v12, 0x80

    #@1e
    .line 388
    invoke-virtual {v3, v10, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@21
    move-result-object v6

    #@22
    .line 391
    .local v6, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v5

    #@26
    .local v5, "rInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v10

    #@2a
    if-eqz v10, :cond_7

    #@2c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@32
    .line 392
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@34
    iget-object v2, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@36
    .line 398
    .local v2, "packageName":Ljava/lang/String;
    const/16 v10, 0x40

    #@38
    :try_start_0
    invoke-virtual {v3, v2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@3b
    move-result-object v1

    #@3c
    .line 399
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@3e
    invoke-static {v10, v7}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    #@41
    move-result v10

    #@42
    if-nez v10, :cond_1

    #@44
    .line 400
    const-string/jumbo v10, "LocationManagerService"

    #@47
    new-instance v11, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v11

    #@50
    const-string/jumbo v12, " resolves service "

    #@53
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v11

    #@57
    const-string/jumbo v12, "com.android.location.service.FusedLocationProvider"

    #@5a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v11

    #@5e
    .line 401
    const-string/jumbo v12, ", but has wrong signature, ignoring"

    #@61
    .line 400
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v11

    #@65
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v11

    #@69
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    goto :goto_0

    #@6d
    .line 404
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@6e
    .line 405
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "LocationManagerService"

    #@71
    new-instance v11, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v12, "missing package: "

    #@79
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v11

    #@7d
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v11

    #@81
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v11

    #@85
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    goto :goto_0

    #@89
    .line 410
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@8b
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@8d
    if-nez v10, :cond_2

    #@8f
    .line 411
    const-string/jumbo v10, "LocationManagerService"

    #@92
    new-instance v11, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v12, "Found fused provider without metadata: "

    #@9a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v11

    #@9e
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v11

    #@a2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v11

    #@a6
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    goto/16 :goto_0

    #@ab
    .line 415
    :cond_2
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@ad
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@af
    .line 416
    const-string/jumbo v11, "serviceVersion"

    #@b2
    const/4 v12, -0x1

    #@b3
    .line 415
    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@b6
    move-result v9

    #@b7
    .line 417
    .local v9, "version":I
    if-nez v9, :cond_6

    #@b9
    .line 421
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@bb
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@bd
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    #@bf
    and-int/lit8 v10, v10, 0x1

    #@c1
    if-nez v10, :cond_3

    #@c3
    .line 422
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    #@c5
    if-eqz v10, :cond_0

    #@c7
    const-string/jumbo v10, "LocationManagerService"

    #@ca
    new-instance v11, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v12, "Fallback candidate not in /system: "

    #@d2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v11

    #@d6
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v11

    #@da
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v11

    #@de
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    goto/16 :goto_0

    #@e3
    .line 428
    :cond_3
    invoke-virtual {v3, v8, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    move-result v10

    #@e7
    if-eqz v10, :cond_4

    #@e9
    .line 430
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    #@eb
    if-eqz v10, :cond_0

    #@ed
    const-string/jumbo v10, "LocationManagerService"

    #@f0
    new-instance v11, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v12, "Fallback candidate not signed the same as system: "

    #@f8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v11

    #@fc
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v11

    #@100
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v11

    #@104
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@107
    goto/16 :goto_0

    #@109
    .line 436
    :cond_4
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    #@10b
    if-eqz v10, :cond_5

    #@10d
    const-string/jumbo v10, "LocationManagerService"

    #@110
    new-instance v11, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v12, "Found fallback provider: "

    #@118
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v11

    #@11c
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v11

    #@120
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v11

    #@124
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@127
    .line 437
    :cond_5
    return-void

    #@128
    .line 439
    :cond_6
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    #@12a
    if-eqz v10, :cond_0

    #@12c
    const-string/jumbo v10, "LocationManagerService"

    #@12f
    new-instance v11, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    const-string/jumbo v12, "Fallback candidate not version 0: "

    #@137
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v11

    #@13b
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v11

    #@13f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v11

    #@143
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@146
    goto/16 :goto_0

    #@148
    .line 443
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "version":I
    :cond_7
    new-instance v10, Ljava/lang/IllegalStateException;

    #@14a
    const-string/jumbo v11, "Unable to find a fused location provider that is in the system partition with version 0 and signed with the platform certificate. Such a package is needed to provide a default fused location provider in the event that no other fused location provider has been installed or is currently available. For example, coreOnly boot mode when decrypting the data partition. The fallback must also be marked coreApp=\"true\" in the manifest"

    #@14d
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@150
    throw v10
.end method

.method private getAllowedResolutionLevel(II)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1074
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    #@6
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1076
    const/4 v0, 0x2

    #@d
    return v0

    #@e
    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@10
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    #@13
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1079
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 1081
    :cond_1
    return v2
.end method

.method private getCallerAllowedResolutionLevel()I
    .locals 2

    #@0
    .prologue
    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x2

    #@2
    .line 1112
    const-string/jumbo v2, "gps"

    #@5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 1113
    const-string/jumbo v2, "passive"

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    .line 1112
    if-eqz v2, :cond_1

    #@14
    .line 1115
    :cond_0
    return v3

    #@15
    .line 1116
    :cond_1
    const-string/jumbo v2, "network"

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_2

    #@1e
    .line 1117
    const-string/jumbo v2, "fused"

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    .line 1116
    if-eqz v2, :cond_3

    #@27
    .line 1119
    :cond_2
    return v4

    #@28
    .line 1122
    :cond_3
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    #@30
    .line 1123
    .local v0, "lp":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v0, :cond_6

    #@32
    .line 1124
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@35
    move-result-object v1

    #@36
    .line 1125
    .local v1, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v1, :cond_6

    #@38
    .line 1126
    iget-boolean v2, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    #@3a
    if-eqz v2, :cond_4

    #@3c
    .line 1128
    return v3

    #@3d
    .line 1129
    :cond_4
    iget-boolean v2, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    #@3f
    if-nez v2, :cond_5

    #@41
    iget-boolean v2, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    #@43
    if-eqz v2, :cond_6

    #@45
    .line 1131
    :cond_5
    return v4

    #@46
    .line 1136
    .end local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_6
    return v3
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 9
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1557
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    #@9
    .line 1558
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    #@b
    .line 1559
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    #@d
    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object v1, p0

    #@e
    move-object v3, p1

    #@f
    move v4, p2

    #@10
    move v5, p3

    #@11
    move-object v6, p4

    #@12
    move-object v7, p5

    #@13
    move v8, p6

    #@14
    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    #@17
    .line 1561
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@19
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 1563
    :cond_0
    return-object v0
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 11
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z

    #@0
    .prologue
    .line 1539
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v9

    #@4
    .line 1540
    .local v9, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    #@c
    .line 1541
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    #@e
    .line 1542
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    #@10
    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v3, 0x0

    #@11
    move-object v1, p0

    #@12
    move-object v2, p1

    #@13
    move v4, p2

    #@14
    move v5, p3

    #@15
    move-object v6, p4

    #@16
    move-object/from16 v7, p5

    #@18
    move/from16 v8, p6

    #@1a
    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    #@1d
    .line 1545
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    #@20
    move-result-object v1

    #@21
    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v1

    #@25
    const/4 v2, 0x0

    #@26
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1550
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@2b
    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 1552
    :cond_0
    return-object v0

    #@2f
    .line 1546
    :catch_0
    move-exception v10

    #@30
    .line 1547
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManagerService"

    #@33
    const-string/jumbo v2, "linkToDeath failed:"

    #@36
    invoke-static {v1, v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 1548
    const/4 v1, 0x0

    #@3a
    return-object v1
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .locals 1
    .param p1, "resolutionLevel"    # I

    #@0
    .prologue
    .line 1056
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1062
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 1058
    :pswitch_0
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    #@8
    return-object v0

    #@9
    .line 1060
    :pswitch_1
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    #@c
    return-object v0

    #@d
    .line 1056
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleLocationChanged(Landroid/location/Location;Z)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    #@0
    .prologue
    .line 2387
    new-instance v0, Landroid/location/Location;

    #@2
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@5
    .line 2388
    .local v0, "myLocation":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 2393
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/location/Location;->isFromMockProvider()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 2394
    const/4 v2, 0x1

    #@16
    invoke-virtual {v0, v2}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    #@19
    .line 2397
    :cond_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v3

    #@1c
    .line 2398
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 2399
    if-nez p2, :cond_1

    #@24
    .line 2401
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    #@26
    invoke-virtual {v2, v0}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    #@29
    .line 2403
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_2
    monitor-exit v3

    #@2d
    .line 2384
    return-void

    #@2e
    .line 2397
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .locals 38
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    #@0
    .prologue
    .line 2206
    sget-boolean v34, Lcom/android/server/LocationManagerService;->D:Z

    #@2
    if-eqz v34, :cond_0

    #@4
    const-string/jumbo v34, "LocationManagerService"

    #@7
    new-instance v35, Ljava/lang/StringBuilder;

    #@9
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v36, "incoming location: "

    #@f
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v35

    #@13
    move-object/from16 v0, v35

    #@15
    move-object/from16 v1, p1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v35

    #@1b
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v35

    #@1f
    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2208
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@25
    move-result-wide v18

    #@26
    .line 2209
    .local v18, "now":J
    if-eqz p2, :cond_1

    #@28
    const-string/jumbo v21, "passive"

    #@2b
    .line 2212
    .local v21, "provider":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@2f
    move-object/from16 v34, v0

    #@31
    move-object/from16 v0, v34

    #@33
    move-object/from16 v1, v21

    #@35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v20

    #@39
    check-cast v20, Lcom/android/server/location/LocationProviderInterface;

    #@3b
    .line 2213
    .local v20, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v20, :cond_2

    #@3d
    return-void

    #@3e
    .line 2209
    .end local v20    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v21    # "provider":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@41
    move-result-object v21

    #@42
    .restart local v21    # "provider":Ljava/lang/String;
    goto :goto_0

    #@43
    .line 2216
    .restart local v20    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    const-string/jumbo v34, "noGPSLocation"

    #@46
    move-object/from16 v0, p1

    #@48
    move-object/from16 v1, v34

    #@4a
    invoke-virtual {v0, v1}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    #@4d
    move-result-object v16

    #@4e
    .line 2217
    .local v16, "noGPSLocation":Landroid/location/Location;
    const/4 v13, 0x0

    #@4f
    .line 2218
    .local v13, "lastNoGPSLocation":Landroid/location/Location;
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@53
    move-object/from16 v34, v0

    #@55
    move-object/from16 v0, v34

    #@57
    move-object/from16 v1, v21

    #@59
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    move-result-object v11

    #@5d
    check-cast v11, Landroid/location/Location;

    #@5f
    .line 2219
    .local v11, "lastLocation":Landroid/location/Location;
    if-nez v11, :cond_7

    #@61
    .line 2220
    new-instance v11, Landroid/location/Location;

    #@63
    .end local v11    # "lastLocation":Landroid/location/Location;
    move-object/from16 v0, v21

    #@65
    invoke-direct {v11, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@68
    .line 2221
    .restart local v11    # "lastLocation":Landroid/location/Location;
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@6c
    move-object/from16 v34, v0

    #@6e
    move-object/from16 v0, v34

    #@70
    move-object/from16 v1, v21

    #@72
    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 2230
    .end local v13    # "lastNoGPSLocation":Landroid/location/Location;
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v11, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    #@7a
    .line 2233
    move-object/from16 v0, p0

    #@7c
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@7e
    move-object/from16 v34, v0

    #@80
    move-object/from16 v0, v34

    #@82
    move-object/from16 v1, v21

    #@84
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    move-result-object v12

    #@88
    check-cast v12, Landroid/location/Location;

    #@8a
    .line 2234
    .local v12, "lastLocationCoarseInterval":Landroid/location/Location;
    if-nez v12, :cond_4

    #@8c
    .line 2235
    new-instance v12, Landroid/location/Location;

    #@8e
    .end local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    move-object/from16 v0, p1

    #@90
    invoke-direct {v12, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@93
    .line 2236
    .restart local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@97
    move-object/from16 v34, v0

    #@99
    move-object/from16 v0, v34

    #@9b
    move-object/from16 v1, v21

    #@9d
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    .line 2238
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@a3
    move-result-wide v34

    #@a4
    .line 2239
    invoke-virtual {v12}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@a7
    move-result-wide v36

    #@a8
    .line 2238
    sub-long v32, v34, v36

    #@aa
    .line 2240
    .local v32, "timeDiffNanos":J
    const-wide v34, 0x8bb2c97000L

    #@af
    cmp-long v34, v32, v34

    #@b1
    if-lez v34, :cond_5

    #@b3
    .line 2241
    move-object/from16 v0, p1

    #@b5
    invoke-virtual {v12, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    #@b8
    .line 2247
    :cond_5
    const-string/jumbo v34, "noGPSLocation"

    #@bb
    move-object/from16 v0, v34

    #@bd
    invoke-virtual {v12, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    #@c0
    move-result-object v16

    #@c1
    .line 2250
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    #@c5
    move-object/from16 v34, v0

    #@c7
    move-object/from16 v0, v34

    #@c9
    move-object/from16 v1, v21

    #@cb
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    move-result-object v30

    #@cf
    check-cast v30, Ljava/util/ArrayList;

    #@d1
    .line 2251
    .local v30, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v30, :cond_6

    #@d3
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    #@d6
    move-result v34

    #@d7
    if-nez v34, :cond_8

    #@d9
    :cond_6
    return-void

    #@da
    .line 2223
    .end local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v30    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v32    # "timeDiffNanos":J
    .restart local v13    # "lastNoGPSLocation":Landroid/location/Location;
    :cond_7
    const-string/jumbo v34, "noGPSLocation"

    #@dd
    move-object/from16 v0, v34

    #@df
    invoke-virtual {v11, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    #@e2
    move-result-object v13

    #@e3
    .line 2224
    .local v13, "lastNoGPSLocation":Landroid/location/Location;
    if-nez v16, :cond_3

    #@e5
    if-eqz v13, :cond_3

    #@e7
    .line 2227
    const-string/jumbo v34, "noGPSLocation"

    #@ea
    move-object/from16 v0, p1

    #@ec
    move-object/from16 v1, v34

    #@ee
    invoke-virtual {v0, v1, v13}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    #@f1
    goto :goto_1

    #@f2
    .line 2254
    .end local v13    # "lastNoGPSLocation":Landroid/location/Location;
    .restart local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v30    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v32    # "timeDiffNanos":J
    :cond_8
    const/4 v6, 0x0

    #@f3
    .line 2255
    .local v6, "coarseLocation":Landroid/location/Location;
    if-eqz v16, :cond_9

    #@f5
    .line 2256
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    #@f9
    move-object/from16 v34, v0

    #@fb
    move-object/from16 v0, v34

    #@fd
    move-object/from16 v1, v16

    #@ff
    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    #@102
    move-result-object v6

    #@103
    .line 2260
    .end local v6    # "coarseLocation":Landroid/location/Location;
    :cond_9
    invoke-interface/range {v20 .. v20}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    #@106
    move-result-wide v14

    #@107
    .line 2263
    .local v14, "newStatusUpdateTime":J
    new-instance v9, Landroid/os/Bundle;

    #@109
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@10c
    .line 2264
    .local v9, "extras":Landroid/os/Bundle;
    move-object/from16 v0, v20

    #@10e
    invoke-interface {v0, v9}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    #@111
    move-result v31

    #@112
    .line 2266
    .local v31, "status":I
    const/4 v7, 0x0

    #@113
    .line 2267
    .local v7, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    const/4 v8, 0x0

    #@114
    .line 2270
    .local v8, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@117
    move-result-object v25

    #@118
    .end local v7    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v8    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v25, "r$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@11b
    move-result v34

    #@11c
    if-eqz v34, :cond_1a

    #@11e
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@121
    move-result-object v24

    #@122
    check-cast v24, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@124
    .line 2271
    .local v24, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v24

    #@126
    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@128
    move-object/from16 v26, v0

    #@12a
    .line 2272
    .local v26, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/16 v28, 0x0

    #@12c
    .line 2274
    .local v28, "receiverDead":Z
    move-object/from16 v0, v26

    #@12e
    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@130
    move/from16 v34, v0

    #@132
    invoke-static/range {v34 .. v34}, Landroid/os/UserHandle;->getUserId(I)I

    #@135
    move-result v29

    #@136
    .line 2275
    .local v29, "receiverUserId":I
    move-object/from16 v0, p0

    #@138
    move/from16 v1, v29

    #@13a
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    #@13d
    move-result v34

    #@13e
    if-nez v34, :cond_b

    #@140
    move-object/from16 v0, v26

    #@142
    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@144
    move/from16 v34, v0

    #@146
    move-object/from16 v0, p0

    #@148
    move/from16 v1, v34

    #@14a
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    #@14d
    move-result v34

    #@14e
    if-eqz v34, :cond_c

    #@150
    .line 2284
    :cond_b
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@154
    move-object/from16 v34, v0

    #@156
    move-object/from16 v0, v26

    #@158
    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@15a
    move-object/from16 v35, v0

    #@15c
    invoke-virtual/range {v34 .. v35}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    #@15f
    move-result v34

    #@160
    if-eqz v34, :cond_d

    #@162
    .line 2285
    sget-boolean v34, Lcom/android/server/LocationManagerService;->D:Z

    #@164
    if-eqz v34, :cond_a

    #@166
    const-string/jumbo v34, "LocationManagerService"

    #@169
    new-instance v35, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string/jumbo v36, "skipping loc update for blacklisted app: "

    #@171
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v35

    #@175
    .line 2286
    move-object/from16 v0, v26

    #@177
    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@179
    move-object/from16 v36, v0

    #@17b
    .line 2285
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v35

    #@17f
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v35

    #@183
    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@186
    goto :goto_2

    #@187
    .line 2276
    :cond_c
    sget-boolean v34, Lcom/android/server/LocationManagerService;->D:Z

    #@189
    if-eqz v34, :cond_a

    #@18b
    .line 2277
    const-string/jumbo v34, "LocationManagerService"

    #@18e
    new-instance v35, Ljava/lang/StringBuilder;

    #@190
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v36, "skipping loc update for background user "

    #@196
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v35

    #@19a
    move-object/from16 v0, v35

    #@19c
    move/from16 v1, v29

    #@19e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v35

    #@1a2
    .line 2278
    const-string/jumbo v36, " (current user: "

    #@1a5
    .line 2277
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v35

    #@1a9
    .line 2278
    move-object/from16 v0, p0

    #@1ab
    iget v0, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@1ad
    move/from16 v36, v0

    #@1af
    .line 2277
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v35

    #@1b3
    .line 2278
    const-string/jumbo v36, ", app: "

    #@1b6
    .line 2277
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v35

    #@1ba
    .line 2279
    move-object/from16 v0, v26

    #@1bc
    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@1be
    move-object/from16 v36, v0

    #@1c0
    .line 2277
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v35

    #@1c4
    .line 2279
    const-string/jumbo v36, ")"

    #@1c7
    .line 2277
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v35

    #@1cb
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ce
    move-result-object v35

    #@1cf
    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d2
    goto/16 :goto_2

    #@1d4
    .line 2290
    :cond_d
    move-object/from16 v0, v26

    #@1d6
    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    #@1d8
    move/from16 v34, v0

    #@1da
    move-object/from16 v0, v26

    #@1dc
    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@1de
    move/from16 v35, v0

    #@1e0
    move-object/from16 v0, v26

    #@1e2
    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@1e4
    move-object/from16 v36, v0

    #@1e6
    .line 2291
    move-object/from16 v0, v26

    #@1e8
    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    #@1ea
    move/from16 v37, v0

    #@1ec
    .line 2290
    move-object/from16 v0, p0

    #@1ee
    move/from16 v1, v34

    #@1f0
    move/from16 v2, v35

    #@1f2
    move-object/from16 v3, v36

    #@1f4
    move/from16 v4, v37

    #@1f6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    #@1f9
    move-result v34

    #@1fa
    if-nez v34, :cond_e

    #@1fc
    .line 2292
    sget-boolean v34, Lcom/android/server/LocationManagerService;->D:Z

    #@1fe
    if-eqz v34, :cond_a

    #@200
    const-string/jumbo v34, "LocationManagerService"

    #@203
    new-instance v35, Ljava/lang/StringBuilder;

    #@205
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@208
    const-string/jumbo v36, "skipping loc update for no op app: "

    #@20b
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v35

    #@20f
    .line 2293
    move-object/from16 v0, v26

    #@211
    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@213
    move-object/from16 v36, v0

    #@215
    .line 2292
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v35

    #@219
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21c
    move-result-object v35

    #@21d
    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@220
    goto/16 :goto_2

    #@222
    .line 2297
    :cond_e
    const/16 v17, 0x0

    #@224
    .line 2298
    .local v17, "notifyLocation":Landroid/location/Location;
    move-object/from16 v0, v26

    #@226
    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    #@228
    move/from16 v34, v0

    #@22a
    const/16 v35, 0x2

    #@22c
    move/from16 v0, v34

    #@22e
    move/from16 v1, v35

    #@230
    if-ge v0, v1, :cond_18

    #@232
    .line 2299
    move-object/from16 v17, v6

    #@234
    .line 2303
    .local v17, "notifyLocation":Landroid/location/Location;
    :goto_3
    if-eqz v17, :cond_11

    #@236
    .line 2304
    move-object/from16 v0, v24

    #@238
    iget-object v10, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    #@23a
    .line 2305
    .local v10, "lastLoc":Landroid/location/Location;
    if-eqz v10, :cond_f

    #@23c
    move-object/from16 v0, v17

    #@23e
    move-object/from16 v1, v24

    #@240
    move-wide/from16 v2, v18

    #@242
    invoke-static {v0, v10, v1, v2, v3}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    #@245
    move-result v34

    #@246
    if-eqz v34, :cond_11

    #@248
    .line 2306
    :cond_f
    if-nez v10, :cond_19

    #@24a
    .line 2307
    new-instance v10, Landroid/location/Location;

    #@24c
    .end local v10    # "lastLoc":Landroid/location/Location;
    move-object/from16 v0, v17

    #@24e
    invoke-direct {v10, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@251
    .line 2308
    .restart local v10    # "lastLoc":Landroid/location/Location;
    move-object/from16 v0, v24

    #@253
    iput-object v10, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    #@255
    .line 2312
    :goto_4
    move-object/from16 v0, v26

    #@257
    move-object/from16 v1, v17

    #@259
    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    #@25c
    move-result v34

    #@25d
    if-nez v34, :cond_10

    #@25f
    .line 2313
    const-string/jumbo v34, "LocationManagerService"

    #@262
    new-instance v35, Ljava/lang/StringBuilder;

    #@264
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@267
    const-string/jumbo v36, "RemoteException calling onLocationChanged on "

    #@26a
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v35

    #@26e
    move-object/from16 v0, v35

    #@270
    move-object/from16 v1, v26

    #@272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v35

    #@276
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@279
    move-result-object v35

    #@27a
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27d
    .line 2314
    const/16 v28, 0x1

    #@27f
    .line 2316
    :cond_10
    move-object/from16 v0, v24

    #@281
    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@283
    move-object/from16 v34, v0

    #@285
    invoke-virtual/range {v34 .. v34}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    #@288
    .line 2320
    .end local v10    # "lastLoc":Landroid/location/Location;
    :cond_11
    move-object/from16 v0, v24

    #@28a
    iget-wide v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    #@28c
    move-wide/from16 v22, v0

    #@28e
    .line 2321
    .local v22, "prevStatusUpdateTime":J
    cmp-long v34, v14, v22

    #@290
    if-lez v34, :cond_13

    #@292
    .line 2322
    const-wide/16 v34, 0x0

    #@294
    cmp-long v34, v22, v34

    #@296
    if-nez v34, :cond_12

    #@298
    const/16 v34, 0x2

    #@29a
    move/from16 v0, v31

    #@29c
    move/from16 v1, v34

    #@29e
    if-eq v0, v1, :cond_13

    #@2a0
    .line 2324
    :cond_12
    move-object/from16 v0, v24

    #@2a2
    iput-wide v14, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    #@2a4
    .line 2325
    move-object/from16 v0, v26

    #@2a6
    move-object/from16 v1, v21

    #@2a8
    move/from16 v2, v31

    #@2aa
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@2ad
    move-result v34

    #@2ae
    if-nez v34, :cond_13

    #@2b0
    .line 2326
    const/16 v28, 0x1

    #@2b2
    .line 2327
    const-string/jumbo v34, "LocationManagerService"

    #@2b5
    new-instance v35, Ljava/lang/StringBuilder;

    #@2b7
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@2ba
    const-string/jumbo v36, "RemoteException calling onStatusChanged on "

    #@2bd
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v35

    #@2c1
    move-object/from16 v0, v35

    #@2c3
    move-object/from16 v1, v26

    #@2c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v35

    #@2c9
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cc
    move-result-object v35

    #@2cd
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d0
    .line 2332
    :cond_13
    move-object/from16 v0, v24

    #@2d2
    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@2d4
    move-object/from16 v34, v0

    #@2d6
    invoke-virtual/range {v34 .. v34}, Landroid/location/LocationRequest;->getNumUpdates()I

    #@2d9
    move-result v34

    #@2da
    if-lez v34, :cond_14

    #@2dc
    move-object/from16 v0, v24

    #@2de
    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@2e0
    move-object/from16 v34, v0

    #@2e2
    invoke-virtual/range {v34 .. v34}, Landroid/location/LocationRequest;->getExpireAt()J

    #@2e5
    move-result-wide v34

    #@2e6
    cmp-long v34, v34, v18

    #@2e8
    if-gez v34, :cond_16

    #@2ea
    .line 2333
    :cond_14
    if-nez v8, :cond_15

    #@2ec
    .line 2334
    new-instance v8, Ljava/util/ArrayList;

    #@2ee
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@2f1
    .line 2336
    :cond_15
    move-object/from16 v0, v24

    #@2f3
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f6
    .line 2339
    :cond_16
    if-eqz v28, :cond_a

    #@2f8
    .line 2340
    if-nez v7, :cond_17

    #@2fa
    .line 2341
    new-instance v7, Ljava/util/ArrayList;

    #@2fc
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@2ff
    .line 2343
    :cond_17
    move-object/from16 v0, v26

    #@301
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@304
    move-result v34

    #@305
    if-nez v34, :cond_a

    #@307
    .line 2344
    move-object/from16 v0, v26

    #@309
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30c
    goto/16 :goto_2

    #@30e
    .line 2301
    .end local v22    # "prevStatusUpdateTime":J
    .local v17, "notifyLocation":Landroid/location/Location;
    :cond_18
    move-object/from16 v17, v11

    #@310
    .local v17, "notifyLocation":Landroid/location/Location;
    goto/16 :goto_3

    #@312
    .line 2310
    .restart local v10    # "lastLoc":Landroid/location/Location;
    :cond_19
    move-object/from16 v0, v17

    #@314
    invoke-virtual {v10, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    #@317
    goto/16 :goto_4

    #@319
    .line 2350
    .end local v10    # "lastLoc":Landroid/location/Location;
    .end local v17    # "notifyLocation":Landroid/location/Location;
    .end local v24    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v28    # "receiverDead":Z
    .end local v29    # "receiverUserId":I
    :cond_1a
    if-eqz v7, :cond_1b

    #@31b
    .line 2351
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31e
    move-result-object v27

    #@31f
    .local v27, "receiver$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    #@322
    move-result v34

    #@323
    if-eqz v34, :cond_1b

    #@325
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@328
    move-result-object v26

    #@329
    check-cast v26, Lcom/android/server/LocationManagerService$Receiver;

    #@32b
    .line 2352
    .restart local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object/from16 v0, p0

    #@32d
    move-object/from16 v1, v26

    #@32f
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    #@332
    goto :goto_5

    #@333
    .line 2355
    .end local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v27    # "receiver$iterator":Ljava/util/Iterator;
    :cond_1b
    if-eqz v8, :cond_1d

    #@335
    .line 2356
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@338
    move-result-object v25

    #@339
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@33c
    move-result v34

    #@33d
    if-eqz v34, :cond_1c

    #@33f
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@342
    move-result-object v24

    #@343
    check-cast v24, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@345
    .line 2357
    .restart local v24    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    const/16 v34, 0x1

    #@347
    move-object/from16 v0, v24

    #@349
    move/from16 v1, v34

    #@34b
    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    #@34e
    goto :goto_6

    #@34f
    .line 2359
    .end local v24    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1c
    move-object/from16 v0, p0

    #@351
    move-object/from16 v1, v21

    #@353
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@356
    .line 2205
    :cond_1d
    return-void
.end method

.method private isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1021
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1022
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 1024
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@c
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 1025
    const/4 v1, 0x0

    #@13
    return v1

    #@14
    .line 1028
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v0

    #@1a
    .line 1030
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@1c
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@1f
    move-result v1

    #@20
    return v1
.end method

.method private isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1043
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1046
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 1044
    :cond_1
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method private isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    #@5
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 378
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private isMockProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2379
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 2379
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private isUidALocationProvider(I)Z
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2101
    const/16 v2, 0x3e8

    #@3
    if-ne p1, v2, :cond_0

    #@5
    .line 2102
    return v3

    #@6
    .line 2104
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 2105
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@c
    invoke-virtual {v2}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-direct {p0, p1, v2}, Lcom/android/server/LocationManagerService;->doesUidHavePackage(ILjava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    return v3

    #@17
    .line 2107
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    #@19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "proxy$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_3

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    #@29
    .line 2108
    .local v0, "proxy":Lcom/android/server/location/LocationProviderProxy;
    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {p0, p1, v2}, Lcom/android/server/LocationManagerService;->doesUidHavePackage(ILjava/lang/String;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_2

    #@33
    return v3

    #@34
    .line 2110
    .end local v0    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_3
    const/4 v2, 0x0

    #@35
    return v2
.end method

.method private loadProvidersLocked()V
    .locals 31

    #@0
    .prologue
    .line 453
    new-instance v23, Lcom/android/server/location/PassiveProvider;

    #@2
    move-object/from16 v0, v23

    #@4
    move-object/from16 v1, p0

    #@6
    invoke-direct {v0, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    #@9
    .line 454
    .local v23, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    move-object/from16 v0, p0

    #@b
    move-object/from16 v1, v23

    #@d
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@10
    .line 455
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@14
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1b
    .line 456
    move-object/from16 v0, v23

    #@1d
    move-object/from16 v1, p0

    #@1f
    iput-object v0, v1, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    #@21
    .line 458
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 460
    new-instance v20, Lcom/android/server/location/GnssLocationProvider;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2d
    .line 461
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@31
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    #@34
    move-result-object v3

    #@35
    .line 460
    move-object/from16 v0, v20

    #@37
    move-object/from16 v1, p0

    #@39
    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    #@3c
    .line 462
    .local v20, "gnssProvider":Lcom/android/server/location/GnssLocationProvider;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/location/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    #@3f
    move-result-object v2

    #@40
    move-object/from16 v0, p0

    #@42
    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    #@44
    .line 463
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/location/GnssLocationProvider;->getGnssStatusProvider()Landroid/location/IGnssStatusProvider;

    #@47
    move-result-object v2

    #@48
    move-object/from16 v0, p0

    #@4a
    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    #@4c
    .line 464
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/location/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    #@4f
    move-result-object v2

    #@50
    move-object/from16 v0, p0

    #@52
    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@54
    .line 465
    move-object/from16 v0, p0

    #@56
    move-object/from16 v1, v20

    #@58
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@5b
    .line 466
    move-object/from16 v0, p0

    #@5d
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@5f
    const-string/jumbo v3, "gps"

    #@62
    move-object/from16 v0, v20

    #@64
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 467
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;

    #@6a
    move-result-object v2

    #@6b
    move-object/from16 v0, p0

    #@6d
    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@6f
    .line 468
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/location/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;

    #@72
    move-result-object v2

    #@73
    move-object/from16 v0, p0

    #@75
    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@77
    .line 469
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/location/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    #@7a
    move-result-object v2

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    #@7f
    .line 483
    .end local v20    # "gnssProvider":Lcom/android/server/location/GnssLocationProvider;
    :cond_0
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@83
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@86
    move-result-object v28

    #@87
    .line 484
    .local v28, "resources":Landroid/content/res/Resources;
    new-instance v26, Ljava/util/ArrayList;

    #@89
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    #@8c
    .line 486
    .local v26, "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x107002c

    #@8f
    .line 485
    move-object/from16 v0, v28

    #@91
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@94
    move-result-object v24

    #@95
    .line 487
    .local v24, "pkgs":[Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    #@97
    if-eqz v2, :cond_1

    #@99
    const-string/jumbo v2, "LocationManagerService"

    #@9c
    new-instance v3, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v7, "certificates for location providers pulled from: "

    #@a4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    .line 488
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@ab
    move-result-object v7

    #@ac
    .line 487
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v3

    #@b4
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    .line 489
    :cond_1
    if-eqz v24, :cond_2

    #@b9
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@bc
    move-result-object v2

    #@bd
    move-object/from16 v0, v26

    #@bf
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@c2
    .line 491
    :cond_2
    move-object/from16 v0, p0

    #@c4
    move-object/from16 v1, v26

    #@c6
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V

    #@c9
    .line 495
    move-object/from16 v0, p0

    #@cb
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@cd
    .line 496
    const-string/jumbo v3, "network"

    #@d0
    .line 497
    const-string/jumbo v4, "com.android.location.service.v3.NetworkLocationProvider"

    #@d3
    .line 501
    move-object/from16 v0, p0

    #@d5
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@d7
    .line 498
    const v5, 0x112004e

    #@da
    .line 499
    const v6, 0x104003f

    #@dd
    .line 500
    const v7, 0x107002c

    #@e0
    .line 494
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    #@e3
    move-result-object v22

    #@e4
    .line 502
    .local v22, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v22, :cond_7

    #@e6
    .line 503
    move-object/from16 v0, p0

    #@e8
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@ea
    const-string/jumbo v3, "network"

    #@ed
    move-object/from16 v0, v22

    #@ef
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f2
    .line 504
    move-object/from16 v0, p0

    #@f4
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    #@f6
    move-object/from16 v0, v22

    #@f8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@fb
    .line 505
    move-object/from16 v0, p0

    #@fd
    move-object/from16 v1, v22

    #@ff
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@102
    .line 512
    :goto_0
    move-object/from16 v0, p0

    #@104
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@106
    .line 513
    const-string/jumbo v3, "fused"

    #@109
    .line 514
    const-string/jumbo v4, "com.android.location.service.FusedLocationProvider"

    #@10c
    .line 518
    move-object/from16 v0, p0

    #@10e
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@110
    .line 515
    const v5, 0x112004f

    #@113
    .line 516
    const v6, 0x1040040

    #@116
    .line 517
    const v7, 0x107002c

    #@119
    .line 511
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    #@11c
    move-result-object v18

    #@11d
    .line 519
    .local v18, "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v18, :cond_8

    #@11f
    .line 520
    move-object/from16 v0, p0

    #@121
    move-object/from16 v1, v18

    #@123
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@126
    .line 521
    move-object/from16 v0, p0

    #@128
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    #@12a
    move-object/from16 v0, v18

    #@12c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12f
    .line 522
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@133
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/location/LocationProviderProxy;->getName()Ljava/lang/String;

    #@136
    move-result-object v3

    #@137
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@13a
    .line 523
    move-object/from16 v0, p0

    #@13c
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@13e
    const-string/jumbo v3, "fused"

    #@141
    move-object/from16 v0, v18

    #@143
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@146
    .line 530
    :goto_1
    move-object/from16 v0, p0

    #@148
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@14a
    .line 534
    move-object/from16 v0, p0

    #@14c
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@14e
    .line 531
    const v7, 0x1120051

    #@151
    .line 532
    const v8, 0x1040042

    #@154
    .line 533
    const v9, 0x107002c

    #@157
    .line 530
    invoke-static {v2, v7, v8, v9, v3}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    #@15a
    move-result-object v2

    #@15b
    move-object/from16 v0, p0

    #@15d
    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@15f
    .line 535
    move-object/from16 v0, p0

    #@161
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@163
    if-nez v2, :cond_3

    #@165
    .line 536
    const-string/jumbo v2, "LocationManagerService"

    #@168
    const-string/jumbo v3, "no geocoder provider found"

    #@16b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16e
    .line 543
    :cond_3
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->isSupported()Z

    #@171
    move-result v2

    #@172
    if-eqz v2, :cond_9

    #@174
    .line 544
    move-object/from16 v0, p0

    #@176
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@178
    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;

    #@17b
    move-result-object v16

    #@17c
    .line 546
    .local v16, "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    move-object/from16 v0, p0

    #@17e
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@180
    .line 547
    move-object/from16 v0, p0

    #@182
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@184
    .line 548
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/FlpHardwareProvider;->getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;

    #@187
    move-result-object v4

    #@188
    .line 549
    const v5, 0x1120050

    #@18b
    .line 550
    const v6, 0x1040041

    #@18e
    .line 551
    const v7, 0x107002c

    #@191
    .line 545
    invoke-static/range {v2 .. v7}, Lcom/android/server/location/FusedProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;

    #@194
    move-result-object v19

    #@195
    .line 552
    .local v19, "fusedProxy":Lcom/android/server/location/FusedProxy;
    if-nez v19, :cond_4

    #@197
    .line 553
    const-string/jumbo v2, "LocationManagerService"

    #@19a
    const-string/jumbo v3, "Unable to bind FusedProxy."

    #@19d
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a0
    .line 562
    .end local v16    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    .end local v19    # "fusedProxy":Lcom/android/server/location/FusedProxy;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@1a2
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@1a4
    .line 565
    move-object/from16 v0, p0

    #@1a6
    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@1a8
    .line 566
    move-object/from16 v0, p0

    #@1aa
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    #@1ac
    .line 567
    if-eqz v16, :cond_a

    #@1ae
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;

    #@1b1
    move-result-object v8

    #@1b2
    .line 562
    :goto_3
    const v3, 0x1120052

    #@1b5
    .line 563
    const v4, 0x1040043

    #@1b8
    .line 564
    const v5, 0x107002c

    #@1bb
    .line 561
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    #@1be
    move-result-object v25

    #@1bf
    .line 568
    .local v25, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v25, :cond_5

    #@1c1
    .line 569
    const-string/jumbo v2, "LocationManagerService"

    #@1c4
    const-string/jumbo v3, "Unable to bind FLP Geofence proxy."

    #@1c7
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ca
    .line 573
    :cond_5
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    #@1cd
    move-result v4

    #@1ce
    .line 574
    .local v4, "activityRecognitionHardwareIsSupported":Z
    const/4 v5, 0x0

    #@1cf
    .line 575
    .local v5, "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    if-eqz v4, :cond_b

    #@1d1
    .line 576
    move-object/from16 v0, p0

    #@1d3
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@1d5
    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    #@1d8
    move-result-object v5

    #@1d9
    .line 581
    .end local v5    # "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    :goto_4
    move-object/from16 v0, p0

    #@1db
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@1dd
    .line 582
    move-object/from16 v0, p0

    #@1df
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@1e1
    .line 585
    const v6, 0x1120053

    #@1e4
    .line 586
    const v7, 0x1040044

    #@1e7
    .line 587
    const v8, 0x107002c

    #@1ea
    .line 580
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    #@1ed
    move-result-object v27

    #@1ee
    .line 588
    .local v27, "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    if-nez v27, :cond_6

    #@1f0
    .line 589
    const-string/jumbo v2, "LocationManagerService"

    #@1f3
    const-string/jumbo v3, "Unable to bind ActivityRecognitionProxy."

    #@1f6
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f9
    .line 593
    :cond_6
    const v2, 0x107002d

    #@1fc
    .line 592
    move-object/from16 v0, v28

    #@1fe
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@201
    move-result-object v30

    #@202
    .line 594
    .local v30, "testProviderStrings":[Ljava/lang/String;
    const/4 v2, 0x0

    #@203
    move-object/from16 v0, v30

    #@205
    array-length v3, v0

    #@206
    :goto_5
    if-ge v2, v3, :cond_d

    #@208
    aget-object v29, v30, v2

    #@20a
    .line 595
    .local v29, "testProviderString":Ljava/lang/String;
    const-string/jumbo v7, ","

    #@20d
    move-object/from16 v0, v29

    #@20f
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@212
    move-result-object v17

    #@213
    .line 596
    .local v17, "fragments":[Ljava/lang/String;
    const/4 v7, 0x0

    #@214
    aget-object v7, v17, v7

    #@216
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@219
    move-result-object v21

    #@21a
    .line 597
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@21c
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@21e
    move-object/from16 v0, v21

    #@220
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@223
    move-result-object v7

    #@224
    if-eqz v7, :cond_c

    #@226
    .line 598
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@228
    new-instance v3, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    const-string/jumbo v7, "Provider \""

    #@230
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v3

    #@234
    move-object/from16 v0, v21

    #@236
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v3

    #@23a
    const-string/jumbo v7, "\" already exists"

    #@23d
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v3

    #@241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@244
    move-result-object v3

    #@245
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@248
    throw v2

    #@249
    .line 507
    .end local v4    # "activityRecognitionHardwareIsSupported":Z
    .end local v17    # "fragments":[Ljava/lang/String;
    .end local v18    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    .end local v21    # "name":Ljava/lang/String;
    .end local v25    # "provider":Lcom/android/server/location/GeofenceProxy;
    .end local v27    # "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    .end local v29    # "testProviderString":Ljava/lang/String;
    .end local v30    # "testProviderStrings":[Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "LocationManagerService"

    #@24c
    const-string/jumbo v3, "no network location provider found"

    #@24f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@252
    goto/16 :goto_0

    #@254
    .line 525
    .restart local v18    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_8
    const-string/jumbo v2, "LocationManagerService"

    #@257
    const-string/jumbo v3, "no fused location provider found"

    #@25a
    .line 526
    new-instance v7, Ljava/lang/IllegalStateException;

    #@25c
    const-string/jumbo v8, "Location service needs a fused location provider"

    #@25f
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@262
    .line 525
    invoke-static {v2, v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@265
    goto/16 :goto_1

    #@267
    .line 556
    :cond_9
    const/16 v16, 0x0

    #@269
    .line 557
    .local v16, "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    const-string/jumbo v2, "LocationManagerService"

    #@26c
    const-string/jumbo v3, "FLP HAL not supported"

    #@26f
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@272
    goto/16 :goto_2

    #@274
    .line 567
    .end local v16    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    :cond_a
    const/4 v8, 0x0

    #@275
    goto/16 :goto_3

    #@277
    .line 578
    .restart local v4    # "activityRecognitionHardwareIsSupported":Z
    .restart local v5    # "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    .restart local v25    # "provider":Lcom/android/server/location/GeofenceProxy;
    :cond_b
    const-string/jumbo v2, "LocationManagerService"

    #@27a
    const-string/jumbo v3, "Hardware Activity-Recognition not supported."

    #@27d
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@280
    goto/16 :goto_4

    #@282
    .line 600
    .end local v5    # "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    .restart local v17    # "fragments":[Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v27    # "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    .restart local v29    # "testProviderString":Ljava/lang/String;
    .restart local v30    # "testProviderStrings":[Ljava/lang/String;
    :cond_c
    new-instance v6, Lcom/android/internal/location/ProviderProperties;

    #@284
    .line 601
    const/4 v7, 0x1

    #@285
    aget-object v7, v17, v7

    #@287
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@28a
    move-result v7

    #@28b
    .line 602
    const/4 v8, 0x2

    #@28c
    aget-object v8, v17, v8

    #@28e
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@291
    move-result v8

    #@292
    .line 603
    const/4 v9, 0x3

    #@293
    aget-object v9, v17, v9

    #@295
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@298
    move-result v9

    #@299
    .line 604
    const/4 v10, 0x4

    #@29a
    aget-object v10, v17, v10

    #@29c
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@29f
    move-result v10

    #@2a0
    .line 605
    const/4 v11, 0x5

    #@2a1
    aget-object v11, v17, v11

    #@2a3
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2a6
    move-result v11

    #@2a7
    .line 606
    const/4 v12, 0x6

    #@2a8
    aget-object v12, v17, v12

    #@2aa
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2ad
    move-result v12

    #@2ae
    .line 607
    const/4 v13, 0x7

    #@2af
    aget-object v13, v17, v13

    #@2b1
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2b4
    move-result v13

    #@2b5
    .line 608
    const/16 v14, 0x8

    #@2b7
    aget-object v14, v17, v14

    #@2b9
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2bc
    move-result v14

    #@2bd
    .line 609
    const/16 v15, 0x9

    #@2bf
    aget-object v15, v17, v15

    #@2c1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2c4
    move-result v15

    #@2c5
    .line 600
    invoke-direct/range {v6 .. v15}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    #@2c8
    .line 610
    .local v6, "properties":Lcom/android/internal/location/ProviderProperties;
    move-object/from16 v0, p0

    #@2ca
    move-object/from16 v1, v21

    #@2cc
    invoke-direct {v0, v1, v6}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    #@2cf
    .line 594
    add-int/lit8 v2, v2, 0x1

    #@2d1
    goto/16 :goto_5

    #@2d3
    .line 451
    .end local v6    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v17    # "fragments":[Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v29    # "testProviderString":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2654
    const-string/jumbo v0, "LocationManagerService"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2655
    const-string/jumbo v0, "LocationManagerService"

    #@d
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 2653
    :cond_0
    return-void
.end method

.method private pickBest(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1311
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "gps"

    #@3
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1312
    const-string/jumbo v0, "gps"

    #@c
    return-object v0

    #@d
    .line 1313
    :cond_0
    const-string/jumbo v0, "network"

    #@10
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1314
    const-string/jumbo v0, "network"

    #@19
    return-object v0

    #@1a
    .line 1316
    :cond_1
    const/4 v0, 0x0

    #@1b
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    return-object v0
.end method

.method private removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/location/LocationProviderInterface;

    #@0
    .prologue
    .line 1007
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    #@3
    .line 1008
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    .line 1009
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@a
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 1006
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 10
    .param p1, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1732
    sget-boolean v6, Lcom/android/server/LocationManagerService;->D:Z

    #@3
    if-eqz v6, :cond_0

    #@5
    const-string/jumbo v6, "LocationManagerService"

    #@8
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v8, "remove "

    #@10
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@17
    move-result v8

    #@18
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1734
    :cond_0
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@29
    iget-object v7, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    #@2b
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v6

    #@2f
    if-eqz v6, :cond_1

    #@31
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_1

    #@37
    .line 1735
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    #@3a
    move-result-object v6

    #@3b
    invoke-interface {v6}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@3e
    move-result-object v6

    #@3f
    invoke-interface {v6, p1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@42
    .line 1736
    monitor-enter p1

    #@43
    .line 1737
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    monitor-exit p1

    #@47
    .line 1741
    :cond_1
    invoke-virtual {p1, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    #@4a
    .line 1744
    new-instance v3, Ljava/util/HashSet;

    #@4c
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@4f
    .line 1745
    .local v3, "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    #@51
    .line 1746
    .local v0, "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v0, :cond_3

    #@53
    .line 1748
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@56
    move-result-object v6

    #@57
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v5

    #@5b
    .local v5, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@5e
    move-result v6

    #@5f
    if-eqz v6, :cond_2

    #@61
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@64
    move-result-object v4

    #@65
    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@67
    .line 1750
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-virtual {v4, v9}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    #@6a
    goto :goto_0

    #@6b
    .line 1736
    .end local v0    # "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v3    # "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v5    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@6c
    monitor-exit p1

    #@6d
    throw v6

    #@6e
    .line 1753
    .restart local v0    # "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v3    # "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "record$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@75
    .line 1757
    .end local v5    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@78
    move-result-object v2

    #@79
    .local v2, "provider$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7c
    move-result v6

    #@7d
    if-eqz v6, :cond_5

    #@7f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@82
    move-result-object v1

    #@83
    check-cast v1, Ljava/lang/String;

    #@85
    .line 1759
    .local v1, "provider":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@88
    move-result v6

    #@89
    if-eqz v6, :cond_4

    #@8b
    .line 1763
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@8e
    goto :goto_1

    #@8f
    .line 1731
    .end local v1    # "provider":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    .locals 9
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1676
    if-nez p1, :cond_0

    #@3
    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    #@5
    .line 1677
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1678
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    #@b
    .line 1679
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v6, "provider name must not be null"

    #@10
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v5

    #@14
    .line 1682
    :cond_1
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    #@16
    if-eqz v5, :cond_2

    #@18
    const-string/jumbo v5, "LocationManagerService"

    #@1b
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v7, "request "

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2a
    move-result v7

    #@2b
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    .line 1683
    const-string/jumbo v7, " "

    #@36
    .line 1682
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    .line 1683
    const-string/jumbo v7, " "

    #@41
    .line 1682
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 1683
    const-string/jumbo v7, " from "

    #@4c
    .line 1682
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    .line 1683
    const-string/jumbo v7, "("

    #@57
    .line 1682
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    .line 1683
    const-string/jumbo v7, ")"

    #@62
    .line 1682
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 1684
    :cond_2
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@6f
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    #@75
    .line 1685
    .local v3, "provider":Lcom/android/server/location/LocationProviderInterface;
    if-nez v3, :cond_3

    #@77
    .line 1686
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@79
    new-instance v6, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v7, "provider doesn\'t exist: "

    #@81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@90
    throw v5

    #@91
    .line 1689
    :cond_3
    new-instance v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@93
    invoke-direct {v4, p0, v1, p1, p2}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    #@96
    .line 1690
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v5, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    #@98
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    move-result-object v2

    #@9c
    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@9e
    .line 1691
    .local v2, "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v2, :cond_4

    #@a0
    .line 1692
    invoke-virtual {v2, v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    #@a3
    .line 1695
    :cond_4
    invoke-direct {p0, v1, p4}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    #@a6
    move-result v0

    #@a7
    .line 1696
    .local v0, "isProviderEnabled":Z
    if-eqz v0, :cond_5

    #@a9
    .line 1697
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@ac
    .line 1704
    :goto_0
    const/4 v5, 0x1

    #@ad
    invoke-virtual {p2, v5}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    #@b0
    .line 1673
    return-void

    #@b1
    .line 1700
    :cond_5
    invoke-virtual {p2, v1, v8}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    #@b4
    goto :goto_0
.end method

.method public static resolutionLevelToOp(I)I
    .locals 2
    .param p0, "allowedResolutionLevel"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 1179
    if-eqz p0, :cond_1

    #@4
    .line 1180
    if-ne p0, v1, :cond_0

    #@6
    .line 1181
    return v0

    #@7
    .line 1183
    :cond_0
    return v1

    #@8
    .line 1186
    :cond_1
    const/4 v0, -0x1

    #@9
    return v0
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .locals 11
    .param p0, "loc"    # Landroid/location/Location;
    .param p1, "lastLoc"    # Landroid/location/Location;
    .param p2, "record"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p3, "now"    # J

    #@0
    .prologue
    .line 2172
    if-nez p1, :cond_0

    #@2
    .line 2173
    const/4 v6, 0x1

    #@3
    return v6

    #@4
    .line 2177
    :cond_0
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@6
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getFastestInterval()J

    #@9
    move-result-wide v4

    #@a
    .line 2178
    .local v4, "minTime":J
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@d
    move-result-wide v6

    #@e
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@11
    move-result-wide v8

    #@12
    sub-long/2addr v6, v8

    #@13
    .line 2179
    const-wide/32 v8, 0xf4240

    #@16
    .line 2178
    div-long v0, v6, v8

    #@18
    .line 2180
    .local v0, "delta":J
    const-wide/16 v6, 0x64

    #@1a
    sub-long v6, v4, v6

    #@1c
    cmp-long v6, v0, v6

    #@1e
    if-gez v6, :cond_1

    #@20
    .line 2181
    const/4 v6, 0x0

    #@21
    return v6

    #@22
    .line 2185
    :cond_1
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@24
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    #@27
    move-result v6

    #@28
    float-to-double v2, v6

    #@29
    .line 2186
    .local v2, "minDistance":D
    const-wide/16 v6, 0x0

    #@2b
    cmpl-double v6, v2, v6

    #@2d
    if-lez v6, :cond_2

    #@2f
    .line 2187
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    #@32
    move-result v6

    #@33
    float-to-double v6, v6

    #@34
    cmpg-double v6, v6, v2

    #@36
    if-gtz v6, :cond_2

    #@38
    .line 2188
    const/4 v6, 0x0

    #@39
    return v6

    #@3a
    .line 2193
    :cond_2
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@3c
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    #@3f
    move-result v6

    #@40
    if-gtz v6, :cond_3

    #@42
    .line 2194
    const/4 v6, 0x0

    #@43
    return v6

    #@44
    .line 2198
    :cond_3
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@46
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getExpireAt()J

    #@49
    move-result-wide v6

    #@4a
    cmp-long v6, v6, p3

    #@4c
    if-gez v6, :cond_4

    #@4e
    .line 2199
    const/4 v6, 0x0

    #@4f
    return v6

    #@50
    .line 2202
    :cond_4
    const/4 v6, 0x1

    #@51
    return v6
.end method

.method private shutdownComponents()V
    .locals 4

    #@0
    .prologue
    .line 344
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "LocationManagerService"

    #@7
    const-string/jumbo v3, "Shutting down components..."

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 346
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@f
    const-string/jumbo v3, "gps"

    #@12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    #@18
    .line 347
    .local v1, "gpsProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_1

    #@1a
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 348
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    #@23
    .line 353
    :cond_1
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->isSupported()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 354
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2b
    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;

    #@2e
    move-result-object v0

    #@2f
    .line 355
    .local v0, "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    invoke-virtual {v0}, Lcom/android/server/location/FlpHardwareProvider;->cleanup()V

    #@32
    .line 343
    .end local v0    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    :cond_2
    return-void
.end method

.method private switchUser(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 619
    iget v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@2
    if-ne v2, p1, :cond_0

    #@4
    .line 620
    return-void

    #@5
    .line 622
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@7
    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    #@a
    .line 623
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@c
    const/4 v3, 0x1

    #@d
    invoke-virtual {v2, v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(I)V

    #@10
    .line 624
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@12
    monitor-enter v3

    #@13
    .line 625
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@15
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@18
    .line 626
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@1d
    .line 627
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@1f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v1

    #@23
    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    #@2f
    .line 628
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    const/4 v4, 0x0

    #@34
    invoke-direct {p0, v2, v4}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 624
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2

    #@3b
    .line 630
    .restart local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@3d
    .line 631
    invoke-virtual {p0, p1}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    #@40
    .line 632
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v3

    #@44
    .line 618
    return-void
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1362
    const/4 v3, 0x0

    #@1
    .line 1364
    .local v3, "listeners":I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    #@9
    .line 1365
    .local v4, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_0

    #@b
    return-void

    #@c
    .line 1367
    :cond_0
    const/4 v1, 0x0

    #@d
    .line 1369
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    #@f
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v6

    #@13
    check-cast v6, Ljava/util/ArrayList;

    #@15
    .line 1370
    .local v6, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_4

    #@17
    .line 1371
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v0

    #@1b
    .line 1372
    .local v0, "N":I
    const/4 v2, 0x0

    #@1c
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@1e
    .line 1373
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@24
    .line 1374
    .local v5, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@26
    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@28
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@2b
    move-result v7

    #@2c
    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_3

    #@32
    .line 1376
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@34
    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    #@37
    move-result v7

    #@38
    if-nez v7, :cond_2

    #@3a
    .line 1377
    if-nez v1, :cond_1

    #@3c
    .line 1378
    new-instance v1, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 1380
    :cond_1
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@43
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 1382
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@48
    .line 1372
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 1387
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    if-eqz v1, :cond_5

    #@4d
    .line 1388
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@50
    move-result v7

    #@51
    add-int/lit8 v2, v7, -0x1

    #@53
    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_5

    #@55
    .line 1389
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v7

    #@59
    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    #@5b
    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    #@5e
    .line 1388
    add-int/lit8 v2, v2, -0x1

    #@60
    goto :goto_1

    #@61
    .line 1393
    .end local v2    # "i":I
    :cond_5
    if-eqz p2, :cond_7

    #@63
    .line 1394
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    #@66
    .line 1395
    if-lez v3, :cond_6

    #@68
    .line 1396
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@6b
    .line 1361
    :cond_6
    :goto_2
    return-void

    #@6c
    .line 1399
    :cond_7
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    #@6f
    goto :goto_2
.end method

.method private updateProvidersLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1334
    const/4 v0, 0x0

    #@2
    .line 1335
    .local v0, "changesMade":Z
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v6

    #@8
    add-int/lit8 v1, v6, -0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@c
    .line 1336
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    #@14
    .line 1337
    .local v4, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    #@17
    move-result v2

    #@18
    .line 1338
    .local v2, "isEnabled":Z
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 1339
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@1f
    move-result v5

    #@20
    .line 1340
    .local v5, "shouldBeEnabled":Z
    if-eqz v2, :cond_0

    #@22
    if-eqz v5, :cond_2

    #@24
    .line 1348
    :cond_0
    if-nez v2, :cond_1

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 1349
    const/4 v6, 0x1

    #@29
    invoke-direct {p0, v3, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    #@2c
    .line 1350
    const/4 v0, 0x1

    #@2d
    .line 1335
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 1341
    :cond_2
    invoke-direct {p0, v3, v7}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    #@33
    .line 1345
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@35
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    #@38
    .line 1346
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@3a
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    #@3d
    .line 1347
    const/4 v0, 0x1

    #@3e
    .line 1340
    goto :goto_1

    #@3f
    .line 1353
    .end local v2    # "isEnabled":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v5    # "shouldBeEnabled":Z
    :cond_3
    if-eqz v0, :cond_4

    #@41
    .line 1354
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@43
    new-instance v7, Landroid/content/Intent;

    #@45
    const-string/jumbo v8, "android.location.PROVIDERS_CHANGED"

    #@48
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4b
    .line 1355
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4d
    .line 1354
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@50
    .line 1356
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@52
    new-instance v7, Landroid/content/Intent;

    #@54
    const-string/jumbo v8, "android.location.MODE_CHANGED"

    #@57
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5a
    .line 1357
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5c
    .line 1356
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5f
    .line 1333
    :cond_4
    return-void
.end method


# virtual methods
.method public addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1933
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@3
    move-result v0

    #@4
    .line 1936
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    #@7
    .line 1934
    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@a
    .line 1938
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@d
    move-result v4

    #@e
    .line 1939
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@11
    move-result v5

    #@12
    .line 1940
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 1943
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {p0, v4, v5, p2, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v1

    #@1a
    .line 1945
    .local v1, "hasLocationAccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 1948
    if-eqz v1, :cond_0

    #@1f
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@21
    if-nez v6, :cond_1

    #@23
    .line 1949
    :cond_0
    const/4 v6, 0x0

    #@24
    return v6

    #@25
    .line 1944
    .end local v1    # "hasLocationAccess":Z
    :catchall_0
    move-exception v6

    #@26
    .line 1945
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1944
    throw v6

    #@2a
    .line 1951
    .restart local v1    # "hasLocationAccess":Z
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@2c
    invoke-virtual {v6, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->addListener(Landroid/os/IInterface;)Z

    #@2f
    move-result v6

    #@30
    return v6
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1965
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@3
    move-result v0

    #@4
    .line 1968
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    #@7
    .line 1966
    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@a
    .line 1970
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@d
    move-result v4

    #@e
    .line 1971
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@11
    move-result v5

    #@12
    .line 1972
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 1975
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {p0, v4, v5, p2, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v1

    #@1a
    .line 1977
    .local v1, "hasLocationAccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 1980
    if-eqz v1, :cond_0

    #@1f
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@21
    if-nez v6, :cond_1

    #@23
    .line 1981
    :cond_0
    const/4 v6, 0x0

    #@24
    return v6

    #@25
    .line 1976
    .end local v1    # "hasLocationAccess":Z
    :catchall_0
    move-exception v6

    #@26
    .line 1977
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1976
    throw v6

    #@2a
    .line 1983
    .restart local v1    # "hasLocationAccess":Z
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@2c
    invoke-virtual {v6, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->addListener(Landroid/os/IInterface;)Z

    #@2f
    move-result v6

    #@30
    return v6
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2475
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2476
    return-void

    #@7
    .line 2479
    :cond_0
    const-string/jumbo v3, "passive"

    #@a
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 2480
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v4, "Cannot mock the passive location provider"

    #@15
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 2483
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v0

    #@1d
    .line 2484
    .local v0, "identity":J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@1f
    monitor-enter v4

    #@20
    .line 2486
    :try_start_0
    const-string/jumbo v3, "gps"

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_2

    #@29
    .line 2487
    const-string/jumbo v3, "network"

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    .line 2486
    if-nez v3, :cond_2

    #@32
    .line 2488
    const-string/jumbo v3, "fused"

    #@35
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v3

    #@39
    .line 2486
    if-eqz v3, :cond_3

    #@3b
    .line 2489
    :cond_2
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3d
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    #@43
    .line 2490
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_3

    #@45
    .line 2491
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@48
    .line 2494
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    #@4b
    .line 2495
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    monitor-exit v4

    #@4f
    .line 2497
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 2474
    return-void

    #@53
    .line 2484
    :catchall_0
    move-exception v3

    #@54
    monitor-exit v4

    #@55
    throw v3
.end method

.method checkLocationAccess(IILjava/lang/String;I)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1206
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    #@4
    move-result v0

    #@5
    .line 1207
    .local v0, "op":I
    if-ltz v0, :cond_0

    #@7
    .line 1208
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1209
    return v2

    #@10
    .line 1213
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    #@13
    move-result v1

    #@14
    if-ge v1, p4, :cond_1

    #@16
    .line 1214
    return v2

    #@17
    .line 1217
    :cond_1
    const/4 v1, 0x1

    #@18
    return v1
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2605
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2606
    return-void

    #@7
    .line 2609
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 2610
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/location/MockProvider;

    #@12
    .line 2611
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    #@14
    .line 2612
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "Provider \""

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, "\" unknown"

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 2609
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3

    #@38
    .line 2614
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3b
    move-result-wide v0

    #@3c
    .line 2615
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@3e
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@41
    .line 2616
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@43
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@46
    .line 2617
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    #@49
    .line 2618
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    monitor-exit v4

    #@4d
    .line 2604
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2564
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2565
    return-void

    #@7
    .line 2568
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 2569
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/location/MockProvider;

    #@12
    .line 2570
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_1

    #@14
    .line 2571
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Provider \""

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "\" unknown"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 2568
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 2573
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 2563
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2640
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2641
    return-void

    #@7
    .line 2644
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 2645
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/location/MockProvider;

    #@12
    .line 2646
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_1

    #@14
    .line 2647
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Provider \""

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "\" unknown"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 2644
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 2649
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 2639
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2661
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v22, v0

    #@6
    const-string/jumbo v23, "android.permission.DUMP"

    #@9
    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v22

    #@d
    if-eqz v22, :cond_0

    #@f
    .line 2663
    new-instance v22, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v23, "Permission Denial: can\'t dump LocationManagerService from from pid="

    #@17
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v22

    #@1b
    .line 2664
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v23

    #@1f
    .line 2663
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v22

    #@23
    .line 2665
    const-string/jumbo v23, ", uid="

    #@26
    .line 2663
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v22

    #@2a
    .line 2665
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v23

    #@2e
    .line 2663
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v22

    #@32
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v22

    #@36
    move-object/from16 v0, p2

    #@38
    move-object/from16 v1, v22

    #@3a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 2666
    return-void

    #@3e
    .line 2669
    :cond_0
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@42
    move-object/from16 v23, v0

    #@44
    monitor-enter v23

    #@45
    .line 2670
    :try_start_0
    const-string/jumbo v22, "Current Location Manager state:"

    #@48
    move-object/from16 v0, p2

    #@4a
    move-object/from16 v1, v22

    #@4c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 2671
    const-string/jumbo v22, "  Location Listeners:"

    #@52
    move-object/from16 v0, p2

    #@54
    move-object/from16 v1, v22

    #@56
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 2672
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@5d
    move-object/from16 v22, v0

    #@5f
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@62
    move-result-object v22

    #@63
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@66
    move-result-object v18

    #@67
    .local v18, "receiver$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@6a
    move-result v22

    #@6b
    if-eqz v22, :cond_1

    #@6d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@70
    move-result-object v17

    #@71
    check-cast v17, Lcom/android/server/LocationManagerService$Receiver;

    #@73
    .line 2673
    .local v17, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    new-instance v22, Ljava/lang/StringBuilder;

    #@75
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v24, "    "

    #@7b
    move-object/from16 v0, v22

    #@7d
    move-object/from16 v1, v24

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v22

    #@83
    move-object/from16 v0, v22

    #@85
    move-object/from16 v1, v17

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v22

    #@8b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v22

    #@8f
    move-object/from16 v0, p2

    #@91
    move-object/from16 v1, v22

    #@93
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@96
    goto :goto_0

    #@97
    .line 2669
    .end local v17    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v18    # "receiver$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v22

    #@98
    monitor-exit v23

    #@99
    throw v22

    #@9a
    .line 2675
    .restart local v18    # "receiver$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string/jumbo v22, "  Active Records by Provider:"

    #@9d
    move-object/from16 v0, p2

    #@9f
    move-object/from16 v1, v22

    #@a1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a4
    .line 2676
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    #@a8
    move-object/from16 v22, v0

    #@aa
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@ad
    move-result-object v22

    #@ae
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b1
    move-result-object v7

    #@b2
    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@b5
    move-result v22

    #@b6
    if-eqz v22, :cond_3

    #@b8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bb
    move-result-object v6

    #@bc
    check-cast v6, Ljava/util/Map$Entry;

    #@be
    .line 2677
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v24, "    "

    #@c6
    move-object/from16 v0, v22

    #@c8
    move-object/from16 v1, v24

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v24

    #@ce
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d1
    move-result-object v22

    #@d2
    check-cast v22, Ljava/lang/String;

    #@d4
    move-object/from16 v0, v24

    #@d6
    move-object/from16 v1, v22

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v22

    #@dc
    const-string/jumbo v24, ":"

    #@df
    move-object/from16 v0, v22

    #@e1
    move-object/from16 v1, v24

    #@e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v22

    #@e7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v22

    #@eb
    move-object/from16 v0, p2

    #@ed
    move-object/from16 v1, v22

    #@ef
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f2
    .line 2678
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@f5
    move-result-object v22

    #@f6
    check-cast v22, Ljava/util/ArrayList;

    #@f8
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@fb
    move-result-object v20

    #@fc
    .local v20, "record$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@ff
    move-result v22

    #@100
    if-eqz v22, :cond_2

    #@102
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@105
    move-result-object v19

    #@106
    check-cast v19, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@108
    .line 2679
    .local v19, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v22, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v24, "      "

    #@110
    move-object/from16 v0, v22

    #@112
    move-object/from16 v1, v24

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v22

    #@118
    move-object/from16 v0, v22

    #@11a
    move-object/from16 v1, v19

    #@11c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v22

    #@120
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v22

    #@124
    move-object/from16 v0, p2

    #@126
    move-object/from16 v1, v22

    #@128
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12b
    goto :goto_1

    #@12c
    .line 2682
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v19    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v20    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v22, "  Historical Records by Provider:"

    #@12f
    move-object/from16 v0, p2

    #@131
    move-object/from16 v1, v22

    #@133
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@136
    .line 2684
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    #@13a
    move-object/from16 v22, v0

    #@13c
    move-object/from16 v0, v22

    #@13e
    iget-object v0, v0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    #@140
    move-object/from16 v22, v0

    #@142
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@145
    move-result-object v22

    #@146
    .line 2683
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@149
    move-result-object v7

    #@14a
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@14d
    move-result v22

    #@14e
    if-eqz v22, :cond_4

    #@150
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@153
    move-result-object v4

    #@154
    check-cast v4, Ljava/util/Map$Entry;

    #@156
    .line 2685
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@159
    move-result-object v11

    #@15a
    check-cast v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    #@15c
    .line 2686
    .local v11, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@15f
    move-result-object v21

    #@160
    check-cast v21, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    #@162
    .line 2687
    .local v21, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    new-instance v22, Ljava/lang/StringBuilder;

    #@164
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v24, "    "

    #@16a
    move-object/from16 v0, v22

    #@16c
    move-object/from16 v1, v24

    #@16e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v22

    #@172
    iget-object v0, v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->packageName:Ljava/lang/String;

    #@174
    move-object/from16 v24, v0

    #@176
    move-object/from16 v0, v22

    #@178
    move-object/from16 v1, v24

    #@17a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v22

    #@17e
    const-string/jumbo v24, ": "

    #@181
    move-object/from16 v0, v22

    #@183
    move-object/from16 v1, v24

    #@185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v22

    #@189
    iget-object v0, v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->providerName:Ljava/lang/String;

    #@18b
    move-object/from16 v24, v0

    #@18d
    move-object/from16 v0, v22

    #@18f
    move-object/from16 v1, v24

    #@191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v22

    #@195
    const-string/jumbo v24, ": "

    #@198
    move-object/from16 v0, v22

    #@19a
    move-object/from16 v1, v24

    #@19c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v22

    #@1a0
    move-object/from16 v0, v22

    #@1a2
    move-object/from16 v1, v21

    #@1a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v22

    #@1a8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v22

    #@1ac
    move-object/from16 v0, p2

    #@1ae
    move-object/from16 v1, v22

    #@1b0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b3
    goto :goto_2

    #@1b4
    .line 2689
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    .end local v11    # "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    .end local v21    # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    :cond_4
    const-string/jumbo v22, "  Last Known Locations:"

    #@1b7
    move-object/from16 v0, p2

    #@1b9
    move-object/from16 v1, v22

    #@1bb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1be
    .line 2690
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@1c2
    move-object/from16 v22, v0

    #@1c4
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1c7
    move-result-object v22

    #@1c8
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1cb
    move-result-object v7

    #@1cc
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1cf
    move-result v22

    #@1d0
    if-eqz v22, :cond_5

    #@1d2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d5
    move-result-object v5

    #@1d6
    check-cast v5, Ljava/util/Map$Entry;

    #@1d8
    .line 2691
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1db
    move-result-object v14

    #@1dc
    check-cast v14, Ljava/lang/String;

    #@1de
    .line 2692
    .local v14, "provider":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e1
    move-result-object v12

    #@1e2
    check-cast v12, Landroid/location/Location;

    #@1e4
    .line 2693
    .local v12, "location":Landroid/location/Location;
    new-instance v22, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v24, "    "

    #@1ec
    move-object/from16 v0, v22

    #@1ee
    move-object/from16 v1, v24

    #@1f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v22

    #@1f4
    move-object/from16 v0, v22

    #@1f6
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v22

    #@1fa
    const-string/jumbo v24, ": "

    #@1fd
    move-object/from16 v0, v22

    #@1ff
    move-object/from16 v1, v24

    #@201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v22

    #@205
    move-object/from16 v0, v22

    #@207
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v22

    #@20b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v22

    #@20f
    move-object/from16 v0, p2

    #@211
    move-object/from16 v1, v22

    #@213
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@216
    goto :goto_3

    #@217
    .line 2696
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v12    # "location":Landroid/location/Location;
    .end local v14    # "provider":Ljava/lang/String;
    :cond_5
    const-string/jumbo v22, "  Last Known Locations Coarse Intervals:"

    #@21a
    move-object/from16 v0, p2

    #@21c
    move-object/from16 v1, v22

    #@21e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@221
    .line 2697
    move-object/from16 v0, p0

    #@223
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@225
    move-object/from16 v22, v0

    #@227
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@22a
    move-result-object v22

    #@22b
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22e
    move-result-object v7

    #@22f
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@232
    move-result v22

    #@233
    if-eqz v22, :cond_6

    #@235
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@238
    move-result-object v5

    #@239
    check-cast v5, Ljava/util/Map$Entry;

    #@23b
    .line 2698
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@23e
    move-result-object v14

    #@23f
    check-cast v14, Ljava/lang/String;

    #@241
    .line 2699
    .restart local v14    # "provider":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@244
    move-result-object v12

    #@245
    check-cast v12, Landroid/location/Location;

    #@247
    .line 2700
    .restart local v12    # "location":Landroid/location/Location;
    new-instance v22, Ljava/lang/StringBuilder;

    #@249
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@24c
    const-string/jumbo v24, "    "

    #@24f
    move-object/from16 v0, v22

    #@251
    move-object/from16 v1, v24

    #@253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v22

    #@257
    move-object/from16 v0, v22

    #@259
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v22

    #@25d
    const-string/jumbo v24, ": "

    #@260
    move-object/from16 v0, v22

    #@262
    move-object/from16 v1, v24

    #@264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@267
    move-result-object v22

    #@268
    move-object/from16 v0, v22

    #@26a
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v22

    #@26e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@271
    move-result-object v22

    #@272
    move-object/from16 v0, p2

    #@274
    move-object/from16 v1, v22

    #@276
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@279
    goto :goto_4

    #@27a
    .line 2703
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v12    # "location":Landroid/location/Location;
    .end local v14    # "provider":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    #@27e
    move-object/from16 v22, v0

    #@280
    move-object/from16 v0, v22

    #@282
    move-object/from16 v1, p2

    #@284
    invoke-virtual {v0, v1}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    #@287
    .line 2705
    move-object/from16 v0, p0

    #@289
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@28b
    move-object/from16 v22, v0

    #@28d
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    #@290
    move-result v22

    #@291
    if-lez v22, :cond_7

    #@293
    .line 2706
    const-string/jumbo v22, "  Enabled Providers:"

    #@296
    move-object/from16 v0, p2

    #@298
    move-object/from16 v1, v22

    #@29a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29d
    .line 2707
    move-object/from16 v0, p0

    #@29f
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@2a1
    move-object/from16 v22, v0

    #@2a3
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a6
    move-result-object v10

    #@2a7
    .local v10, "i$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@2aa
    move-result v22

    #@2ab
    if-eqz v22, :cond_7

    #@2ad
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b0
    move-result-object v8

    #@2b1
    check-cast v8, Ljava/lang/String;

    #@2b3
    .line 2708
    .local v8, "i":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    #@2b5
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@2b8
    const-string/jumbo v24, "    "

    #@2bb
    move-object/from16 v0, v22

    #@2bd
    move-object/from16 v1, v24

    #@2bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v22

    #@2c3
    move-object/from16 v0, v22

    #@2c5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v22

    #@2c9
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cc
    move-result-object v22

    #@2cd
    move-object/from16 v0, p2

    #@2cf
    move-object/from16 v1, v22

    #@2d1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d4
    goto :goto_5

    #@2d5
    .line 2712
    .end local v8    # "i":Ljava/lang/String;
    .end local v10    # "i$iterator":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    #@2d7
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@2d9
    move-object/from16 v22, v0

    #@2db
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    #@2de
    move-result v22

    #@2df
    if-lez v22, :cond_8

    #@2e1
    .line 2713
    const-string/jumbo v22, "  Disabled Providers:"

    #@2e4
    move-object/from16 v0, p2

    #@2e6
    move-object/from16 v1, v22

    #@2e8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2eb
    .line 2714
    move-object/from16 v0, p0

    #@2ed
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@2ef
    move-object/from16 v22, v0

    #@2f1
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f4
    move-result-object v10

    #@2f5
    .restart local v10    # "i$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@2f8
    move-result v22

    #@2f9
    if-eqz v22, :cond_8

    #@2fb
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2fe
    move-result-object v8

    #@2ff
    check-cast v8, Ljava/lang/String;

    #@301
    .line 2715
    .restart local v8    # "i":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    #@303
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@306
    const-string/jumbo v24, "    "

    #@309
    move-object/from16 v0, v22

    #@30b
    move-object/from16 v1, v24

    #@30d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    move-result-object v22

    #@311
    move-object/from16 v0, v22

    #@313
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@316
    move-result-object v22

    #@317
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31a
    move-result-object v22

    #@31b
    move-object/from16 v0, p2

    #@31d
    move-object/from16 v1, v22

    #@31f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@322
    goto :goto_6

    #@323
    .line 2718
    .end local v8    # "i":Ljava/lang/String;
    .end local v10    # "i$iterator":Ljava/util/Iterator;
    :cond_8
    const-string/jumbo v22, "  "

    #@326
    move-object/from16 v0, p2

    #@328
    move-object/from16 v1, v22

    #@32a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@32d
    .line 2719
    move-object/from16 v0, p0

    #@32f
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@331
    move-object/from16 v22, v0

    #@333
    move-object/from16 v0, v22

    #@335
    move-object/from16 v1, p2

    #@337
    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    #@33a
    .line 2720
    move-object/from16 v0, p0

    #@33c
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@33e
    move-object/from16 v22, v0

    #@340
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    #@343
    move-result v22

    #@344
    if-lez v22, :cond_9

    #@346
    .line 2721
    const-string/jumbo v22, "  Mock Providers:"

    #@349
    move-object/from16 v0, p2

    #@34b
    move-object/from16 v1, v22

    #@34d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@350
    .line 2722
    move-object/from16 v0, p0

    #@352
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@354
    move-object/from16 v22, v0

    #@356
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@359
    move-result-object v22

    #@35a
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35d
    move-result-object v10

    #@35e
    .restart local v10    # "i$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@361
    move-result v22

    #@362
    if-eqz v22, :cond_9

    #@364
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@367
    move-result-object v9

    #@368
    check-cast v9, Ljava/util/Map$Entry;

    #@36a
    .line 2723
    .local v9, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@36d
    move-result-object v22

    #@36e
    check-cast v22, Lcom/android/server/location/MockProvider;

    #@370
    const-string/jumbo v24, "      "

    #@373
    move-object/from16 v0, v22

    #@375
    move-object/from16 v1, p2

    #@377
    move-object/from16 v2, v24

    #@379
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@37c
    goto :goto_7

    #@37d
    .line 2727
    .end local v9    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    .end local v10    # "i$iterator":Ljava/util/Iterator;
    :cond_9
    const-string/jumbo v22, "  fudger: "

    #@380
    move-object/from16 v0, p2

    #@382
    move-object/from16 v1, v22

    #@384
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@387
    .line 2728
    move-object/from16 v0, p0

    #@389
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    #@38b
    move-object/from16 v22, v0

    #@38d
    move-object/from16 v0, v22

    #@38f
    move-object/from16 v1, p1

    #@391
    move-object/from16 v2, p2

    #@393
    move-object/from16 v3, p3

    #@395
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@398
    .line 2730
    move-object/from16 v0, p3

    #@39a
    array-length v0, v0

    #@39b
    move/from16 v22, v0

    #@39d
    if-lez v22, :cond_a

    #@39f
    const-string/jumbo v22, "short"

    #@3a2
    const/16 v24, 0x0

    #@3a4
    aget-object v24, p3, v24

    #@3a6
    move-object/from16 v0, v22

    #@3a8
    move-object/from16 v1, v24

    #@3aa
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3ad
    move-result v22

    #@3ae
    if-eqz v22, :cond_a

    #@3b0
    monitor-exit v23

    #@3b1
    .line 2731
    return-void

    #@3b2
    .line 2733
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    #@3b4
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@3b6
    move-object/from16 v22, v0

    #@3b8
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3bb
    move-result-object v15

    #@3bc
    .local v15, "provider$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@3bf
    move-result v22

    #@3c0
    if-eqz v22, :cond_c

    #@3c2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c5
    move-result-object v13

    #@3c6
    check-cast v13, Lcom/android/server/location/LocationProviderInterface;

    #@3c8
    .line 2734
    .local v13, "provider":Lcom/android/server/location/LocationProviderInterface;
    new-instance v22, Ljava/lang/StringBuilder;

    #@3ca
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@3cd
    invoke-interface {v13}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@3d0
    move-result-object v24

    #@3d1
    move-object/from16 v0, v22

    #@3d3
    move-object/from16 v1, v24

    #@3d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d8
    move-result-object v22

    #@3d9
    const-string/jumbo v24, " Internal State"

    #@3dc
    move-object/from16 v0, v22

    #@3de
    move-object/from16 v1, v24

    #@3e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e3
    move-result-object v22

    #@3e4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e7
    move-result-object v22

    #@3e8
    move-object/from16 v0, p2

    #@3ea
    move-object/from16 v1, v22

    #@3ec
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ef
    .line 2735
    instance-of v0, v13, Lcom/android/server/location/LocationProviderProxy;

    #@3f1
    move/from16 v22, v0

    #@3f3
    if-eqz v22, :cond_b

    #@3f5
    .line 2736
    move-object v0, v13

    #@3f6
    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    #@3f8
    move-object/from16 v16, v0

    #@3fa
    .line 2737
    .local v16, "proxy":Lcom/android/server/location/LocationProviderProxy;
    new-instance v22, Ljava/lang/StringBuilder;

    #@3fc
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@3ff
    const-string/jumbo v24, " ("

    #@402
    move-object/from16 v0, v22

    #@404
    move-object/from16 v1, v24

    #@406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@409
    move-result-object v22

    #@40a
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    #@40d
    move-result-object v24

    #@40e
    move-object/from16 v0, v22

    #@410
    move-object/from16 v1, v24

    #@412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@415
    move-result-object v22

    #@416
    const-string/jumbo v24, ")"

    #@419
    move-object/from16 v0, v22

    #@41b
    move-object/from16 v1, v24

    #@41d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@420
    move-result-object v22

    #@421
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@424
    move-result-object v22

    #@425
    move-object/from16 v0, p2

    #@427
    move-object/from16 v1, v22

    #@429
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42c
    .line 2739
    .end local v16    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_b
    const-string/jumbo v22, ":"

    #@42f
    move-object/from16 v0, p2

    #@431
    move-object/from16 v1, v22

    #@433
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@436
    .line 2740
    move-object/from16 v0, p1

    #@438
    move-object/from16 v1, p2

    #@43a
    move-object/from16 v2, p3

    #@43c
    invoke-interface {v13, v0, v1, v2}, Lcom/android/server/location/LocationProviderInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43f
    goto/16 :goto_8

    #@441
    .end local v13    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :cond_c
    monitor-exit v23

    #@442
    .line 2660
    return-void
.end method

.method public geocoderIsPresent()Z
    .locals 1

    #@0
    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1228
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 1229
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    #@5
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v4

    #@b
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 1230
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@10
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "provider$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    #@20
    .line 1231
    .local v2, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1232
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v4, "fused"

    #@27
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_0

    #@2d
    .line 1235
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 1228
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "provider":Lcom/android/server/location/LocationProviderInterface;
    .end local v3    # "provider$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@32
    monitor-exit v5

    #@33
    throw v4

    #@34
    .restart local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "provider$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    #@35
    .line 1239
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    #@37
    if-eqz v4, :cond_2

    #@39
    const-string/jumbo v4, "LocationManagerService"

    #@3c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "getAllProviders()="

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 1240
    :cond_2
    return-object v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1291
    const/4 v1, 0x0

    #@2
    .line 1293
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 1294
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 1295
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 1296
    .local v1, "result":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    #@12
    if-eqz v2, :cond_0

    #@14
    const-string/jumbo v2, "LocationManagerService"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "getBestProvider("

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, ", "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, ")="

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 1297
    :cond_0
    return-object v1

    #@45
    .line 1299
    .local v1, "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v5, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    #@48
    move-result-object v0

    #@49
    .line 1300
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@4c
    move-result v2

    #@4d
    if-nez v2, :cond_3

    #@4f
    .line 1301
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 1302
    .local v1, "result":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    #@55
    if-eqz v2, :cond_2

    #@57
    const-string/jumbo v2, "LocationManagerService"

    #@5a
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "getBestProvider("

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    const-string/jumbo v4, ", "

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    const-string/jumbo v4, ")="

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 1303
    :cond_2
    return-object v1

    #@88
    .line 1306
    .local v1, "result":Ljava/lang/String;
    :cond_3
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    #@8a
    if-eqz v2, :cond_4

    #@8c
    const-string/jumbo v2, "LocationManagerService"

    #@8f
    new-instance v3, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v4, "getBestProvider("

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    const-string/jumbo v4, ", "

    #@a2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    const-string/jumbo v4, ")="

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    .line 1307
    :cond_4
    return-object v5
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 2444
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2445
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@6
    move-wide v2, p1

    #@7
    move-wide v4, p3

    #@8
    move v6, p5

    #@9
    move-object v7, p6

    #@a
    move-object/from16 v8, p7

    #@c
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 2448
    :cond_0
    const/4 v0, 0x0

    #@12
    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 2458
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2459
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@6
    move-object v1, p1

    #@7
    move-wide/from16 v2, p2

    #@9
    move-wide/from16 v4, p4

    #@b
    move-wide/from16 v6, p6

    #@d
    move-wide/from16 v8, p8

    #@f
    move/from16 v10, p10

    #@11
    move-object/from16 v11, p11

    #@13
    move-object/from16 v12, p12

    #@15
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 2463
    :cond_0
    const/4 v0, 0x0

    #@1b
    return-object v0
.end method

.method public getGnssYearOfHardware()I
    .locals 1

    #@0
    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 995
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    #@6
    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 997
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .locals 12
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1780
    sget-boolean v9, Lcom/android/server/LocationManagerService;->D:Z

    #@2
    if-eqz v9, :cond_0

    #@4
    const-string/jumbo v9, "LocationManagerService"

    #@7
    new-instance v10, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v11, "getLastLocation: "

    #@f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v10

    #@13
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v10

    #@17
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v10

    #@1b
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1781
    :cond_0
    if-nez p1, :cond_1

    #@20
    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    #@22
    .line 1782
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@25
    move-result v0

    #@26
    .line 1783
    .local v0, "allowedResolutionLevel":I
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@29
    .line 1785
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    .line 1784
    invoke-direct {p0, v0, v9}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@30
    .line 1788
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@33
    move-result v6

    #@34
    .line 1789
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@37
    move-result v8

    #@38
    .line 1790
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3b
    move-result-wide v2

    #@3c
    .line 1792
    .local v2, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@3e
    invoke-virtual {v9, p2}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    #@41
    move-result v9

    #@42
    if-eqz v9, :cond_3

    #@44
    .line 1793
    sget-boolean v9, Lcom/android/server/LocationManagerService;->D:Z

    #@46
    if-eqz v9, :cond_2

    #@48
    const-string/jumbo v9, "LocationManagerService"

    #@4b
    new-instance v10, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v11, "not returning last loc for blacklisted app: "

    #@53
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v10

    #@5b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v10

    #@5f
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@62
    .line 1795
    :cond_2
    const/4 v9, 0x0

    #@63
    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@66
    .line 1795
    return-object v9

    #@67
    .line 1798
    :cond_3
    :try_start_1
    invoke-virtual {p0, v6, v8, p2, v0}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    #@6a
    move-result v9

    #@6b
    if-nez v9, :cond_5

    #@6d
    .line 1799
    sget-boolean v9, Lcom/android/server/LocationManagerService;->D:Z

    #@6f
    if-eqz v9, :cond_4

    #@71
    const-string/jumbo v9, "LocationManagerService"

    #@74
    new-instance v10, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v11, "not returning last loc for no op app: "

    #@7c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v10

    #@80
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@8b
    .line 1801
    :cond_4
    const/4 v9, 0x0

    #@8c
    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8f
    .line 1801
    return-object v9

    #@90
    .line 1804
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@92
    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@93
    .line 1807
    :try_start_3
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    .line 1808
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_6

    #@99
    const-string/jumbo v4, "fused"

    #@9c
    .line 1809
    :cond_6
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@9e
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a1
    move-result-object v7

    #@a2
    check-cast v7, Lcom/android/server/location/LocationProviderInterface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a4
    .line 1810
    .local v7, "provider":Lcom/android/server/location/LocationProviderInterface;
    if-nez v7, :cond_7

    #@a6
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a7
    const/4 v9, 0x0

    #@a8
    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ab
    .line 1810
    return-object v9

    #@ac
    .line 1812
    :cond_7
    :try_start_5
    invoke-direct {p0, v4, v8}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@af
    move-result v9

    #@b0
    if-nez v9, :cond_8

    #@b2
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b3
    const/4 v9, 0x0

    #@b4
    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b7
    .line 1812
    return-object v9

    #@b8
    .line 1815
    :cond_8
    const/4 v9, 0x2

    #@b9
    if-ge v0, v9, :cond_9

    #@bb
    .line 1818
    :try_start_7
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@bd
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    move-result-object v1

    #@c1
    check-cast v1, Landroid/location/Location;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@c3
    .line 1822
    .local v1, "location":Landroid/location/Location;
    :goto_0
    if-nez v1, :cond_a

    #@c5
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@c6
    .line 1823
    const/4 v9, 0x0

    #@c7
    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ca
    .line 1823
    return-object v9

    #@cb
    .line 1820
    .end local v1    # "location":Landroid/location/Location;
    :cond_9
    :try_start_9
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@cd
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d0
    move-result-object v1

    #@d1
    check-cast v1, Landroid/location/Location;

    #@d3
    .restart local v1    # "location":Landroid/location/Location;
    goto :goto_0

    #@d4
    .line 1825
    :cond_a
    const/4 v9, 0x2

    #@d5
    if-ge v0, v9, :cond_b

    #@d7
    .line 1826
    const-string/jumbo v9, "noGPSLocation"

    #@da
    invoke-virtual {v1, v9}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    #@dd
    move-result-object v5

    #@de
    .line 1827
    .local v5, "noGPSLocation":Landroid/location/Location;
    if-eqz v5, :cond_c

    #@e0
    .line 1828
    new-instance v9, Landroid/location/Location;

    #@e2
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    #@e4
    invoke-virtual {v11, v5}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    #@e7
    move-result-object v11

    #@e8
    invoke-direct {v9, v11}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@eb
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@ec
    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ef
    .line 1828
    return-object v9

    #@f0
    .line 1831
    .end local v5    # "noGPSLocation":Landroid/location/Location;
    :cond_b
    :try_start_b
    new-instance v9, Landroid/location/Location;

    #@f2
    invoke-direct {v9, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@f5
    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@f6
    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f9
    .line 1831
    return-object v9

    #@fa
    .restart local v5    # "noGPSLocation":Landroid/location/Location;
    :cond_c
    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@fb
    .line 1834
    const/4 v9, 0x0

    #@fc
    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ff
    .line 1834
    return-object v9

    #@100
    .line 1804
    .end local v1    # "location":Landroid/location/Location;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "noGPSLocation":Landroid/location/Location;
    .end local v7    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v9

    #@101
    :try_start_e
    monitor-exit v10

    #@102
    throw v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@103
    .line 1835
    :catchall_1
    move-exception v9

    #@104
    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@107
    .line 1835
    throw v9
.end method

.method public getNetworkProviderPackage()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2061
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 2062
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@6
    const-string/jumbo v3, "network"

    #@9
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    if-nez v1, :cond_0

    #@f
    monitor-exit v2

    #@10
    .line 2063
    return-object v4

    #@11
    .line 2065
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@13
    const-string/jumbo v3, "network"

    #@16
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v2

    #@1d
    .line 2068
    instance-of v1, v0, Lcom/android/server/location/LocationProviderProxy;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 2069
    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    #@23
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 2061
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1

    #@2b
    .line 2071
    .restart local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    return-object v4
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2037
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 2038
    return-object v3

    #@a
    .line 2041
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@d
    move-result v1

    #@e
    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@11
    .line 2045
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@13
    monitor-enter v2

    #@14
    .line 2046
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@16
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v2

    #@1d
    .line 2049
    if-nez v0, :cond_1

    #@1f
    return-object v3

    #@20
    .line 2045
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1

    #@23
    .line 2050
    .restart local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@26
    move-result-object v1

    #@27
    return-object v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 11
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@3
    move-result v0

    #@4
    .line 1252
    .local v0, "allowedResolutionLevel":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v7

    #@8
    .line 1253
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 1255
    .local v2, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 1256
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    #@11
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v8

    #@17
    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    .line 1257
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@1c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v6

    #@20
    .local v6, "provider$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_3

    #@26
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    check-cast v5, Lcom/android/server/location/LocationProviderInterface;

    #@2c
    .line 1258
    .local v5, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v5}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 1259
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v8, "fused"

    #@33
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v8

    #@37
    if-nez v8, :cond_0

    #@39
    .line 1262
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    #@3c
    move-result v8

    #@3d
    if-lt v0, v8, :cond_0

    #@3f
    .line 1263
    if-eqz p2, :cond_1

    #@41
    invoke-direct {p0, v1, v7}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    #@44
    move-result v8

    #@45
    if-eqz v8, :cond_0

    #@47
    .line 1266
    :cond_1
    if-eqz p1, :cond_2

    #@49
    .line 1267
    invoke-interface {v5}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@4c
    move-result-object v8

    #@4d
    .line 1266
    invoke-static {v1, v8, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    #@50
    move-result v8

    #@51
    if-eqz v8, :cond_0

    #@53
    .line 1270
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    goto :goto_0

    #@57
    .line 1255
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "provider":Lcom/android/server/location/LocationProviderInterface;
    .end local v6    # "provider$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@58
    :try_start_2
    monitor-exit v9

    #@59
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5a
    .line 1274
    :catchall_1
    move-exception v8

    #@5b
    .line 1275
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5e
    .line 1274
    throw v8

    #@5f
    .restart local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "provider$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@60
    .line 1275
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 1278
    sget-boolean v8, Lcom/android/server/LocationManagerService;->D:Z

    #@65
    if-eqz v8, :cond_4

    #@67
    const-string/jumbo v8, "LocationManagerService"

    #@6a
    new-instance v9, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v10, "getProviders()="

    #@72
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v9

    #@7e
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 1279
    :cond_4
    return-object v4
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2078
    const-string/jumbo v4, "fused"

    #@4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    return v6

    #@b
    .line 2080
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@e
    move-result v3

    #@f
    .line 2081
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 2083
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@16
    .line 2084
    :try_start_1
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@18
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/android/server/location/LocationProviderInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 2085
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v2, :cond_1

    #@20
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    .line 2090
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 2085
    return v6

    #@25
    .line 2087
    :cond_1
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    move-result v4

    #@29
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2a
    .line 2090
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 2087
    return v4

    #@2e
    .line 2083
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v4

    #@2f
    :try_start_5
    monitor-exit v5

    #@30
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@31
    .line 2089
    :catchall_1
    move-exception v4

    #@32
    .line 2090
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 2089
    throw v4
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/location/ILocationListener;

    #@0
    .prologue
    .line 975
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 976
    :try_start_0
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 977
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@9
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    #@f
    .line 978
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v1, :cond_0

    #@11
    .line 979
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 981
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 982
    .local v2, "identity":J
    invoke-static {v1}, Lcom/android/server/LocationManagerService$Receiver;->-wrap0(Lcom/android/server/LocationManagerService$Receiver;)V

    #@19
    .line 983
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1d
    .end local v2    # "identity":J
    :cond_0
    monitor-exit v5

    #@1e
    .line 970
    return-void

    #@1f
    .line 979
    :catchall_0
    move-exception v4

    #@20
    :try_start_3
    monitor-exit v1

    #@21
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    .line 975
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_1
    move-exception v4

    #@23
    monitor-exit v5

    #@24
    throw v4
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Landroid/location/Criteria;

    #@0
    .prologue
    .line 1322
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    #@8
    .line 1323
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    #@a
    .line 1324
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "provider="

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 1328
    :cond_0
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@2b
    move-result-object v3

    #@2c
    .line 1327
    invoke-static {v2, v3, p2}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    #@2f
    move-result v1

    #@30
    .line 1329
    .local v1, "result":Z
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    #@32
    if-eqz v2, :cond_1

    #@34
    const-string/jumbo v2, "LocationManagerService"

    #@37
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "providerMeetsCriteria("

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    const-string/jumbo v4, ", "

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, ")="

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 1330
    :cond_1
    return v1
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z
    .locals 9
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1890
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@4
    move-result v0

    #@5
    .line 1892
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    #@8
    .line 1891
    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@b
    .line 1894
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e
    move-result v4

    #@f
    .line 1895
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v5

    #@13
    .line 1896
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v2

    #@17
    .line 1898
    .local v2, "ident":J
    :try_start_0
    invoke-virtual {p0, v4, v5, p2, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    .line 1902
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1899
    return v8

    #@21
    .line 1902
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 1905
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    #@26
    if-nez v6, :cond_1

    #@28
    .line 1906
    return v8

    #@29
    .line 1901
    :catchall_0
    move-exception v6

    #@2a
    .line 1902
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1901
    throw v6

    #@2e
    .line 1910
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    #@30
    invoke-interface {v6, p1}, Landroid/location/IGnssStatusProvider;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@33
    .line 1915
    const/4 v6, 0x1

    #@34
    return v6

    #@35
    .line 1911
    :catch_0
    move-exception v1

    #@36
    .line 1912
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "LocationManagerService"

    #@39
    const-string/jumbo v7, "mGpsStatusProvider.registerGnssStatusCallback failed"

    #@3c
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 1913
    return v8
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1873
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 1874
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@6
    .line 1876
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    const-string/jumbo v2, "LocationManagerService"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "removeGeofence: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, " "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1879
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@32
    move-result-wide v0

    #@33
    .line 1881
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    #@35
    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 1883
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1872
    return-void

    #@3c
    .line 1882
    :catchall_0
    move-exception v2

    #@3d
    .line 1883
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 1882
    throw v2
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;

    #@0
    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1957
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V

    #@9
    .line 1955
    :cond_0
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;

    #@0
    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1989
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V

    #@9
    .line 1987
    :cond_0
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2513
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2514
    return-void

    #@7
    .line 2517
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v5

    #@a
    .line 2521
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 2522
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2523
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 2525
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@15
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/server/location/MockProvider;

    #@1b
    .line 2526
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    #@1d
    .line 2527
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "Provider \""

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    const-string/jumbo v7, "\" unknown"

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 2517
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v4

    #@3f
    monitor-exit v5

    #@40
    throw v4

    #@41
    .line 2529
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@44
    move-result-wide v0

    #@45
    .line 2530
    .local v0, "identity":J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@47
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    #@4d
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@50
    .line 2533
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@52
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v3

    #@56
    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    #@58
    .line 2534
    .local v3, "realProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v3, :cond_2

    #@5a
    .line 2535
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@5d
    .line 2537
    :cond_2
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@5f
    const/4 v6, 0x0

    #@60
    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 2538
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@65
    const/4 v6, 0x0

    #@66
    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 2539
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    #@6c
    .line 2540
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    monitor-exit v5

    #@70
    .line 2512
    return-void
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1710
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@3
    .line 1712
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v3

    #@7
    .line 1713
    .local v3, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v4

    #@b
    .line 1715
    .local v4, "uid":I
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v11

    #@e
    .line 1716
    const/4 v6, 0x0

    #@f
    .line 1717
    .local v6, "workSource":Landroid/os/WorkSource;
    const/4 v7, 0x0

    #@10
    .local v7, "hideFromAppOps":Z
    move-object v0, p0

    #@11
    move-object v1, p1

    #@12
    move-object v2, p2

    #@13
    move-object v5, p3

    #@14
    .line 1718
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    #@17
    move-result-object v10

    #@18
    .line 1722
    .local v10, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1b
    move-result-wide v8

    #@1c
    .line 1724
    .local v8, "identity":J
    :try_start_1
    invoke-direct {p0, v10}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .line 1726
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v11

    #@23
    .line 1709
    return-void

    #@24
    .line 1725
    :catchall_0
    move-exception v0

    #@25
    .line 1726
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 1725
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    .line 1715
    .end local v8    # "identity":J
    .end local v10    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_1
    move-exception v0

    #@2a
    monitor-exit v11

    #@2b
    throw v0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2155
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkCallerIsProvider()V

    #@4
    .line 2157
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 2158
    const-string/jumbo v1, "LocationManagerService"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Dropping incomplete location: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 2159
    return-void

    #@25
    .line 2162
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@27
    invoke-virtual {v2, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    #@2a
    .line 2163
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@2c
    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v0

    #@30
    .line 2164
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_1

    #@32
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@34
    .line 2165
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@36
    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@39
    .line 2154
    return-void

    #@3a
    .line 2164
    :cond_1
    const/4 v1, 0x0

    #@3b
    goto :goto_0
.end method

.method reportLocationAccessNoThrow(IILjava/lang/String;I)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1191
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    #@4
    move-result v0

    #@5
    .line 1192
    .local v0, "op":I
    if-ltz v0, :cond_0

    #@7
    .line 1193
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1194
    return v2

    #@10
    .line 1198
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    #@13
    move-result v1

    #@14
    if-ge v1, p4, :cond_1

    #@16
    .line 1199
    return v2

    #@17
    .line 1202
    :cond_1
    const/4 v1, 0x1

    #@18
    return v1
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 10
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1843
    if-nez p1, :cond_0

    #@2
    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    #@4
    .line 1844
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@7
    move-result v4

    #@8
    .line 1845
    .local v4, "allowedResolutionLevel":I
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    #@b
    .line 1846
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@e
    .line 1847
    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@11
    .line 1849
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1848
    invoke-direct {p0, v4, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@18
    .line 1850
    invoke-direct {p0, p1, v4}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    #@1b
    move-result-object v1

    #@1c
    .line 1852
    .local v1, "sanitizedRequest":Landroid/location/LocationRequest;
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    #@1e
    if-eqz v0, :cond_1

    #@20
    const-string/jumbo v0, "LocationManagerService"

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "requestGeofence: "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, " "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, " "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1855
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@53
    move-result v5

    #@54
    .line 1857
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_2

    #@5a
    .line 1859
    const-string/jumbo v0, "LocationManagerService"

    #@5d
    const-string/jumbo v2, "proximity alerts are currently available only to the primary user"

    #@60
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 1860
    return-void

    #@64
    .line 1862
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@67
    move-result-wide v8

    #@68
    .line 1864
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    #@6a
    move-object v2, p2

    #@6b
    move-object v3, p3

    #@6c
    move-object v6, p4

    #@6d
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    .line 1867
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@73
    .line 1842
    return-void

    #@74
    .line 1866
    :catchall_0
    move-exception v0

    #@75
    .line 1867
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@78
    .line 1866
    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 15
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1638
    if-nez p1, :cond_0

    #@2
    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    #@4
    .line 1639
    :cond_0
    move-object/from16 v0, p4

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@9
    .line 1640
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@c
    move-result v10

    #@d
    .line 1642
    .local v10, "allowedResolutionLevel":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 1641
    invoke-direct {p0, v10, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@14
    .line 1643
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    #@17
    move-result-object v8

    #@18
    .line 1644
    .local v8, "workSource":Landroid/os/WorkSource;
    if-eqz v8, :cond_1

    #@1a
    invoke-virtual {v8}, Landroid/os/WorkSource;->size()I

    #@1d
    move-result v2

    #@1e
    if-lez v2, :cond_1

    #@20
    .line 1645
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkDeviceStatsAllowed()V

    #@23
    .line 1647
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    #@26
    move-result v9

    #@27
    .line 1648
    .local v9, "hideFromAppOps":Z
    if-eqz v9, :cond_2

    #@29
    .line 1649
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkUpdateAppOpsAllowed()V

    #@2c
    .line 1651
    :cond_2
    move-object/from16 v0, p1

    #@2e
    invoke-direct {p0, v0, v10}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    #@31
    move-result-object v11

    #@32
    .line 1653
    .local v11, "sanitizedRequest":Landroid/location/LocationRequest;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@35
    move-result v5

    #@36
    .line 1654
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@39
    move-result v6

    #@3a
    .line 1656
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3d
    move-result-wide v12

    #@3e
    .line 1660
    .local v12, "identity":J
    :try_start_0
    move-object/from16 v0, p4

    #@40
    invoke-virtual {p0, v5, v6, v0, v10}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    #@43
    .line 1662
    iget-object v14, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@45
    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@46
    move-object v2, p0

    #@47
    move-object/from16 v3, p2

    #@49
    move-object/from16 v4, p3

    #@4b
    move-object/from16 v7, p4

    #@4d
    .line 1663
    :try_start_1
    invoke-direct/range {v2 .. v9}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    #@50
    move-result-object v4

    #@51
    .local v4, "recevier":Lcom/android/server/LocationManagerService$Receiver;
    move-object v2, p0

    #@52
    move-object v3, v11

    #@53
    move-object/from16 v7, p4

    #@55
    .line 1665
    invoke-direct/range {v2 .. v7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@59
    .line 1668
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5c
    .line 1637
    return-void

    #@5d
    .line 1662
    .end local v4    # "recevier":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_0
    move-exception v2

    #@5e
    :try_start_3
    monitor-exit v14

    #@5f
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@60
    .line 1667
    :catchall_1
    move-exception v2

    #@61
    .line 1668
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@64
    .line 1667
    throw v2
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1995
    if-nez p1, :cond_0

    #@3
    .line 1997
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 1999
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@c
    move-result v1

    #@d
    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@10
    .line 2003
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    #@15
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 2005
    new-instance v1, Ljava/lang/SecurityException;

    #@1d
    const-string/jumbo v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    #@20
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 2008
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@26
    monitor-enter v2

    #@27
    .line 2009
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@29
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 2010
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_2

    #@31
    monitor-exit v2

    #@32
    return v3

    #@33
    .line 2012
    :cond_2
    :try_start_1
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    move-result v1

    #@37
    monitor-exit v2

    #@38
    return v1

    #@39
    .line 2008
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit v2

    #@3b
    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    #@0
    .prologue
    .line 2018
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@7
    move-result v2

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 2019
    new-instance v1, Ljava/lang/SecurityException;

    #@c
    .line 2020
    const-string/jumbo v2, "calling sendNiResponse from outside of the system is not allowed"

    #@f
    .line 2019
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 2023
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@15
    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 2024
    :catch_0
    move-exception v0

    #@1b
    .line 2025
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManagerService"

    #@1e
    const-string/jumbo v2, "RemoteException in LocationManagerService.sendNiResponse"

    #@21
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 2026
    const/4 v1, 0x0

    #@25
    return v1
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2579
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2580
    return-void

    #@7
    .line 2583
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 2584
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/location/MockProvider;

    #@12
    .line 2585
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    #@14
    .line 2586
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "Provider \""

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, "\" unknown"

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 2583
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3

    #@38
    .line 2588
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3b
    move-result-wide v0

    #@3c
    .line 2589
    .local v0, "identity":J
    if-eqz p2, :cond_2

    #@3e
    .line 2590
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    #@41
    .line 2591
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@43
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@46
    .line 2592
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@48
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@4b
    .line 2598
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    #@4e
    .line 2599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    monitor-exit v4

    #@52
    .line 2578
    return-void

    #@53
    .line 2594
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    #@56
    .line 2595
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@58
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5b
    .line 2596
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@5d
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2546
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2547
    return-void

    #@7
    .line 2550
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 2551
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/location/MockProvider;

    #@12
    .line 2552
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    #@14
    .line 2553
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "Provider \""

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, "\" unknown"

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 2550
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3

    #@38
    .line 2556
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3b
    move-result-wide v0

    #@3c
    .line 2557
    .local v0, "identity":J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    #@3f
    .line 2558
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    monitor-exit v4

    #@43
    .line 2545
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J
    .param p6, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2625
    invoke-direct {p0, p6}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2626
    return-void

    #@7
    .line 2629
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 2630
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/location/MockProvider;

    #@12
    .line 2631
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_1

    #@14
    .line 2632
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Provider \""

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "\" unknown"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 2629
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 2634
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 2624
    return-void
.end method

.method public systemRunning()V
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 244
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 245
    :try_start_0
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v0, "LocationManagerService"

    #@c
    const-string/jumbo v2, "systemRunning()"

    #@f
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@1a
    .line 251
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@1c
    const-string/jumbo v2, "power"

    #@1f
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/os/PowerManager;

    #@25
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@27
    .line 254
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@29
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v0, p0, v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V

    #@34
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@36
    .line 257
    new-instance v0, Lcom/android/server/location/LocationFudger;

    #@38
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@3a
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@3c
    invoke-direct {v0, v2, v5}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@3f
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    #@41
    .line 258
    new-instance v0, Lcom/android/server/location/LocationBlacklist;

    #@43
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@45
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@47
    invoke-direct {v0, v2, v5}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@4a
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@4c
    .line 259
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@4e
    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    #@51
    .line 260
    new-instance v0, Lcom/android/server/location/GeofenceManager;

    #@53
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@55
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@57
    invoke-direct {v0, v2, v5}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    #@5a
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    #@5c
    .line 264
    new-instance v6, Lcom/android/server/LocationManagerService$3;

    #@5e
    invoke-direct {v6, p0}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;)V

    #@61
    .line 274
    .local v6, "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@63
    const/4 v2, 0x0

    #@64
    const/4 v5, 0x0

    #@65
    invoke-virtual {v0, v2, v5, v6}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    #@68
    .line 277
    new-instance v7, Lcom/android/server/LocationManagerService$4;

    #@6a
    invoke-direct {v7, p0}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;)V

    #@6d
    .line 285
    .local v7, "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6f
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    #@72
    .line 287
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@74
    const-string/jumbo v2, "user"

    #@77
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Landroid/os/UserManager;

    #@7d
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    #@7f
    .line 288
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@81
    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    #@84
    .line 291
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    #@87
    .line 292
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8a
    monitor-exit v1

    #@8b
    .line 296
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@8d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@90
    move-result-object v0

    #@91
    .line 297
    const-string/jumbo v1, "location_providers_allowed"

    #@94
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@97
    move-result-object v1

    #@98
    .line 298
    new-instance v2, Lcom/android/server/LocationManagerService$5;

    #@9a
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@9c
    invoke-direct {v2, p0, v5}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    #@9f
    .line 305
    const/4 v5, -0x1

    #@a0
    .line 296
    invoke-virtual {v0, v1, v8, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@a3
    .line 306
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@a5
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@a7
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@a9
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@b0
    .line 309
    new-instance v3, Landroid/content/IntentFilter;

    #@b2
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@b5
    .line 310
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@b8
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@bb
    .line 311
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@be
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c1
    .line 312
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@c4
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c7
    .line 313
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    #@ca
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@cd
    .line 315
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@cf
    new-instance v1, Lcom/android/server/LocationManagerService$6;

    #@d1
    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;)V

    #@d4
    .line 332
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@d6
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@d8
    .line 315
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@db
    .line 243
    return-void

    #@dc
    .line 244
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v6    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    .end local v7    # "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    :catchall_0
    move-exception v0

    #@dd
    monitor-exit v1

    #@de
    throw v0
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;

    #@0
    .prologue
    .line 1920
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1922
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    #@5
    invoke-interface {v1, p1}, Landroid/location/IGnssStatusProvider;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :goto_0
    monitor-exit v2

    #@9
    .line 1919
    return-void

    #@a
    .line 1923
    :catch_0
    move-exception v0

    #@b
    .line 1924
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "LocationManagerService"

    #@e
    const-string/jumbo v3, "mGpsStatusProvider.unregisterGnssStatusCallback failed"

    #@11
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 1920
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method updateUserProfiles(I)V
    .locals 3
    .param p1, "currentUserId"    # I

    #@0
    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    #@5
    move-result-object v0

    #@6
    .line 368
    .local v0, "profileIds":[I
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 369
    :try_start_0
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 366
    return-void

    #@d
    .line 368
    :catchall_0
    move-exception v2

    #@e
    monitor-exit v1

    #@f
    throw v2
.end method
