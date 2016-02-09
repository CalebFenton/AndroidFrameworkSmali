.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$Receiver;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$1;
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

.field private mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

.field private mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

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

.method static synthetic -wrap6(Lcom/android/server/LocationManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->switchUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/LocationManagerService;)V
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
    .line 218
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    #@4
    .line 151
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@b
    .line 171
    new-instance v1, Ljava/util/HashSet;

    #@d
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@12
    .line 174
    new-instance v1, Ljava/util/HashSet;

    #@14
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@19
    .line 178
    new-instance v1, Ljava/util/HashMap;

    #@1b
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1e
    .line 177
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@20
    .line 181
    new-instance v1, Ljava/util/HashMap;

    #@22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@27
    .line 185
    new-instance v1, Ljava/util/ArrayList;

    #@29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 184
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@2e
    .line 189
    new-instance v1, Ljava/util/HashMap;

    #@30
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@33
    .line 188
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@35
    .line 193
    new-instance v1, Ljava/util/HashMap;

    #@37
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@3a
    .line 192
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3c
    .line 197
    new-instance v1, Ljava/util/HashMap;

    #@3e
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@41
    .line 196
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    #@43
    .line 199
    new-instance v1, Lcom/android/server/location/LocationRequestStatistics;

    #@45
    invoke-direct {v1}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    #@48
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    #@4a
    .line 202
    new-instance v1, Ljava/util/HashMap;

    #@4c
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@4f
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@51
    .line 207
    new-instance v1, Ljava/util/HashMap;

    #@53
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@56
    .line 206
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@58
    .line 211
    new-instance v1, Ljava/util/ArrayList;

    #@5a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5d
    .line 210
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    #@5f
    .line 214
    iput v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@61
    .line 215
    const/4 v1, 0x1

    #@62
    new-array v1, v1, [I

    #@64
    aput v2, v1, v2

    #@66
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    #@68
    .line 2358
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    #@6a
    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    #@6d
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@6f
    .line 219
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@71
    .line 220
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
    .line 225
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    #@7e
    .line 224
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@81
    move-result-object v0

    #@82
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    #@84
    .line 227
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/LocationManagerService$2;

    #@86
    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    #@89
    .line 226
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    #@8c
    .line 235
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
    .line 217
    :cond_0
    return-void
.end method

.method private addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/location/LocationProviderInterface;

    #@0
    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 961
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@7
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 959
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
    .line 2451
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 2452
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
    .line 2454
    :cond_0
    new-instance v0, Lcom/android/server/location/MockProvider;

    #@2c
    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V

    #@2f
    .line 2455
    .local v0, "provider":Lcom/android/server/location/MockProvider;
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@32
    .line 2456
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@34
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 2457
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@39
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 2458
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@3e
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 2450
    return-void
.end method

.method private applyAllProviderRequirementsLocked()V
    .locals 3

    #@0
    .prologue
    .line 1719
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
    .line 1721
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
    .line 1725
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 1718
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .locals 14
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1362
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@2
    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    #@8
    .line 1363
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_0

    #@a
    return-void

    #@b
    .line 1365
    :cond_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    #@d
    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Ljava/util/ArrayList;

    #@13
    .line 1366
    .local v5, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v8, Landroid/os/WorkSource;

    #@15
    invoke-direct {v8}, Landroid/os/WorkSource;-><init>()V

    #@18
    .line 1367
    .local v8, "worksource":Landroid/os/WorkSource;
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    #@1a
    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    #@1d
    .line 1369
    .local v2, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    if-eqz v5, :cond_5

    #@1f
    .line 1370
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
    .line 1371
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
    .line 1373
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@3f
    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    #@41
    .line 1374
    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@43
    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@45
    .line 1375
    iget-object v11, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@47
    iget-object v11, v11, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@49
    .line 1376
    iget-object v12, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@4b
    iget v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    #@4d
    .line 1372
    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    #@50
    move-result v9

    #@51
    if-eqz v9, :cond_1

    #@53
    .line 1377
    iget-object v0, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@55
    .line 1378
    .local v0, "locationRequest":Landroid/location/LocationRequest;
    iget-object v9, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@57
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    .line 1379
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
    .line 1380
    const/4 v9, 0x1

    #@65
    iput-boolean v9, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@67
    .line 1381
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    #@6a
    move-result-wide v10

    #@6b
    iput-wide v10, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@6d
    goto :goto_0

    #@6e
    .line 1387
    .end local v0    # "locationRequest":Landroid/location/LocationRequest;
    .end local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_2
    iget-boolean v9, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@70
    if-eqz v9, :cond_5

    #@72
    .line 1393
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
    .line 1394
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
    .line 1395
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
    .line 1396
    iget-object v0, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@9e
    .line 1397
    .restart local v0    # "locationRequest":Landroid/location/LocationRequest;
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    #@a1
    move-result-wide v10

    #@a2
    cmp-long v9, v10, v6

    #@a4
    if-gtz v9, :cond_3

    #@a6
    .line 1398
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@a8
    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    #@aa
    if-eqz v9, :cond_4

    #@ac
    .line 1399
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@ae
    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    #@b0
    invoke-virtual {v9}, Landroid/os/WorkSource;->size()I

    #@b3
    move-result v9

    #@b4
    if-lez v9, :cond_4

    #@b6
    .line 1400
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@b8
    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    #@ba
    const/4 v10, 0x0

    #@bb
    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@be
    move-result-object v9

    #@bf
    if-eqz v9, :cond_4

    #@c1
    .line 1403
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@c3
    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    #@c5
    invoke-virtual {v8, v9}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    #@c8
    goto :goto_1

    #@c9
    .line 1407
    :cond_4
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@cb
    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@cd
    .line 1408
    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@cf
    iget-object v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@d1
    .line 1406
    invoke-virtual {v8, v9, v10}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    #@d4
    goto :goto_1

    #@d5
    .line 1416
    .end local v0    # "locationRequest":Landroid/location/LocationRequest;
    .end local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v4    # "record$iterator":Ljava/util/Iterator;
    .end local v6    # "thresholdInterval":J
    :cond_5
    sget-boolean v9, Lcom/android/server/LocationManagerService;->D:Z

    #@d7
    if-eqz v9, :cond_6

    #@d9
    const-string/jumbo v9, "LocationManagerService"

    #@dc
    new-instance v10, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v11, "provider request: "

    #@e4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v10

    #@e8
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v10

    #@ec
    const-string/jumbo v11, " "

    #@ef
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v10

    #@f3
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v10

    #@f7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v10

    #@fb
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    .line 1417
    :cond_6
    invoke-interface {v1, v2, v8}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    #@101
    .line 1361
    return-void
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2419
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
    .line 2064
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
    .line 2066
    return-void

    #@c
    .line 2076
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
    .line 2077
    return-void

    #@17
    .line 2080
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
    .line 1127
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2
    .line 1128
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@5
    const/4 v2, 0x0

    #@6
    .line 1127
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1126
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
    .line 1574
    if-nez p2, :cond_0

    #@2
    if-nez p1, :cond_0

    #@4
    .line 1575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "need either listener or intent"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1576
    :cond_0
    if-eqz p2, :cond_1

    #@f
    if-eqz p1, :cond_1

    #@11
    .line 1577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "cannot register both listener and intent"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 1578
    :cond_1
    if-eqz p2, :cond_2

    #@1c
    .line 1579
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
    .line 1580
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
    .line 1582
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
    .line 1552
    if-nez p1, :cond_0

    #@2
    .line 1553
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
    .line 1555
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v2

    #@20
    .line 1556
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@22
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 1557
    .local v0, "packages":[Ljava/lang/String;
    if-nez v0, :cond_1

    #@28
    .line 1558
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
    .line 1560
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
    .line 1561
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_2

    #@4e
    return-void

    #@4f
    .line 1560
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_0

    #@52
    .line 1563
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
    .line 1567
    if-nez p1, :cond_0

    #@2
    .line 1568
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
    .line 1566
    :cond_0
    return-void
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .locals 2
    .param p1, "allowedResolutionLevel"    # I

    #@0
    .prologue
    .line 1058
    const/4 v0, 0x2

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 1059
    new-instance v0, Ljava/lang/SecurityException;

    #@5
    const-string/jumbo v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1057
    :cond_0
    return-void
.end method

.method private checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V
    .locals 4
    .param p1, "allowedResolutionLevel"    # I
    .param p2, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1106
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 1107
    .local v0, "requiredResolutionLevel":I
    if-ge p1, v0, :cond_0

    #@6
    .line 1108
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1116
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
    .line 1117
    const-string/jumbo v3, "\" location provider."

    #@1e
    .line 1116
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
    .line 1110
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
    .line 1111
    const-string/jumbo v3, "requires ACCESS_FINE_LOCATION permission."

    #@46
    .line 1110
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
    .line 1113
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
    .line 1114
    const-string/jumbo v3, "requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    #@6e
    .line 1113
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
    .line 1105
    :cond_0
    return-void

    #@7b
    .line 1108
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
    .line 1132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2
    .line 1133
    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    #@5
    const/4 v2, 0x0

    #@6
    .line 1132
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1131
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
    .line 1526
    new-instance v0, Landroid/location/LocationRequest;

    #@5
    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    #@8
    .line 1527
    .local v0, "sanitizedRequest":Landroid/location/LocationRequest;
    const/4 v1, 0x2

    #@9
    if-ge p2, v1, :cond_1

    #@b
    .line 1528
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    #@e
    move-result v1

    #@f
    sparse-switch v1, :sswitch_data_0

    #@12
    .line 1537
    :goto_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    #@15
    move-result-wide v2

    #@16
    cmp-long v1, v2, v4

    #@18
    if-gez v1, :cond_0

    #@1a
    .line 1538
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    #@1d
    .line 1540
    :cond_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    #@20
    move-result-wide v2

    #@21
    cmp-long v1, v2, v4

    #@23
    if-gez v1, :cond_1

    #@25
    .line 1541
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    #@28
    .line 1545
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
    .line 1546
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    #@37
    move-result-wide v2

    #@38
    invoke-virtual {p1, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    #@3b
    .line 1548
    :cond_2
    return-object v0

    #@3c
    .line 1530
    :sswitch_0
    const/16 v1, 0x66

    #@3e
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    #@41
    goto :goto_0

    #@42
    .line 1533
    :sswitch_1
    const/16 v1, 0xc9

    #@44
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    #@47
    goto :goto_0

    #@48
    .line 1528
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
    .line 2088
    if-nez p2, :cond_0

    #@3
    .line 2089
    return v3

    #@4
    .line 2091
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 2092
    .local v1, "packageNames":[Ljava/lang/String;
    if-nez v1, :cond_1

    #@c
    .line 2093
    return v3

    #@d
    .line 2095
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
    .line 2096
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 2097
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 2095
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2100
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
    .line 358
    .local p1, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v3

    #@6
    .line 359
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v8

    #@c
    .line 360
    .local v8, "systemPackageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-static {v10, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    #@11
    move-result-object v7

    #@12
    .line 363
    .local v7, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    new-instance v10, Landroid/content/Intent;

    #@14
    const-string/jumbo v11, "com.android.location.service.FusedLocationProvider"

    #@17
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 364
    iget v11, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@1c
    const/16 v12, 0x80

    #@1e
    .line 362
    invoke-virtual {v3, v10, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@21
    move-result-object v6

    #@22
    .line 365
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
    .line 366
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@34
    iget-object v2, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@36
    .line 372
    .local v2, "packageName":Ljava/lang/String;
    const/16 v10, 0x40

    #@38
    :try_start_0
    invoke-virtual {v3, v2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@3b
    move-result-object v1

    #@3c
    .line 373
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@3e
    invoke-static {v10, v7}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    #@41
    move-result v10

    #@42
    if-nez v10, :cond_1

    #@44
    .line 374
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
    .line 375
    const-string/jumbo v12, ", but has wrong signature, ignoring"

    #@61
    .line 374
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
    .line 378
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@6e
    .line 379
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
    .line 384
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@8b
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@8d
    if-nez v10, :cond_2

    #@8f
    .line 385
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
    .line 389
    :cond_2
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@ad
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@af
    .line 390
    const-string/jumbo v11, "serviceVersion"

    #@b2
    const/4 v12, -0x1

    #@b3
    .line 389
    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@b6
    move-result v9

    #@b7
    .line 391
    .local v9, "version":I
    if-nez v9, :cond_6

    #@b9
    .line 395
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
    .line 396
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
    .line 402
    :cond_3
    invoke-virtual {v3, v8, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    move-result v10

    #@e7
    if-eqz v10, :cond_4

    #@e9
    .line 404
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
    .line 410
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
    .line 411
    :cond_5
    return-void

    #@128
    .line 413
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
    .line 417
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
    .line 1032
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
    .line 1034
    const/4 v0, 0x2

    #@d
    return v0

    #@e
    .line 1035
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
    .line 1037
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 1039
    :cond_1
    return v2
.end method

.method private getCallerAllowedResolutionLevel()I
    .locals 2

    #@0
    .prologue
    .line 1049
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
    .line 1070
    const-string/jumbo v2, "gps"

    #@5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 1071
    const-string/jumbo v2, "passive"

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    .line 1070
    if-eqz v2, :cond_1

    #@14
    .line 1073
    :cond_0
    return v3

    #@15
    .line 1074
    :cond_1
    const-string/jumbo v2, "network"

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_2

    #@1e
    .line 1075
    const-string/jumbo v2, "fused"

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    .line 1074
    if-eqz v2, :cond_3

    #@27
    .line 1077
    :cond_2
    return v4

    #@28
    .line 1080
    :cond_3
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    #@30
    .line 1081
    .local v0, "lp":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v0, :cond_6

    #@32
    .line 1082
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@35
    move-result-object v1

    #@36
    .line 1083
    .local v1, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v1, :cond_6

    #@38
    .line 1084
    iget-boolean v2, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    #@3a
    if-eqz v2, :cond_4

    #@3c
    .line 1086
    return v3

    #@3d
    .line 1087
    :cond_4
    iget-boolean v2, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    #@3f
    if-nez v2, :cond_5

    #@41
    iget-boolean v2, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    #@43
    if-eqz v2, :cond_6

    #@45
    .line 1089
    :cond_5
    return v4

    #@46
    .line 1094
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
    .line 1508
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    #@9
    .line 1509
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    #@b
    .line 1510
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
    .line 1512
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@19
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 1514
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
    .line 1490
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v9

    #@4
    .line 1491
    .local v9, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    #@c
    .line 1492
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    #@e
    .line 1493
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
    .line 1496
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
    .line 1501
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@2b
    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 1503
    :cond_0
    return-object v0

    #@2f
    .line 1497
    :catch_0
    move-exception v10

    #@30
    .line 1498
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManagerService"

    #@33
    const-string/jumbo v2, "linkToDeath failed:"

    #@36
    invoke-static {v1, v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 1499
    const/4 v1, 0x0

    #@3a
    return-object v1
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .locals 1
    .param p1, "resolutionLevel"    # I

    #@0
    .prologue
    .line 1014
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1020
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 1016
    :pswitch_0
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    #@8
    return-object v0

    #@9
    .line 1018
    :pswitch_1
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    #@c
    return-object v0

    #@d
    .line 1014
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
    .line 2337
    new-instance v0, Landroid/location/Location;

    #@2
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@5
    .line 2338
    .local v0, "myLocation":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 2343
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
    .line 2344
    const/4 v2, 0x1

    #@16
    invoke-virtual {v0, v2}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    #@19
    .line 2347
    :cond_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v3

    #@1c
    .line 2348
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 2349
    if-nez p2, :cond_1

    #@24
    .line 2351
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    #@26
    invoke-virtual {v2, v0}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    #@29
    .line 2353
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_2
    monitor-exit v3

    #@2d
    .line 2334
    return-void

    #@2e
    .line 2347
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
    .line 2156
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
    .line 2158
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@25
    move-result-wide v18

    #@26
    .line 2159
    .local v18, "now":J
    if-eqz p2, :cond_1

    #@28
    const-string/jumbo v21, "passive"

    #@2b
    .line 2162
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
    .line 2163
    .local v20, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v20, :cond_2

    #@3d
    return-void

    #@3e
    .line 2159
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
    .line 2166
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
    .line 2167
    .local v16, "noGPSLocation":Landroid/location/Location;
    const/4 v13, 0x0

    #@4f
    .line 2168
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
    .line 2169
    .local v11, "lastLocation":Landroid/location/Location;
    if-nez v11, :cond_7

    #@61
    .line 2170
    new-instance v11, Landroid/location/Location;

    #@63
    .end local v11    # "lastLocation":Landroid/location/Location;
    move-object/from16 v0, v21

    #@65
    invoke-direct {v11, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@68
    .line 2171
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
    .line 2180
    .end local v13    # "lastNoGPSLocation":Landroid/location/Location;
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v11, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    #@7a
    .line 2183
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
    .line 2184
    .local v12, "lastLocationCoarseInterval":Landroid/location/Location;
    if-nez v12, :cond_4

    #@8c
    .line 2185
    new-instance v12, Landroid/location/Location;

    #@8e
    .end local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    move-object/from16 v0, p1

    #@90
    invoke-direct {v12, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@93
    .line 2186
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
    .line 2188
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@a3
    move-result-wide v34

    #@a4
    .line 2189
    invoke-virtual {v12}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@a7
    move-result-wide v36

    #@a8
    .line 2188
    sub-long v32, v34, v36

    #@aa
    .line 2190
    .local v32, "timeDiffNanos":J
    const-wide v34, 0x8bb2c97000L

    #@af
    cmp-long v34, v32, v34

    #@b1
    if-lez v34, :cond_5

    #@b3
    .line 2191
    move-object/from16 v0, p1

    #@b5
    invoke-virtual {v12, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    #@b8
    .line 2197
    :cond_5
    const-string/jumbo v34, "noGPSLocation"

    #@bb
    move-object/from16 v0, v34

    #@bd
    invoke-virtual {v12, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    #@c0
    move-result-object v16

    #@c1
    .line 2200
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
    .line 2201
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
    .line 2173
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
    .line 2174
    .local v13, "lastNoGPSLocation":Landroid/location/Location;
    if-nez v16, :cond_3

    #@e5
    if-eqz v13, :cond_3

    #@e7
    .line 2177
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
    .line 2204
    .end local v13    # "lastNoGPSLocation":Landroid/location/Location;
    .restart local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v30    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v32    # "timeDiffNanos":J
    :cond_8
    const/4 v6, 0x0

    #@f3
    .line 2205
    .local v6, "coarseLocation":Landroid/location/Location;
    if-eqz v16, :cond_9

    #@f5
    .line 2206
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
    .line 2210
    .end local v6    # "coarseLocation":Landroid/location/Location;
    :cond_9
    invoke-interface/range {v20 .. v20}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    #@106
    move-result-wide v14

    #@107
    .line 2213
    .local v14, "newStatusUpdateTime":J
    new-instance v9, Landroid/os/Bundle;

    #@109
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@10c
    .line 2214
    .local v9, "extras":Landroid/os/Bundle;
    move-object/from16 v0, v20

    #@10e
    invoke-interface {v0, v9}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    #@111
    move-result v31

    #@112
    .line 2216
    .local v31, "status":I
    const/4 v7, 0x0

    #@113
    .line 2217
    .local v7, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    const/4 v8, 0x0

    #@114
    .line 2220
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
    .line 2221
    .local v24, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v24

    #@126
    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@128
    move-object/from16 v26, v0

    #@12a
    .line 2222
    .local v26, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/16 v28, 0x0

    #@12c
    .line 2224
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
    .line 2225
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
    .line 2234
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
    .line 2235
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
    .line 2236
    move-object/from16 v0, v26

    #@177
    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@179
    move-object/from16 v36, v0

    #@17b
    .line 2235
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
    .line 2226
    :cond_c
    sget-boolean v34, Lcom/android/server/LocationManagerService;->D:Z

    #@189
    if-eqz v34, :cond_a

    #@18b
    .line 2227
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
    .line 2228
    const-string/jumbo v36, " (current user: "

    #@1a5
    .line 2227
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v35

    #@1a9
    .line 2228
    move-object/from16 v0, p0

    #@1ab
    iget v0, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@1ad
    move/from16 v36, v0

    #@1af
    .line 2227
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v35

    #@1b3
    .line 2228
    const-string/jumbo v36, ", app: "

    #@1b6
    .line 2227
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v35

    #@1ba
    .line 2229
    move-object/from16 v0, v26

    #@1bc
    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@1be
    move-object/from16 v36, v0

    #@1c0
    .line 2227
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v35

    #@1c4
    .line 2229
    const-string/jumbo v36, ")"

    #@1c7
    .line 2227
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
    .line 2240
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
    .line 2241
    move-object/from16 v0, v26

    #@1e8
    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    #@1ea
    move/from16 v37, v0

    #@1ec
    .line 2240
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
    .line 2242
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
    .line 2243
    move-object/from16 v0, v26

    #@211
    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@213
    move-object/from16 v36, v0

    #@215
    .line 2242
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
    .line 2247
    :cond_e
    const/16 v17, 0x0

    #@224
    .line 2248
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
    .line 2249
    move-object/from16 v17, v6

    #@234
    .line 2253
    .local v17, "notifyLocation":Landroid/location/Location;
    :goto_3
    if-eqz v17, :cond_11

    #@236
    .line 2254
    move-object/from16 v0, v24

    #@238
    iget-object v10, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    #@23a
    .line 2255
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
    .line 2256
    :cond_f
    if-nez v10, :cond_19

    #@24a
    .line 2257
    new-instance v10, Landroid/location/Location;

    #@24c
    .end local v10    # "lastLoc":Landroid/location/Location;
    move-object/from16 v0, v17

    #@24e
    invoke-direct {v10, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@251
    .line 2258
    .restart local v10    # "lastLoc":Landroid/location/Location;
    move-object/from16 v0, v24

    #@253
    iput-object v10, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    #@255
    .line 2262
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
    .line 2263
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
    .line 2264
    const/16 v28, 0x1

    #@27f
    .line 2266
    :cond_10
    move-object/from16 v0, v24

    #@281
    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@283
    move-object/from16 v34, v0

    #@285
    invoke-virtual/range {v34 .. v34}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    #@288
    .line 2270
    .end local v10    # "lastLoc":Landroid/location/Location;
    :cond_11
    move-object/from16 v0, v24

    #@28a
    iget-wide v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    #@28c
    move-wide/from16 v22, v0

    #@28e
    .line 2271
    .local v22, "prevStatusUpdateTime":J
    cmp-long v34, v14, v22

    #@290
    if-lez v34, :cond_13

    #@292
    .line 2272
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
    .line 2274
    :cond_12
    move-object/from16 v0, v24

    #@2a2
    iput-wide v14, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    #@2a4
    .line 2275
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
    .line 2276
    const/16 v28, 0x1

    #@2b2
    .line 2277
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
    .line 2282
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
    .line 2283
    :cond_14
    if-nez v8, :cond_15

    #@2ec
    .line 2284
    new-instance v8, Ljava/util/ArrayList;

    #@2ee
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@2f1
    .line 2286
    :cond_15
    move-object/from16 v0, v24

    #@2f3
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f6
    .line 2289
    :cond_16
    if-eqz v28, :cond_a

    #@2f8
    .line 2290
    if-nez v7, :cond_17

    #@2fa
    .line 2291
    new-instance v7, Ljava/util/ArrayList;

    #@2fc
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@2ff
    .line 2293
    :cond_17
    move-object/from16 v0, v26

    #@301
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@304
    move-result v34

    #@305
    if-nez v34, :cond_a

    #@307
    .line 2294
    move-object/from16 v0, v26

    #@309
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30c
    goto/16 :goto_2

    #@30e
    .line 2251
    .end local v22    # "prevStatusUpdateTime":J
    .local v17, "notifyLocation":Landroid/location/Location;
    :cond_18
    move-object/from16 v17, v11

    #@310
    .local v17, "notifyLocation":Landroid/location/Location;
    goto/16 :goto_3

    #@312
    .line 2260
    .restart local v10    # "lastLoc":Landroid/location/Location;
    :cond_19
    move-object/from16 v0, v17

    #@314
    invoke-virtual {v10, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    #@317
    goto/16 :goto_4

    #@319
    .line 2300
    .end local v10    # "lastLoc":Landroid/location/Location;
    .end local v17    # "notifyLocation":Landroid/location/Location;
    .end local v24    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v28    # "receiverDead":Z
    .end local v29    # "receiverUserId":I
    :cond_1a
    if-eqz v7, :cond_1b

    #@31b
    .line 2301
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
    .line 2302
    .restart local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object/from16 v0, p0

    #@32d
    move-object/from16 v1, v26

    #@32f
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    #@332
    goto :goto_5

    #@333
    .line 2305
    .end local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v27    # "receiver$iterator":Ljava/util/Iterator;
    :cond_1b
    if-eqz v8, :cond_1d

    #@335
    .line 2306
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
    .line 2307
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
    .line 2309
    .end local v24    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1c
    move-object/from16 v0, p0

    #@351
    move-object/from16 v1, v21

    #@353
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@356
    .line 2155
    :cond_1d
    return-void
.end method

.method private isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 979
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 980
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 982
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@c
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 983
    const/4 v1, 0x0

    #@13
    return v1

    #@14
    .line 986
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v0

    #@1a
    .line 988
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
    .line 1001
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
    .line 1004
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 1002
    :cond_1
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method private isCurrentProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 348
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 349
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    #@b
    aget v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-ne v1, p1, :cond_0

    #@f
    .line 350
    const/4 v1, 0x1

    #@10
    monitor-exit v2

    #@11
    return v1

    #@12
    .line 348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 353
    :cond_1
    const/4 v1, 0x0

    #@16
    monitor-exit v2

    #@17
    return v1

    #@18
    .line 347
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method private isMockProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2329
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2330
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
    .line 2329
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
    .line 2051
    const/16 v2, 0x3e8

    #@3
    if-ne p1, v2, :cond_0

    #@5
    .line 2052
    return v3

    #@6
    .line 2054
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 2055
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
    .line 2057
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
    .line 2058
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
    .line 2060
    .end local v0    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_3
    const/4 v2, 0x0

    #@35
    return v2
.end method

.method private loadProvidersLocked()V
    .locals 29

    #@0
    .prologue
    .line 427
    new-instance v19, Lcom/android/server/location/PassiveProvider;

    #@2
    move-object/from16 v0, v19

    #@4
    move-object/from16 v1, p0

    #@6
    invoke-direct {v0, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    #@9
    .line 428
    .local v19, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    move-object/from16 v0, p0

    #@b
    move-object/from16 v1, v19

    #@d
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@10
    .line 429
    move-object/from16 v0, p0

    #@12
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@14
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1b
    .line 430
    move-object/from16 v0, v19

    #@1d
    move-object/from16 v1, p0

    #@1f
    iput-object v0, v1, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    #@21
    .line 432
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 434
    new-instance v16, Lcom/android/server/location/GpsLocationProvider;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@2d
    .line 435
    move-object/from16 v0, p0

    #@2f
    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@31
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    #@34
    move-result-object v4

    #@35
    .line 434
    move-object/from16 v0, v16

    #@37
    move-object/from16 v1, p0

    #@39
    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    #@3c
    .line 436
    .local v16, "gpsProvider":Lcom/android/server/location/GpsLocationProvider;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    #@3f
    move-result-object v3

    #@40
    move-object/from16 v0, p0

    #@42
    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    #@44
    .line 437
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    #@47
    move-result-object v3

    #@48
    move-object/from16 v0, p0

    #@4a
    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@4c
    .line 438
    move-object/from16 v0, p0

    #@4e
    move-object/from16 v1, v16

    #@50
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@53
    .line 439
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@57
    const-string/jumbo v4, "gps"

    #@5a
    move-object/from16 v0, v16

    #@5c
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 440
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;

    #@62
    move-result-object v3

    #@63
    move-object/from16 v0, p0

    #@65
    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@67
    .line 441
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;

    #@6a
    move-result-object v3

    #@6b
    move-object/from16 v0, p0

    #@6d
    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@6f
    .line 442
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    #@72
    move-result-object v3

    #@73
    move-object/from16 v0, p0

    #@75
    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    #@77
    .line 456
    .end local v16    # "gpsProvider":Lcom/android/server/location/GpsLocationProvider;
    :cond_0
    move-object/from16 v0, p0

    #@79
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@7b
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7e
    move-result-object v24

    #@7f
    .line 457
    .local v24, "resources":Landroid/content/res/Resources;
    new-instance v22, Ljava/util/ArrayList;

    #@81
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    #@84
    .line 459
    .local v22, "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v3, 0x1070029

    #@87
    .line 458
    move-object/from16 v0, v24

    #@89
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@8c
    move-result-object v20

    #@8d
    .line 460
    .local v20, "pkgs":[Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    #@8f
    if-eqz v3, :cond_1

    #@91
    const-string/jumbo v3, "LocationManagerService"

    #@94
    new-instance v4, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v5, "certificates for location providers pulled from: "

    #@9c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    .line 461
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    .line 460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 462
    :cond_1
    if-eqz v20, :cond_2

    #@b1
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@b4
    move-result-object v3

    #@b5
    move-object/from16 v0, v22

    #@b7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@ba
    .line 464
    :cond_2
    move-object/from16 v0, p0

    #@bc
    move-object/from16 v1, v22

    #@be
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V

    #@c1
    .line 468
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@c5
    .line 469
    const-string/jumbo v3, "network"

    #@c8
    .line 470
    const-string/jumbo v4, "com.android.location.service.v3.NetworkLocationProvider"

    #@cb
    .line 474
    move-object/from16 v0, p0

    #@cd
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@cf
    .line 471
    const v5, 0x1120049

    #@d2
    .line 472
    const v6, 0x1040024

    #@d5
    .line 473
    const v7, 0x1070029

    #@d8
    .line 467
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    #@db
    move-result-object v18

    #@dc
    .line 475
    .local v18, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v18, :cond_7

    #@de
    .line 476
    move-object/from16 v0, p0

    #@e0
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@e2
    const-string/jumbo v4, "network"

    #@e5
    move-object/from16 v0, v18

    #@e7
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 477
    move-object/from16 v0, p0

    #@ec
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    #@ee
    move-object/from16 v0, v18

    #@f0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f3
    .line 478
    move-object/from16 v0, p0

    #@f5
    move-object/from16 v1, v18

    #@f7
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@fa
    .line 485
    :goto_0
    move-object/from16 v0, p0

    #@fc
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@fe
    .line 486
    const-string/jumbo v3, "fused"

    #@101
    .line 487
    const-string/jumbo v4, "com.android.location.service.FusedLocationProvider"

    #@104
    .line 491
    move-object/from16 v0, p0

    #@106
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@108
    .line 488
    const v5, 0x112004a

    #@10b
    .line 489
    const v6, 0x1040025

    #@10e
    .line 490
    const v7, 0x1070029

    #@111
    .line 484
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    #@114
    move-result-object v14

    #@115
    .line 492
    .local v14, "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v14, :cond_8

    #@117
    .line 493
    move-object/from16 v0, p0

    #@119
    invoke-direct {v0, v14}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@11c
    .line 494
    move-object/from16 v0, p0

    #@11e
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    #@120
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@123
    .line 495
    move-object/from16 v0, p0

    #@125
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@127
    invoke-virtual {v14}, Lcom/android/server/location/LocationProviderProxy;->getName()Ljava/lang/String;

    #@12a
    move-result-object v4

    #@12b
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12e
    .line 496
    move-object/from16 v0, p0

    #@130
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@132
    const-string/jumbo v4, "fused"

    #@135
    invoke-virtual {v3, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@138
    .line 503
    :goto_1
    move-object/from16 v0, p0

    #@13a
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@13c
    .line 507
    move-object/from16 v0, p0

    #@13e
    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@140
    .line 504
    const v5, 0x112004c

    #@143
    .line 505
    const v6, 0x1040027

    #@146
    .line 506
    const v7, 0x1070029

    #@149
    .line 503
    invoke-static {v3, v5, v6, v7, v4}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    #@14c
    move-result-object v3

    #@14d
    move-object/from16 v0, p0

    #@14f
    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@151
    .line 508
    move-object/from16 v0, p0

    #@153
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@155
    if-nez v3, :cond_3

    #@157
    .line 509
    const-string/jumbo v3, "LocationManagerService"

    #@15a
    const-string/jumbo v4, "no geocoder provider found"

    #@15d
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@160
    .line 516
    :cond_3
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->isSupported()Z

    #@163
    move-result v3

    #@164
    if-eqz v3, :cond_9

    #@166
    .line 517
    move-object/from16 v0, p0

    #@168
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@16a
    invoke-static {v3}, Lcom/android/server/location/FlpHardwareProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;

    #@16d
    move-result-object v12

    #@16e
    .line 519
    .local v12, "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    move-object/from16 v0, p0

    #@170
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@172
    .line 520
    move-object/from16 v0, p0

    #@174
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@176
    .line 521
    invoke-virtual {v12}, Lcom/android/server/location/FlpHardwareProvider;->getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;

    #@179
    move-result-object v4

    #@17a
    .line 522
    const v5, 0x112004b

    #@17d
    .line 523
    const v6, 0x1040026

    #@180
    .line 524
    const v7, 0x1070029

    #@183
    .line 518
    invoke-static/range {v2 .. v7}, Lcom/android/server/location/FusedProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;

    #@186
    move-result-object v15

    #@187
    .line 525
    .local v15, "fusedProxy":Lcom/android/server/location/FusedProxy;
    if-nez v15, :cond_4

    #@189
    .line 526
    const-string/jumbo v3, "LocationManagerService"

    #@18c
    const-string/jumbo v4, "Unable to bind FusedProxy."

    #@18f
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@192
    .line 535
    .end local v12    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    .end local v15    # "fusedProxy":Lcom/android/server/location/FusedProxy;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@194
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@196
    .line 538
    move-object/from16 v0, p0

    #@198
    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@19a
    .line 539
    move-object/from16 v0, p0

    #@19c
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    #@19e
    .line 540
    if-eqz v12, :cond_a

    #@1a0
    invoke-virtual {v12}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;

    #@1a3
    move-result-object v8

    #@1a4
    .line 535
    :goto_3
    const v3, 0x112004d

    #@1a7
    .line 536
    const v4, 0x1040028

    #@1aa
    .line 537
    const v5, 0x1070029

    #@1ad
    .line 534
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    #@1b0
    move-result-object v21

    #@1b1
    .line 541
    .local v21, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v21, :cond_5

    #@1b3
    .line 542
    const-string/jumbo v3, "LocationManagerService"

    #@1b6
    const-string/jumbo v4, "Unable to bind FLP Geofence proxy."

    #@1b9
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1bc
    .line 546
    :cond_5
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    #@1bf
    move-result v3

    #@1c0
    if-eqz v3, :cond_b

    #@1c2
    .line 548
    move-object/from16 v0, p0

    #@1c4
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@1c6
    .line 549
    move-object/from16 v0, p0

    #@1c8
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@1ca
    .line 550
    move-object/from16 v0, p0

    #@1cc
    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@1ce
    invoke-static {v4}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    #@1d1
    move-result-object v4

    #@1d2
    .line 551
    const v5, 0x112004e

    #@1d5
    .line 552
    const v6, 0x1040029

    #@1d8
    .line 553
    const v7, 0x1070029

    #@1db
    .line 547
    invoke-static/range {v2 .. v7}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    #@1de
    move-result-object v23

    #@1df
    .line 555
    .local v23, "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    if-nez v23, :cond_6

    #@1e1
    .line 556
    const-string/jumbo v3, "LocationManagerService"

    #@1e4
    const-string/jumbo v4, "Unable to bind ActivityRecognitionProxy."

    #@1e7
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ea
    .line 563
    .end local v23    # "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    :cond_6
    :goto_4
    const v3, 0x107002a

    #@1ed
    .line 562
    move-object/from16 v0, v24

    #@1ef
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@1f2
    move-result-object v26

    #@1f3
    .line 564
    .local v26, "testProviderStrings":[Ljava/lang/String;
    const/4 v3, 0x0

    #@1f4
    move-object/from16 v0, v26

    #@1f6
    array-length v0, v0

    #@1f7
    move/from16 v28, v0

    #@1f9
    move/from16 v27, v3

    #@1fb
    :goto_5
    move/from16 v0, v27

    #@1fd
    move/from16 v1, v28

    #@1ff
    if-ge v0, v1, :cond_d

    #@201
    aget-object v25, v26, v27

    #@203
    .line 565
    .local v25, "testProviderString":Ljava/lang/String;
    const-string/jumbo v3, ","

    #@206
    move-object/from16 v0, v25

    #@208
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@20b
    move-result-object v13

    #@20c
    .line 566
    .local v13, "fragments":[Ljava/lang/String;
    const/4 v3, 0x0

    #@20d
    aget-object v3, v13, v3

    #@20f
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@212
    move-result-object v17

    #@213
    .line 567
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@215
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@217
    move-object/from16 v0, v17

    #@219
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21c
    move-result-object v3

    #@21d
    if-eqz v3, :cond_c

    #@21f
    .line 568
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@221
    new-instance v4, Ljava/lang/StringBuilder;

    #@223
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@226
    const-string/jumbo v5, "Provider \""

    #@229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v4

    #@22d
    move-object/from16 v0, v17

    #@22f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v4

    #@233
    const-string/jumbo v5, "\" already exists"

    #@236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v4

    #@23a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23d
    move-result-object v4

    #@23e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@241
    throw v3

    #@242
    .line 480
    .end local v13    # "fragments":[Ljava/lang/String;
    .end local v14    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    .end local v17    # "name":Ljava/lang/String;
    .end local v21    # "provider":Lcom/android/server/location/GeofenceProxy;
    .end local v25    # "testProviderString":Ljava/lang/String;
    .end local v26    # "testProviderStrings":[Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "LocationManagerService"

    #@245
    const-string/jumbo v4, "no network location provider found"

    #@248
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24b
    goto/16 :goto_0

    #@24d
    .line 498
    .restart local v14    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_8
    const-string/jumbo v3, "LocationManagerService"

    #@250
    const-string/jumbo v4, "no fused location provider found"

    #@253
    .line 499
    new-instance v5, Ljava/lang/IllegalStateException;

    #@255
    const-string/jumbo v6, "Location service needs a fused location provider"

    #@258
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25b
    .line 498
    invoke-static {v3, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25e
    goto/16 :goto_1

    #@260
    .line 529
    :cond_9
    const/4 v12, 0x0

    #@261
    .line 530
    .local v12, "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    const-string/jumbo v3, "LocationManagerService"

    #@264
    const-string/jumbo v4, "FLP HAL not supported"

    #@267
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26a
    goto/16 :goto_2

    #@26c
    .line 540
    .end local v12    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    :cond_a
    const/4 v8, 0x0

    #@26d
    goto/16 :goto_3

    #@26f
    .line 559
    .restart local v21    # "provider":Lcom/android/server/location/GeofenceProxy;
    :cond_b
    const-string/jumbo v3, "LocationManagerService"

    #@272
    const-string/jumbo v4, "Hardware Activity-Recognition not supported."

    #@275
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@278
    goto/16 :goto_4

    #@27a
    .line 570
    .restart local v13    # "fragments":[Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v25    # "testProviderString":Ljava/lang/String;
    .restart local v26    # "testProviderStrings":[Ljava/lang/String;
    :cond_c
    new-instance v2, Lcom/android/internal/location/ProviderProperties;

    #@27c
    .line 571
    const/4 v3, 0x1

    #@27d
    aget-object v3, v13, v3

    #@27f
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@282
    move-result v3

    #@283
    .line 572
    const/4 v4, 0x2

    #@284
    aget-object v4, v13, v4

    #@286
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@289
    move-result v4

    #@28a
    .line 573
    const/4 v5, 0x3

    #@28b
    aget-object v5, v13, v5

    #@28d
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@290
    move-result v5

    #@291
    .line 574
    const/4 v6, 0x4

    #@292
    aget-object v6, v13, v6

    #@294
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@297
    move-result v6

    #@298
    .line 575
    const/4 v7, 0x5

    #@299
    aget-object v7, v13, v7

    #@29b
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@29e
    move-result v7

    #@29f
    .line 576
    const/4 v8, 0x6

    #@2a0
    aget-object v8, v13, v8

    #@2a2
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2a5
    move-result v8

    #@2a6
    .line 577
    const/4 v9, 0x7

    #@2a7
    aget-object v9, v13, v9

    #@2a9
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2ac
    move-result v9

    #@2ad
    .line 578
    const/16 v10, 0x8

    #@2af
    aget-object v10, v13, v10

    #@2b1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2b4
    move-result v10

    #@2b5
    .line 579
    const/16 v11, 0x9

    #@2b7
    aget-object v11, v13, v11

    #@2b9
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2bc
    move-result v11

    #@2bd
    .line 570
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    #@2c0
    .line 580
    .local v2, "properties":Lcom/android/internal/location/ProviderProperties;
    move-object/from16 v0, p0

    #@2c2
    move-object/from16 v1, v17

    #@2c4
    invoke-direct {v0, v1, v2}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    #@2c7
    .line 564
    add-int/lit8 v3, v27, 0x1

    #@2c9
    move/from16 v27, v3

    #@2cb
    goto/16 :goto_5

    #@2cd
    .line 425
    .end local v2    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v13    # "fragments":[Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v25    # "testProviderString":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2604
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
    .line 2605
    const-string/jumbo v0, "LocationManagerService"

    #@d
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 2603
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
    .line 1269
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "gps"

    #@3
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1270
    const-string/jumbo v0, "gps"

    #@c
    return-object v0

    #@d
    .line 1271
    :cond_0
    const-string/jumbo v0, "network"

    #@10
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1272
    const-string/jumbo v0, "network"

    #@19
    return-object v0

    #@1a
    .line 1274
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
    .line 965
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    #@3
    .line 966
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    .line 967
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@a
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 964
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 10
    .param p1, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1683
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
    .line 1685
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
    .line 1686
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
    .line 1687
    monitor-enter p1

    #@43
    .line 1688
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    monitor-exit p1

    #@47
    .line 1692
    :cond_1
    invoke-virtual {p1, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    #@4a
    .line 1695
    new-instance v3, Ljava/util/HashSet;

    #@4c
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@4f
    .line 1696
    .local v3, "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    #@51
    .line 1697
    .local v0, "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v0, :cond_3

    #@53
    .line 1699
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
    .line 1701
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-virtual {v4, v9}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    #@6a
    goto :goto_0

    #@6b
    .line 1687
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
    .line 1704
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
    .line 1708
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
    .line 1710
    .local v1, "provider":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@88
    move-result v6

    #@89
    if-eqz v6, :cond_4

    #@8b
    .line 1714
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@8e
    goto :goto_1

    #@8f
    .line 1682
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
    .line 1627
    if-nez p1, :cond_0

    #@3
    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    #@5
    .line 1628
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1629
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    #@b
    .line 1630
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v6, "provider name must not be null"

    #@10
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v5

    #@14
    .line 1633
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
    .line 1634
    const-string/jumbo v7, " "

    #@36
    .line 1633
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    .line 1634
    const-string/jumbo v7, " "

    #@41
    .line 1633
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 1634
    const-string/jumbo v7, " from "

    #@4c
    .line 1633
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    .line 1634
    const-string/jumbo v7, "("

    #@57
    .line 1633
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    .line 1634
    const-string/jumbo v7, ")"

    #@62
    .line 1633
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
    .line 1635
    :cond_2
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@6f
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    #@75
    .line 1636
    .local v3, "provider":Lcom/android/server/location/LocationProviderInterface;
    if-nez v3, :cond_3

    #@77
    .line 1637
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
    .line 1640
    :cond_3
    new-instance v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@93
    invoke-direct {v4, p0, v1, p1, p2}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    #@96
    .line 1641
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v5, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    #@98
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    move-result-object v2

    #@9c
    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@9e
    .line 1642
    .local v2, "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v2, :cond_4

    #@a0
    .line 1643
    invoke-virtual {v2, v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    #@a3
    .line 1646
    :cond_4
    invoke-direct {p0, v1, p4}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    #@a6
    move-result v0

    #@a7
    .line 1647
    .local v0, "isProviderEnabled":Z
    if-eqz v0, :cond_5

    #@a9
    .line 1648
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@ac
    .line 1655
    :goto_0
    const/4 v5, 0x1

    #@ad
    invoke-virtual {p2, v5}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    #@b0
    .line 1624
    return-void

    #@b1
    .line 1651
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
    .line 1137
    if-eqz p0, :cond_1

    #@4
    .line 1138
    if-ne p0, v1, :cond_0

    #@6
    .line 1139
    return v0

    #@7
    .line 1141
    :cond_0
    return v1

    #@8
    .line 1144
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
    .line 2122
    if-nez p1, :cond_0

    #@2
    .line 2123
    const/4 v6, 0x1

    #@3
    return v6

    #@4
    .line 2127
    :cond_0
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@6
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getFastestInterval()J

    #@9
    move-result-wide v4

    #@a
    .line 2128
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
    .line 2129
    const-wide/32 v8, 0xf4240

    #@16
    .line 2128
    div-long v0, v6, v8

    #@18
    .line 2130
    .local v0, "delta":J
    const-wide/16 v6, 0x64

    #@1a
    sub-long v6, v4, v6

    #@1c
    cmp-long v6, v0, v6

    #@1e
    if-gez v6, :cond_1

    #@20
    .line 2131
    const/4 v6, 0x0

    #@21
    return v6

    #@22
    .line 2135
    :cond_1
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@24
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    #@27
    move-result v6

    #@28
    float-to-double v2, v6

    #@29
    .line 2136
    .local v2, "minDistance":D
    const-wide/16 v6, 0x0

    #@2b
    cmpl-double v6, v2, v6

    #@2d
    if-lez v6, :cond_2

    #@2f
    .line 2137
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
    .line 2138
    const/4 v6, 0x0

    #@39
    return v6

    #@3a
    .line 2143
    :cond_2
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@3c
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    #@3f
    move-result v6

    #@40
    if-gtz v6, :cond_3

    #@42
    .line 2144
    const/4 v6, 0x0

    #@43
    return v6

    #@44
    .line 2148
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
    .line 2149
    const/4 v6, 0x0

    #@4f
    return v6

    #@50
    .line 2152
    :cond_4
    const/4 v6, 0x1

    #@51
    return v6
.end method

.method private switchUser(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 589
    iget v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@2
    if-ne v2, p1, :cond_0

    #@4
    .line 590
    return-void

    #@5
    .line 592
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@7
    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    #@a
    .line 593
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@c
    const/4 v3, 0x1

    #@d
    invoke-virtual {v2, v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(I)V

    #@10
    .line 594
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@12
    monitor-enter v3

    #@13
    .line 595
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@15
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@18
    .line 596
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@1d
    .line 597
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
    .line 598
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
    .line 594
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2

    #@3b
    .line 600
    .restart local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@3d
    .line 601
    invoke-virtual {p0, p1}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    #@40
    .line 602
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v3

    #@44
    .line 588
    return-void
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1320
    const/4 v3, 0x0

    #@1
    .line 1322
    .local v3, "listeners":I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    #@9
    .line 1323
    .local v4, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_0

    #@b
    return-void

    #@c
    .line 1325
    :cond_0
    const/4 v1, 0x0

    #@d
    .line 1327
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    #@f
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v6

    #@13
    check-cast v6, Ljava/util/ArrayList;

    #@15
    .line 1328
    .local v6, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_4

    #@17
    .line 1329
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v0

    #@1b
    .line 1330
    .local v0, "N":I
    const/4 v2, 0x0

    #@1c
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@1e
    .line 1331
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@24
    .line 1332
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
    .line 1334
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@34
    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    #@37
    move-result v7

    #@38
    if-nez v7, :cond_2

    #@3a
    .line 1335
    if-nez v1, :cond_1

    #@3c
    .line 1336
    new-instance v1, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 1338
    :cond_1
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #@43
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 1340
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@48
    .line 1330
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 1345
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    if-eqz v1, :cond_5

    #@4d
    .line 1346
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
    .line 1347
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v7

    #@59
    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    #@5b
    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    #@5e
    .line 1346
    add-int/lit8 v2, v2, -0x1

    #@60
    goto :goto_1

    #@61
    .line 1351
    .end local v2    # "i":I
    :cond_5
    if-eqz p2, :cond_7

    #@63
    .line 1352
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    #@66
    .line 1353
    if-lez v3, :cond_6

    #@68
    .line 1354
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    #@6b
    .line 1319
    :cond_6
    :goto_2
    return-void

    #@6c
    .line 1357
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
    .line 1292
    const/4 v0, 0x0

    #@2
    .line 1293
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
    .line 1294
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    #@14
    .line 1295
    .local v4, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    #@17
    move-result v2

    #@18
    .line 1296
    .local v2, "isEnabled":Z
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 1297
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    #@1f
    move-result v5

    #@20
    .line 1298
    .local v5, "shouldBeEnabled":Z
    if-eqz v2, :cond_0

    #@22
    if-eqz v5, :cond_2

    #@24
    .line 1306
    :cond_0
    if-nez v2, :cond_1

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 1307
    const/4 v6, 0x1

    #@29
    invoke-direct {p0, v3, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    #@2c
    .line 1308
    const/4 v0, 0x1

    #@2d
    .line 1293
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 1299
    :cond_2
    invoke-direct {p0, v3, v7}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    #@33
    .line 1303
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@35
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    #@38
    .line 1304
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@3a
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    #@3d
    .line 1305
    const/4 v0, 0x1

    #@3e
    .line 1298
    goto :goto_1

    #@3f
    .line 1311
    .end local v2    # "isEnabled":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v5    # "shouldBeEnabled":Z
    :cond_3
    if-eqz v0, :cond_4

    #@41
    .line 1312
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@43
    new-instance v7, Landroid/content/Intent;

    #@45
    const-string/jumbo v8, "android.location.PROVIDERS_CHANGED"

    #@48
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4b
    .line 1313
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4d
    .line 1312
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@50
    .line 1314
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@52
    new-instance v7, Landroid/content/Intent;

    #@54
    const-string/jumbo v8, "android.location.MODE_CHANGED"

    #@57
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5a
    .line 1315
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5c
    .line 1314
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5f
    .line 1291
    :cond_4
    return-void
.end method


# virtual methods
.method public addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1883
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@3
    move-result v0

    #@4
    .line 1886
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    #@7
    .line 1884
    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@a
    .line 1888
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@d
    move-result v4

    #@e
    .line 1889
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@11
    move-result v5

    #@12
    .line 1890
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 1893
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {p0, v4, v5, p2, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v1

    #@1a
    .line 1895
    .local v1, "hasLocationAccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 1898
    if-eqz v1, :cond_0

    #@1f
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@21
    if-nez v6, :cond_1

    #@23
    .line 1899
    :cond_0
    const/4 v6, 0x0

    #@24
    return v6

    #@25
    .line 1894
    .end local v1    # "hasLocationAccess":Z
    :catchall_0
    move-exception v6

    #@26
    .line 1895
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1894
    throw v6

    #@2a
    .line 1901
    .restart local v1    # "hasLocationAccess":Z
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@2c
    invoke-virtual {v6, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->addListener(Landroid/os/IInterface;)Z

    #@2f
    move-result v6

    #@30
    return v6
.end method

.method public addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1915
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@3
    move-result v0

    #@4
    .line 1918
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    #@7
    .line 1916
    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@a
    .line 1920
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@d
    move-result v4

    #@e
    .line 1921
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@11
    move-result v5

    #@12
    .line 1922
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 1925
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {p0, v4, v5, p2, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v1

    #@1a
    .line 1927
    .local v1, "hasLocationAccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 1930
    if-eqz v1, :cond_0

    #@1f
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@21
    if-nez v6, :cond_1

    #@23
    .line 1931
    :cond_0
    const/4 v6, 0x0

    #@24
    return v6

    #@25
    .line 1926
    .end local v1    # "hasLocationAccess":Z
    :catchall_0
    move-exception v6

    #@26
    .line 1927
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1926
    throw v6

    #@2a
    .line 1933
    .restart local v1    # "hasLocationAccess":Z
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@2c
    invoke-virtual {v6, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->addListener(Landroid/os/IInterface;)Z

    #@2f
    move-result v6

    #@30
    return v6
.end method

.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z
    .locals 9
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1840
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@4
    move-result v0

    #@5
    .line 1842
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    #@8
    .line 1841
    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@b
    .line 1844
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e
    move-result v4

    #@f
    .line 1845
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v5

    #@13
    .line 1846
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v2

    #@17
    .line 1848
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
    .line 1852
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1849
    return v8

    #@21
    .line 1852
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 1855
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    #@26
    if-nez v6, :cond_1

    #@28
    .line 1856
    return v8

    #@29
    .line 1851
    :catchall_0
    move-exception v6

    #@2a
    .line 1852
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1851
    throw v6

    #@2e
    .line 1860
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    #@30
    invoke-interface {v6, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@33
    .line 1865
    const/4 v6, 0x1

    #@34
    return v6

    #@35
    .line 1861
    :catch_0
    move-exception v1

    #@36
    .line 1862
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "LocationManagerService"

    #@39
    const-string/jumbo v7, "mGpsStatusProvider.addGpsStatusListener failed"

    #@3c
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 1863
    return v8
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2425
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2426
    return-void

    #@7
    .line 2429
    :cond_0
    const-string/jumbo v3, "passive"

    #@a
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 2430
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v4, "Cannot mock the passive location provider"

    #@15
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 2433
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v0

    #@1d
    .line 2434
    .local v0, "identity":J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@1f
    monitor-enter v4

    #@20
    .line 2436
    :try_start_0
    const-string/jumbo v3, "gps"

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_2

    #@29
    .line 2437
    const-string/jumbo v3, "network"

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    .line 2436
    if-nez v3, :cond_2

    #@32
    .line 2438
    const-string/jumbo v3, "fused"

    #@35
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v3

    #@39
    .line 2436
    if-eqz v3, :cond_3

    #@3b
    .line 2439
    :cond_2
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3d
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    #@43
    .line 2440
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_3

    #@45
    .line 2441
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@48
    .line 2444
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    #@4b
    .line 2445
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    monitor-exit v4

    #@4f
    .line 2447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 2424
    return-void

    #@53
    .line 2434
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
    .line 1164
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    #@4
    move-result v0

    #@5
    .line 1165
    .local v0, "op":I
    if-ltz v0, :cond_0

    #@7
    .line 1166
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1167
    return v2

    #@10
    .line 1171
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    #@13
    move-result v1

    #@14
    if-ge v1, p4, :cond_1

    #@16
    .line 1172
    return v2

    #@17
    .line 1175
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
    .line 2555
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2556
    return-void

    #@7
    .line 2559
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 2560
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/location/MockProvider;

    #@12
    .line 2561
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    #@14
    .line 2562
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
    .line 2559
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3

    #@38
    .line 2564
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3b
    move-result-wide v0

    #@3c
    .line 2565
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@3e
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@41
    .line 2566
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@43
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@46
    .line 2567
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    #@49
    .line 2568
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    monitor-exit v4

    #@4d
    .line 2554
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2514
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2515
    return-void

    #@7
    .line 2518
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 2519
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/location/MockProvider;

    #@12
    .line 2520
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_1

    #@14
    .line 2521
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
    .line 2518
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 2523
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 2513
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2590
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2591
    return-void

    #@7
    .line 2594
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 2595
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/location/MockProvider;

    #@12
    .line 2596
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_1

    #@14
    .line 2597
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
    .line 2594
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 2599
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 2589
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2611
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
    .line 2613
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
    .line 2614
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v23

    #@1f
    .line 2613
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v22

    #@23
    .line 2615
    const-string/jumbo v23, ", uid="

    #@26
    .line 2613
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v22

    #@2a
    .line 2615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v23

    #@2e
    .line 2613
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
    .line 2616
    return-void

    #@3e
    .line 2619
    :cond_0
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@42
    move-object/from16 v23, v0

    #@44
    monitor-enter v23

    #@45
    .line 2620
    :try_start_0
    const-string/jumbo v22, "Current Location Manager state:"

    #@48
    move-object/from16 v0, p2

    #@4a
    move-object/from16 v1, v22

    #@4c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 2621
    const-string/jumbo v22, "  Location Listeners:"

    #@52
    move-object/from16 v0, p2

    #@54
    move-object/from16 v1, v22

    #@56
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 2622
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
    .line 2623
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
    .line 2619
    .end local v17    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v18    # "receiver$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v22

    #@98
    monitor-exit v23

    #@99
    throw v22

    #@9a
    .line 2625
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
    .line 2626
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
    .line 2627
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
    .line 2628
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
    .line 2629
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
    .line 2632
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
    .line 2634
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
    .line 2633
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
    .line 2635
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@159
    move-result-object v11

    #@15a
    check-cast v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    #@15c
    .line 2636
    .local v11, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@15f
    move-result-object v21

    #@160
    check-cast v21, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    #@162
    .line 2637
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
    .line 2639
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
    .line 2640
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
    .line 2641
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1db
    move-result-object v14

    #@1dc
    check-cast v14, Ljava/lang/String;

    #@1de
    .line 2642
    .local v14, "provider":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e1
    move-result-object v12

    #@1e2
    check-cast v12, Landroid/location/Location;

    #@1e4
    .line 2643
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
    .line 2646
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
    .line 2647
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
    .line 2648
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@23e
    move-result-object v14

    #@23f
    check-cast v14, Ljava/lang/String;

    #@241
    .line 2649
    .restart local v14    # "provider":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@244
    move-result-object v12

    #@245
    check-cast v12, Landroid/location/Location;

    #@247
    .line 2650
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
    .line 2653
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
    .line 2655
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
    .line 2656
    const-string/jumbo v22, "  Enabled Providers:"

    #@296
    move-object/from16 v0, p2

    #@298
    move-object/from16 v1, v22

    #@29a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29d
    .line 2657
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
    .line 2658
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
    .line 2662
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
    .line 2663
    const-string/jumbo v22, "  Disabled Providers:"

    #@2e4
    move-object/from16 v0, p2

    #@2e6
    move-object/from16 v1, v22

    #@2e8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2eb
    .line 2664
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
    .line 2665
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
    .line 2668
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
    .line 2669
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
    .line 2670
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
    .line 2671
    const-string/jumbo v22, "  Mock Providers:"

    #@349
    move-object/from16 v0, p2

    #@34b
    move-object/from16 v1, v22

    #@34d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@350
    .line 2672
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
    .line 2673
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
    .line 2677
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
    .line 2678
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
    .line 2680
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
    .line 2681
    return-void

    #@3b2
    .line 2683
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
    .line 2684
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
    .line 2685
    instance-of v0, v13, Lcom/android/server/location/LocationProviderProxy;

    #@3f1
    move/from16 v22, v0

    #@3f3
    if-eqz v22, :cond_b

    #@3f5
    .line 2686
    move-object v0, v13

    #@3f6
    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    #@3f8
    move-object/from16 v16, v0

    #@3fa
    .line 2687
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
    .line 2689
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
    .line 2690
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
    .line 2610
    return-void
.end method

.method public geocoderIsPresent()Z
    .locals 1

    #@0
    .prologue
    .line 2388
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
    .line 1186
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 1187
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
    .line 1188
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
    .line 1189
    .local v2, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1190
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v4, "fused"

    #@27
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_0

    #@2d
    .line 1193
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 1186
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
    .line 1197
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
    .line 1198
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
    .line 1249
    const/4 v1, 0x0

    #@2
    .line 1251
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 1252
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 1253
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 1254
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
    .line 1255
    :cond_0
    return-object v1

    #@45
    .line 1257
    .local v1, "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v5, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    #@48
    move-result-object v0

    #@49
    .line 1258
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@4c
    move-result v2

    #@4d
    if-nez v2, :cond_3

    #@4f
    .line 1259
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 1260
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
    .line 1261
    :cond_2
    return-object v1

    #@88
    .line 1264
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
    .line 1265
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
    .line 2394
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2395
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
    .line 2398
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
    .line 2408
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2409
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
    .line 2413
    :cond_0
    const/4 v0, 0x0

    #@1b
    return-object v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .locals 12
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1731
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
    .line 1732
    :cond_0
    if-nez p1, :cond_1

    #@20
    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    #@22
    .line 1733
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@25
    move-result v0

    #@26
    .line 1734
    .local v0, "allowedResolutionLevel":I
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@29
    .line 1736
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    .line 1735
    invoke-direct {p0, v0, v9}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@30
    .line 1739
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@33
    move-result v6

    #@34
    .line 1740
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@37
    move-result v8

    #@38
    .line 1741
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3b
    move-result-wide v2

    #@3c
    .line 1743
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
    .line 1744
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
    .line 1746
    :cond_2
    const/4 v9, 0x0

    #@63
    .line 1787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@66
    .line 1746
    return-object v9

    #@67
    .line 1749
    :cond_3
    :try_start_1
    invoke-virtual {p0, v6, v8, p2, v0}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    #@6a
    move-result v9

    #@6b
    if-nez v9, :cond_5

    #@6d
    .line 1750
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
    .line 1752
    :cond_4
    const/4 v9, 0x0

    #@8c
    .line 1787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8f
    .line 1752
    return-object v9

    #@90
    .line 1755
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@92
    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@93
    .line 1758
    :try_start_3
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    .line 1759
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_6

    #@99
    const-string/jumbo v4, "fused"

    #@9c
    .line 1760
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
    .line 1761
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
    .line 1787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ab
    .line 1761
    return-object v9

    #@ac
    .line 1763
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
    .line 1787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b7
    .line 1763
    return-object v9

    #@b8
    .line 1766
    :cond_8
    const/4 v9, 0x2

    #@b9
    if-ge v0, v9, :cond_9

    #@bb
    .line 1769
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
    .line 1773
    .local v1, "location":Landroid/location/Location;
    :goto_0
    if-nez v1, :cond_a

    #@c5
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@c6
    .line 1774
    const/4 v9, 0x0

    #@c7
    .line 1787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ca
    .line 1774
    return-object v9

    #@cb
    .line 1771
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
    .line 1776
    :cond_a
    const/4 v9, 0x2

    #@d5
    if-ge v0, v9, :cond_b

    #@d7
    .line 1777
    const-string/jumbo v9, "noGPSLocation"

    #@da
    invoke-virtual {v1, v9}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    #@dd
    move-result-object v5

    #@de
    .line 1778
    .local v5, "noGPSLocation":Landroid/location/Location;
    if-eqz v5, :cond_c

    #@e0
    .line 1779
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
    .line 1787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ef
    .line 1779
    return-object v9

    #@f0
    .line 1782
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
    .line 1787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f9
    .line 1782
    return-object v9

    #@fa
    .restart local v5    # "noGPSLocation":Landroid/location/Location;
    :cond_c
    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@fb
    .line 1785
    const/4 v9, 0x0

    #@fc
    .line 1787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ff
    .line 1785
    return-object v9

    #@100
    .line 1755
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
    .line 1786
    :catchall_1
    move-exception v9

    #@104
    .line 1787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@107
    .line 1786
    throw v9
.end method

.method public getNetworkProviderPackage()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2011
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 2012
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
    .line 2013
    return-object v4

    #@11
    .line 2015
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
    .line 2018
    instance-of v1, v0, Lcom/android/server/location/LocationProviderProxy;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 2019
    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    #@23
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 2011
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1

    #@2b
    .line 2021
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
    .line 1987
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 1988
    return-object v3

    #@a
    .line 1991
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@d
    move-result v1

    #@e
    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@11
    .line 1995
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@13
    monitor-enter v2

    #@14
    .line 1996
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
    .line 1999
    if-nez v0, :cond_1

    #@1f
    return-object v3

    #@20
    .line 1995
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1

    #@23
    .line 2000
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
    .line 1208
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@3
    move-result v0

    #@4
    .line 1210
    .local v0, "allowedResolutionLevel":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v7

    #@8
    .line 1211
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 1213
    .local v2, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 1214
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
    .line 1215
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
    .line 1216
    .local v5, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v5}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 1217
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v8, "fused"

    #@33
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v8

    #@37
    if-nez v8, :cond_0

    #@39
    .line 1220
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    #@3c
    move-result v8

    #@3d
    if-lt v0, v8, :cond_0

    #@3f
    .line 1221
    if-eqz p2, :cond_1

    #@41
    invoke-direct {p0, v1, v7}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    #@44
    move-result v8

    #@45
    if-eqz v8, :cond_0

    #@47
    .line 1224
    :cond_1
    if-eqz p1, :cond_2

    #@49
    .line 1225
    invoke-interface {v5}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@4c
    move-result-object v8

    #@4d
    .line 1224
    invoke-static {v1, v8, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    #@50
    move-result v8

    #@51
    if-eqz v8, :cond_0

    #@53
    .line 1228
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    goto :goto_0

    #@57
    .line 1213
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
    .line 1232
    :catchall_1
    move-exception v8

    #@5b
    .line 1233
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5e
    .line 1232
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
    .line 1233
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 1236
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
    .line 1237
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
    .line 2028
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
    .line 2030
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@e
    move-result v3

    #@f
    .line 2031
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 2033
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@16
    .line 2034
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
    .line 2035
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v2, :cond_1

    #@20
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    .line 2040
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 2035
    return v6

    #@25
    .line 2037
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
    .line 2040
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 2037
    return v4

    #@2e
    .line 2033
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
    .line 2039
    :catchall_1
    move-exception v4

    #@32
    .line 2040
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 2039
    throw v4
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/location/ILocationListener;

    #@0
    .prologue
    .line 945
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 946
    :try_start_0
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 947
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    #@9
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    #@f
    .line 948
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v1, :cond_0

    #@11
    .line 949
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 951
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 952
    .local v2, "identity":J
    invoke-static {v1}, Lcom/android/server/LocationManagerService$Receiver;->-wrap0(Lcom/android/server/LocationManagerService$Receiver;)V

    #@19
    .line 953
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
    .line 940
    return-void

    #@1f
    .line 949
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
    .line 945
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
    .line 1280
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    #@8
    .line 1281
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    #@a
    .line 1282
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
    .line 1286
    :cond_0
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@2b
    move-result-object v3

    #@2c
    .line 1285
    invoke-static {v2, v3, p2}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    #@2f
    move-result v1

    #@30
    .line 1287
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
    .line 1288
    :cond_1
    return v1
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1823
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 1824
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@6
    .line 1826
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
    .line 1829
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@32
    move-result-wide v0

    #@33
    .line 1831
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    #@35
    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 1833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1822
    return-void

    #@3c
    .line 1832
    :catchall_0
    move-exception v2

    #@3d
    .line 1833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 1832
    throw v2
.end method

.method public removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;

    #@0
    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1907
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V

    #@9
    .line 1905
    :cond_0
    return-void
.end method

.method public removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;

    #@0
    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1939
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V

    #@9
    .line 1937
    :cond_0
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;

    #@0
    .prologue
    .line 1870
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1872
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    #@5
    invoke-interface {v1, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :goto_0
    monitor-exit v2

    #@9
    .line 1869
    return-void

    #@a
    .line 1873
    :catch_0
    move-exception v0

    #@b
    .line 1874
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "LocationManagerService"

    #@e
    const-string/jumbo v3, "mGpsStatusProvider.removeGpsStatusListener failed"

    #@11
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 1870
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2463
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2464
    return-void

    #@7
    .line 2467
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v5

    #@a
    .line 2471
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 2472
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2473
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 2475
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@15
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/server/location/MockProvider;

    #@1b
    .line 2476
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    #@1d
    .line 2477
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
    .line 2467
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v4

    #@3f
    monitor-exit v5

    #@40
    throw v4

    #@41
    .line 2479
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@44
    move-result-wide v0

    #@45
    .line 2480
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
    .line 2483
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    #@52
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v3

    #@56
    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    #@58
    .line 2484
    .local v3, "realProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v3, :cond_2

    #@5a
    .line 2485
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    #@5d
    .line 2487
    :cond_2
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    #@5f
    const/4 v6, 0x0

    #@60
    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 2488
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    #@65
    const/4 v6, 0x0

    #@66
    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 2489
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    #@6c
    .line 2490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    monitor-exit v5

    #@70
    .line 2462
    return-void
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1661
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@3
    .line 1663
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v3

    #@7
    .line 1664
    .local v3, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v4

    #@b
    .line 1666
    .local v4, "uid":I
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v11

    #@e
    .line 1667
    const/4 v6, 0x0

    #@f
    .line 1668
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
    .line 1669
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    #@17
    move-result-object v10

    #@18
    .line 1673
    .local v10, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1b
    move-result-wide v8

    #@1c
    .line 1675
    .local v8, "identity":J
    :try_start_1
    invoke-direct {p0, v10}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .line 1677
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v11

    #@23
    .line 1660
    return-void

    #@24
    .line 1676
    :catchall_0
    move-exception v0

    #@25
    .line 1677
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 1676
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    .line 1666
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
    .line 2105
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkCallerIsProvider()V

    #@4
    .line 2107
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 2108
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
    .line 2109
    return-void

    #@25
    .line 2112
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@27
    invoke-virtual {v2, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    #@2a
    .line 2113
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@2c
    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v0

    #@30
    .line 2114
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_1

    #@32
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@34
    .line 2115
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@36
    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@39
    .line 2104
    return-void

    #@3a
    .line 2114
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
    .line 1149
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    #@4
    move-result v0

    #@5
    .line 1150
    .local v0, "op":I
    if-ltz v0, :cond_0

    #@7
    .line 1151
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@9
    invoke-virtual {v1, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1152
    return v2

    #@10
    .line 1156
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    #@13
    move-result v1

    #@14
    if-ge v1, p4, :cond_1

    #@16
    .line 1157
    return v2

    #@17
    .line 1160
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
    .line 1794
    if-nez p1, :cond_0

    #@2
    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    #@4
    .line 1795
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@7
    move-result v4

    #@8
    .line 1796
    .local v4, "allowedResolutionLevel":I
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    #@b
    .line 1797
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@e
    .line 1798
    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@11
    .line 1800
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1799
    invoke-direct {p0, v4, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@18
    .line 1801
    invoke-direct {p0, p1, v4}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    #@1b
    move-result-object v1

    #@1c
    .line 1803
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
    .line 1806
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@53
    move-result v5

    #@54
    .line 1807
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_2

    #@5a
    .line 1809
    const-string/jumbo v0, "LocationManagerService"

    #@5d
    const-string/jumbo v2, "proximity alerts are currently available only to the primary user"

    #@60
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 1810
    return-void

    #@64
    .line 1812
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@67
    move-result-wide v8

    #@68
    .line 1814
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
    .line 1817
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@73
    .line 1793
    return-void

    #@74
    .line 1816
    :catchall_0
    move-exception v0

    #@75
    .line 1817
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@78
    .line 1816
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
    .line 1589
    if-nez p1, :cond_0

    #@2
    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    #@4
    .line 1590
    :cond_0
    move-object/from16 v0, p4

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    #@9
    .line 1591
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@c
    move-result v10

    #@d
    .line 1593
    .local v10, "allowedResolutionLevel":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 1592
    invoke-direct {p0, v10, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@14
    .line 1594
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    #@17
    move-result-object v8

    #@18
    .line 1595
    .local v8, "workSource":Landroid/os/WorkSource;
    if-eqz v8, :cond_1

    #@1a
    invoke-virtual {v8}, Landroid/os/WorkSource;->size()I

    #@1d
    move-result v2

    #@1e
    if-lez v2, :cond_1

    #@20
    .line 1596
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkDeviceStatsAllowed()V

    #@23
    .line 1598
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    #@26
    move-result v9

    #@27
    .line 1599
    .local v9, "hideFromAppOps":Z
    if-eqz v9, :cond_2

    #@29
    .line 1600
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkUpdateAppOpsAllowed()V

    #@2c
    .line 1602
    :cond_2
    move-object/from16 v0, p1

    #@2e
    invoke-direct {p0, v0, v10}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    #@31
    move-result-object v11

    #@32
    .line 1604
    .local v11, "sanitizedRequest":Landroid/location/LocationRequest;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@35
    move-result v5

    #@36
    .line 1605
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@39
    move-result v6

    #@3a
    .line 1607
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3d
    move-result-wide v12

    #@3e
    .line 1611
    .local v12, "identity":J
    :try_start_0
    move-object/from16 v0, p4

    #@40
    invoke-virtual {p0, v5, v6, v0, v10}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    #@43
    .line 1613
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
    .line 1614
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
    .line 1616
    invoke-direct/range {v2 .. v7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@59
    .line 1619
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5c
    .line 1588
    return-void

    #@5d
    .line 1613
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
    .line 1618
    :catchall_1
    move-exception v2

    #@61
    .line 1619
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@64
    .line 1618
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
    .line 1945
    if-nez p1, :cond_0

    #@3
    .line 1947
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 1949
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    #@c
    move-result v1

    #@d
    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    #@10
    .line 1953
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
    .line 1955
    new-instance v1, Ljava/lang/SecurityException;

    #@1d
    const-string/jumbo v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    #@20
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 1958
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@26
    monitor-enter v2

    #@27
    .line 1959
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
    .line 1960
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_2

    #@31
    monitor-exit v2

    #@32
    return v3

    #@33
    .line 1962
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
    .line 1958
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
    .line 1968
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
    .line 1969
    new-instance v1, Ljava/lang/SecurityException;

    #@c
    .line 1970
    const-string/jumbo v2, "calling sendNiResponse from outside of the system is not allowed"

    #@f
    .line 1969
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 1973
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
    .line 1974
    :catch_0
    move-exception v0

    #@1b
    .line 1975
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManagerService"

    #@1e
    const-string/jumbo v2, "RemoteException in LocationManagerService.sendNiResponse"

    #@21
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1976
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
    .line 2529
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2530
    return-void

    #@7
    .line 2533
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 2534
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/location/MockProvider;

    #@12
    .line 2535
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    #@14
    .line 2536
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
    .line 2533
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3

    #@38
    .line 2538
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3b
    move-result-wide v0

    #@3c
    .line 2539
    .local v0, "identity":J
    if-eqz p2, :cond_2

    #@3e
    .line 2540
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    #@41
    .line 2541
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@43
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@46
    .line 2542
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    #@48
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@4b
    .line 2548
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    #@4e
    .line 2549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    monitor-exit v4

    #@52
    .line 2528
    return-void

    #@53
    .line 2544
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    #@56
    .line 2545
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    #@58
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5b
    .line 2546
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
    .line 2496
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2497
    return-void

    #@7
    .line 2500
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 2501
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/location/MockProvider;

    #@12
    .line 2502
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    #@14
    .line 2503
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
    .line 2500
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3

    #@38
    .line 2506
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3b
    move-result-wide v0

    #@3c
    .line 2507
    .local v0, "identity":J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    #@3f
    .line 2508
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    monitor-exit v4

    #@43
    .line 2495
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
    .line 2575
    invoke-direct {p0, p6}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2576
    return-void

    #@7
    .line 2579
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 2580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/location/MockProvider;

    #@12
    .line 2581
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_1

    #@14
    .line 2582
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
    .line 2579
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 2584
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 2574
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
    .line 241
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 242
    :try_start_0
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v0, "LocationManagerService"

    #@c
    const-string/jumbo v2, "systemReady()"

    #@f
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@1a
    .line 248
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
    .line 251
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
    .line 254
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
    .line 255
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
    .line 256
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@4e
    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    #@51
    .line 257
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
    .line 261
    new-instance v6, Lcom/android/server/LocationManagerService$3;

    #@5e
    invoke-direct {v6, p0}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;)V

    #@61
    .line 271
    .local v6, "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@63
    const/4 v2, 0x0

    #@64
    const/4 v5, 0x0

    #@65
    invoke-virtual {v0, v2, v5, v6}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    #@68
    .line 274
    new-instance v7, Lcom/android/server/LocationManagerService$4;

    #@6a
    invoke-direct {v7, p0}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;)V

    #@6d
    .line 282
    .local v7, "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6f
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    #@72
    .line 284
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
    .line 285
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    #@81
    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    #@84
    .line 288
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    #@87
    .line 289
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8a
    monitor-exit v1

    #@8b
    .line 293
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@8d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@90
    move-result-object v0

    #@91
    .line 294
    const-string/jumbo v1, "location_providers_allowed"

    #@94
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@97
    move-result-object v1

    #@98
    .line 295
    new-instance v2, Lcom/android/server/LocationManagerService$5;

    #@9a
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@9c
    invoke-direct {v2, p0, v5}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    #@9f
    .line 302
    const/4 v5, -0x1

    #@a0
    .line 293
    invoke-virtual {v0, v1, v8, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@a3
    .line 303
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
    .line 306
    new-instance v3, Landroid/content/IntentFilter;

    #@b2
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@b5
    .line 307
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@b8
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@bb
    .line 308
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@be
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c1
    .line 309
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@c4
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c7
    .line 311
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    #@c9
    new-instance v1, Lcom/android/server/LocationManagerService$6;

    #@cb
    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;)V

    #@ce
    .line 322
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@d0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@d2
    .line 311
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@d5
    .line 240
    return-void

    #@d6
    .line 241
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v6    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    .end local v7    # "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    :catchall_0
    move-exception v0

    #@d7
    monitor-exit v1

    #@d8
    throw v0
.end method

.method updateUserProfiles(I)V
    .locals 5
    .param p1, "currentUserId"    # I

    #@0
    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 334
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 335
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@c
    move-result v2

    #@d
    new-array v2, v2, [I

    #@f
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    #@11
    .line 336
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    #@14
    array-length v2, v2

    #@15
    if-ge v0, v2, :cond_0

    #@17
    .line 337
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    #@19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/content/pm/UserInfo;

    #@1f
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    #@21
    aput v2, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 336
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    :cond_0
    monitor-exit v3

    #@27
    .line 332
    return-void

    #@28
    .line 334
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method
