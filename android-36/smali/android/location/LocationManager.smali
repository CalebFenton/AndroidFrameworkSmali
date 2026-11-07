.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$LocationEnabledCache;,
        Landroid/location/LocationManager$GetCurrentLocationTransport;,
        Landroid/location/LocationManager$LocationListenerTransport;,
        Landroid/location/LocationManager$GpsStatusTransport;,
        Landroid/location/LocationManager$GnssLazyLoader;,
        Landroid/location/LocationManager$GnssStatusTransportManager;,
        Landroid/location/LocationManager$GnssStatusTransport;,
        Landroid/location/LocationManager$GnssNmeaTransportManager;,
        Landroid/location/LocationManager$GnssNmeaTransport;,
        Landroid/location/LocationManager$GnssMeasurementsTransportManager;,
        Landroid/location/LocationManager$GnssMeasurementsTransport;,
        Landroid/location/LocationManager$GnssAntennaTransportManager;,
        Landroid/location/LocationManager$GnssAntennaInfoTransport;,
        Landroid/location/LocationManager$GnssNavigationTransportManager;,
        Landroid/location/LocationManager$GnssNavigationTransport;,
        Landroid/location/LocationManager$ProviderRequestLazyLoader;,
        Landroid/location/LocationManager$ProviderRequestTransportManager;,
        Landroid/location/LocationManager$ProviderRequestTransport;,
        Landroid/location/LocationManager$BatchedLocationCallbackTransport;,
        Landroid/location/LocationManager$BatchedLocationCallbackWrapper;,
        Landroid/location/LocationManager$GpsAdapter;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ADAS_GNSS_ENABLED_CHANGED:Ljava/lang/String; = "android.location.action.ADAS_GNSS_ENABLED_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_GNSS_CAPABILITIES_CHANGED:Ljava/lang/String; = "android.location.action.GNSS_CAPABILITIES_CHANGED"

.field public static final blacklist BLOCK_GPS_STATUS_USAGE:J = 0x895af92L

.field public static final blacklist BLOCK_IMMUTABLE_PENDING_INTENTS:J = 0xa3618e8L

.field public static final blacklist BLOCK_INCOMPLETE_LOCATIONS:J = 0x8e105b9L

.field public static final blacklist BLOCK_PENDING_INTENT_SYSTEM_API_USAGE:J = 0xa204608L

.field public static final blacklist BLOCK_UNTARGETED_PENDING_INTENTS:J = 0x8e10106L

.field private static final blacklist CACHE_KEY_LOCATION_ENABLED_PROPERTY:Ljava/lang/String;

.field public static final blacklist DELIVER_HISTORICAL_LOCATIONS:J = 0x45c18f6L

.field public static final whitelist EXTRA_ADAS_GNSS_ENABLED:Ljava/lang/String; = "android.location.extra.ADAS_GNSS_ENABLED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_GNSS_CAPABILITIES:Ljava/lang/String; = "android.location.extra.GNSS_CAPABILITIES"

.field public static final whitelist EXTRA_LOCATION_ENABLED:Ljava/lang/String; = "android.location.extra.LOCATION_ENABLED"

.field public static final whitelist EXTRA_PROVIDER_ENABLED:Ljava/lang/String; = "android.location.extra.PROVIDER_ENABLED"

.field public static final whitelist EXTRA_PROVIDER_NAME:Ljava/lang/String; = "android.location.extra.PROVIDER_NAME"

.field public static final whitelist FUSED_PROVIDER:Ljava/lang/String; = "fused"

.field public static final blacklist GET_PROVIDER_SECURITY_EXCEPTIONS:J = 0x8ff173aL

.field public static final whitelist GPS_HARDWARE_PROVIDER:Ljava/lang/String; = "gps_hardware"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final greylist-max-o HIGH_POWER_REQUEST_CHANGE_ACTION:Ljava/lang/String; = "android.location.HIGH_POWER_REQUEST_CHANGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_FLUSH_COMPLETE:Ljava/lang/String; = "flushComplete"

.field public static final whitelist KEY_LOCATIONS:Ljava/lang/String; = "locations"

.field public static final whitelist KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final whitelist KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final whitelist KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final whitelist KEY_STATUS_CHANGED:Ljava/lang/String; = "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist MAX_SINGLE_LOCATION_TIMEOUT_MS:J = 0x7530L

.field public static final blacklist METADATA_SETTINGS_FOOTER_HTML:Ljava/lang/String; = "com.android.settings.location.FOOTER_HTML"

.field public static final greylist-max-o METADATA_SETTINGS_FOOTER_STRING:Ljava/lang/String; = "com.android.settings.location.FOOTER_STRING"

.field public static final whitelist MODE_CHANGED_ACTION:Ljava/lang/String; = "android.location.MODE_CHANGED"

.field public static final whitelist NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final whitelist PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field public static final whitelist PROVIDERS_CHANGED_ACTION:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field public static final greylist-max-o SETTINGS_FOOTER_DISPLAYED_ACTION:Ljava/lang/String; = "com.android.settings.location.DISPLAYED_FOOTER"

.field private static volatile blacklist sLocationEnabledCache:Landroid/location/LocationManager$LocationEnabledCache;

.field private static final blacklist sLocationListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/location/LocationListener;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/location/LocationManager$LocationListenerTransport;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field final blacklist mService:Landroid/location/ILocationManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetCACHE_KEY_LOCATION_ENABLED_PROPERTY()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/location/LocationManager;->CACHE_KEY_LOCATION_ENABLED_PROPERTY:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 453
    nop

    .line 454
    const-string v0, "location_enabled"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->createSystemCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/location/LocationManager;->CACHE_KEY_LOCATION_ENABLED_PROPERTY:Ljava/lang/String;

    .line 465
    new-instance v0, Landroid/location/LocationManager$LocationEnabledCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/location/LocationManager$LocationEnabledCache;-><init>(I)V

    sput-object v0, Landroid/location/LocationManager;->sLocationEnabledCache:Landroid/location/LocationManager$LocationEnabledCache;

    .line 470
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/location/ILocationManager;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 499
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/ILocationManager;

    iput-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 500
    return-void
.end method

.method public static blacklist disableLocalLocationEnabledCaches()V
    .registers 1

    .line 3740
    const/4 v0, 0x0

    sput-object v0, Landroid/location/LocationManager;->sLocationEnabledCache:Landroid/location/LocationManager$LocationEnabledCache;

    .line 3741
    return-void
.end method

.method static blacklist getService()Landroid/location/ILocationManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    :try_start_0
    const-string v0, "location"

    .line 459
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 458
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 460
    :catch_b
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist invalidateLocalLocationEnabledCaches()V
    .registers 1

    .line 3733
    sget-object v0, Landroid/location/LocationManager;->CACHE_KEY_LOCATION_ENABLED_PROPERTY:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3734
    return-void
.end method


# virtual methods
.method public greylist addGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2651
    const/4 v0, 0x0

    return v0
.end method

.method public greylist addGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2864
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2447
    const-wide/32 v0, 0x895af92

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_21

    .line 2452
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;

    new-instance v1, Landroid/location/LocationManager$GpsStatusTransport;

    new-instance v2, Landroid/os/HandlerExecutor;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, p1}, Landroid/location/LocationManager$GpsStatusTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GpsStatus$Listener;)V

    invoke-virtual {v0, p1, v1}, Landroid/location/LocationManager$GnssStatusTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2454
    const/4 v0, 0x1

    return v0

    .line 2448
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GpsStatus APIs not supported, please use GnssStatus APIs instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2558
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z
    .registers 4
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2604
    if-nez p2, :cond_8

    .line 2605
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 2608
    :cond_8
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->addNmeaListener(Ljava/util/concurrent/Executor;Landroid/location/OnNmeaMessageListener;)Z

    move-result v0

    return v0
.end method

.method public whitelist addNmeaListener(Ljava/util/concurrent/Executor;Landroid/location/OnNmeaMessageListener;)Z
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/location/OnNmeaMessageListener;

    .line 2627
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNmeaListeners:Landroid/location/LocationManager$GnssNmeaTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssNmeaTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p2}, Landroid/location/LocationManager$GnssNmeaTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/OnNmeaMessageListener;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$GnssNmeaTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2629
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist addProviderRequestChangedListener(Ljava/util/concurrent/Executor;Landroid/location/provider/ProviderRequest$ChangedListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/location/provider/ProviderRequest$ChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2975
    sget-object v0, Landroid/location/LocationManager$ProviderRequestLazyLoader;->sProviderRequestListeners:Landroid/location/LocationManager$ProviderRequestTransportManager;

    new-instance v1, Landroid/location/LocationManager$ProviderRequestTransport;

    invoke-direct {v1, p1, p2}, Landroid/location/LocationManager$ProviderRequestTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/location/provider/ProviderRequest$ChangedListener;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$ProviderRequestTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2977
    return-void
.end method

.method public whitelist addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .registers 20
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expiration"    # J
    .param p8, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 2290
    move-object/from16 v1, p8

    const/4 v0, 0x1

    if-eqz v1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    const-string v3, "invalid null pending intent"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2292
    const-wide/32 v2, 0x8e10106

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2293
    invoke-virtual {v1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v2

    const-string v3, "pending intent must be targeted to a package"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2297
    :cond_1f
    const-wide/32 v2, 0xa3618e8

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2298
    invoke-virtual {v1}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v2

    xor-int/2addr v0, v2

    const-string v2, "pending intent must be mutable"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2302
    :cond_32
    const-wide/16 v2, 0x0

    cmp-long v0, p6, v2

    if-gez v0, :cond_3f

    .line 2303
    const-wide v2, 0x7fffffffffffffffL

    move-wide v9, v2

    .end local p6    # "expiration":J
    .local v2, "expiration":J
    goto :goto_41

    .line 2302
    .end local v2    # "expiration":J
    .restart local p6    # "expiration":J
    :cond_3f
    move-wide/from16 v9, p6

    .line 2307
    .end local p6    # "expiration":J
    .local v9, "expiration":J
    :goto_41
    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    :try_start_45
    invoke-static/range {v4 .. v10}, Landroid/location/Geofence;->createCircle(DDFJ)Landroid/location/Geofence;

    move-result-object v0

    .line 2308
    .local v0, "fence":Landroid/location/Geofence;
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2309
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2308
    invoke-interface {v2, v0, v1, v3, v4}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_5a} :catch_5c

    .line 2312
    .end local v0    # "fence":Landroid/location/Geofence;
    nop

    .line 2313
    return-void

    .line 2310
    :catch_5c
    move-exception v0

    .line 2311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "properties"    # Landroid/location/provider/ProviderProperties;

    .line 2111
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 2112
    return-void
.end method

.method public whitelist addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V
    .registers 12
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "properties"    # Landroid/location/provider/ProviderProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/provider/ProviderProperties;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2130
    .local p3, "extraAttributionTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2131
    if-eqz p2, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    const-string v3, "invalid null properties"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2132
    if-eqz p3, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    const-string v1, "invalid null extra attribution tags"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2136
    :try_start_1f
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2137
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_32} :catch_3c

    .line 2136
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "properties":Landroid/location/provider/ProviderProperties;
    .local v3, "provider":Ljava/lang/String;
    .local v4, "properties":Landroid/location/provider/ProviderProperties;
    :try_start_34
    invoke-interface/range {v2 .. v7}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_39

    .line 2140
    nop

    .line 2141
    return-void

    .line 2138
    :catch_39
    move-exception v0

    move-object p1, v0

    goto :goto_40

    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "properties":Landroid/location/provider/ProviderProperties;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "properties":Landroid/location/provider/ProviderProperties;
    :catch_3c
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object p1, v0

    .line 2139
    .end local p2    # "properties":Landroid/location/provider/ProviderProperties;
    .restart local v3    # "provider":Ljava/lang/String;
    .restart local v4    # "properties":Landroid/location/provider/ProviderProperties;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_40
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .registers 12
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "requiresNetwork"    # Z
    .param p3, "requiresSatellite"    # Z
    .param p4, "requiresCell"    # Z
    .param p5, "hasMonetaryCost"    # Z
    .param p6, "supportsAltitude"    # Z
    .param p7, "supportsSpeed"    # Z
    .param p8, "supportsBearing"    # Z
    .param p9, "powerUsage"    # I
    .param p10, "accuracy"    # I

    .line 2085
    new-instance v0, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v0}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 2086
    invoke-virtual {v0, p2}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2087
    invoke-virtual {v0, p3}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2088
    invoke-virtual {v0, p4}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2089
    invoke-virtual {v0, p5}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2090
    invoke-virtual {v0, p6}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2091
    invoke-virtual {v0, p7}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2092
    invoke-virtual {v0, p8}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2093
    invoke-virtual {v0, p9}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2094
    invoke-virtual {v0, p10}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2095
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v0

    .line 2085
    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V

    .line 2096
    return-void
.end method

.method public whitelist clearTestProviderEnabled(Ljava/lang/String;)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 2239
    return-void
.end method

.method public whitelist clearTestProviderLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2206
    return-void
.end method

.method public whitelist clearTestProviderStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2256
    return-void
.end method

.method public whitelist flushGnssBatch()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3074
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->flushGnssBatch()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3077
    nop

    .line 3078
    return-void

    .line 3075
    :catch_7
    move-exception v0

    .line 3076
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAdasAllowlist()Landroid/os/PackageTagsList;
    .registers 3

    .line 544
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 545
    :catch_7
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1825
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1826
    :catch_7
    move-exception v0

    .line 1827
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .registers 3

    .line 508
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 509
    :catch_7
    move-exception v0

    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 5
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1894
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null criteria"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1897
    :try_start_a
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 1898
    :catch_11
    move-exception v0

    .line 1899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCurrentLocation(Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    .local p4, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 982
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "locationRequest":Landroid/location/LocationRequest;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    .local v3, "locationRequest":Landroid/location/LocationRequest;
    .local v4, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 984
    return-void
.end method

.method public whitelist getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroid/location/LocationRequest;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/LocationRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1027
    .local p5, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1028
    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const-string v1, "invalid null location request"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1030
    if-eqz p3, :cond_1a

    .line 1031
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1034
    :cond_1a
    new-instance v0, Landroid/location/LocationManager$GetCurrentLocationTransport;

    invoke-direct {v0, p4, p5, p3}, Landroid/location/LocationManager$GetCurrentLocationTransport;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/CancellationSignal;)V

    move-object v4, v0

    .line 1039
    .local v4, "transport":Landroid/location/LocationManager$GetCurrentLocationTransport;
    :try_start_20
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 1040
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 1041
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {p5}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_32} :catch_42

    .line 1039
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "locationRequest":Landroid/location/LocationRequest;
    .local v2, "provider":Ljava/lang/String;
    .local v3, "locationRequest":Landroid/location/LocationRequest;
    :try_start_34
    invoke-interface/range {v1 .. v7}, Landroid/location/ILocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object p1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_38} :catch_3f

    .line 1044
    .local p1, "cancelRemote":Landroid/os/ICancellationSignal;
    nop

    .line 1046
    if-eqz p3, :cond_3e

    .line 1047
    invoke-virtual {p3, p1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1049
    :cond_3e
    return-void

    .line 1042
    .end local p1    # "cancelRemote":Landroid/os/ICancellationSignal;
    :catch_3f
    move-exception v0

    move-object p1, v0

    goto :goto_46

    .end local v2    # "provider":Ljava/lang/String;
    .end local v3    # "locationRequest":Landroid/location/LocationRequest;
    .local p1, "provider":Ljava/lang/String;
    .restart local p2    # "locationRequest":Landroid/location/LocationRequest;
    :catch_42
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object p1, v0

    .line 1043
    .end local p2    # "locationRequest":Landroid/location/LocationRequest;
    .restart local v2    # "provider":Ljava/lang/String;
    .restart local v3    # "locationRequest":Landroid/location/LocationRequest;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_46
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 947
    .local p4, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 949
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v5

    .line 947
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    .local v4, "provider":Ljava/lang/String;
    .local v6, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    .local v8, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 951
    return-void
.end method

.method public whitelist getExtraLocationControllerPackage()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 558
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getExtraLocationControllerPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 559
    :catch_7
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssAntennaInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    .line 2390
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2391
    :catch_7
    move-exception v0

    .line 2392
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssBatchSize()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3012
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssBatchSize()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3013
    :catch_7
    move-exception v0

    .line 3014
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssCapabilities()Landroid/location/GnssCapabilities;
    .registers 3

    .line 2348
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2349
    :catch_7
    move-exception v0

    .line 2350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssHardwareModelName()Ljava/lang/String;
    .registers 3

    .line 2375
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2376
    :catch_7
    move-exception v0

    .line 2377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssYearOfHardware()I
    .registers 3

    .line 2360
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssYearOfHardware()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2361
    :catch_7
    move-exception v0

    .line 2362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .registers 4
    .param p1, "status"    # Landroid/location/GpsStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2413
    const-wide/32 v0, 0x895af92

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_21

    .line 2418
    sget-object v0, Landroid/location/LocationManager$GpsStatusTransport;->sGnssStatus:Landroid/location/GnssStatus;

    .line 2419
    .local v0, "gnssStatus":Landroid/location/GnssStatus;
    sget v1, Landroid/location/LocationManager$GpsStatusTransport;->sTtff:I

    .line 2420
    .local v1, "ttff":I
    if-eqz v0, :cond_1a

    .line 2421
    if-nez p1, :cond_16

    .line 2422
    invoke-static {v0, v1}, Landroid/location/GpsStatus;->create(Landroid/location/GnssStatus;I)Landroid/location/GpsStatus;

    move-result-object p1

    goto :goto_20

    .line 2424
    :cond_16
    invoke-virtual {p1, v0, v1}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GnssStatus;I)V

    goto :goto_20

    .line 2426
    :cond_1a
    if-nez p1, :cond_20

    .line 2429
    invoke-static {}, Landroid/location/GpsStatus;->createEmpty()Landroid/location/GpsStatus;

    move-result-object p1

    .line 2431
    :cond_20
    :goto_20
    return-object p1

    .line 2414
    .end local v0    # "gnssStatus":Landroid/location/GnssStatus;
    .end local v1    # "ttff":I
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GpsStatus APIs not supported, please use GnssStatus APIs instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .registers 3

    .line 531
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 532
    :catch_7
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIgnoreSettingsWhitelist()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 886
    new-instance v0, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v0}, Landroid/location/LastLocationRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastKnownLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;)Landroid/location/Location;
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "lastLocationRequest"    # Landroid/location/LastLocationRequest;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 914
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 915
    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const-string v1, "invalid null last location request"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 919
    :try_start_15
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 920
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 919
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/location/ILocationManager;->getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_27} :catch_28

    return-object v0

    .line 921
    :catch_28
    move-exception v0

    .line 922
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getLastLocation()Landroid/location/Location;
    .registers 2

    .line 861
    const-string v0, "fused"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1918
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1920
    const-wide/32 v0, 0x8ff173a

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_54

    .line 1921
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    if-nez v0, :cond_35

    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_35

    .line 1930
    :cond_27
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_54

    .line 1923
    :cond_35
    :goto_35
    :try_start_35
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1924
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1923
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_42} :catch_43

    goto :goto_53

    .line 1925
    :catch_43
    move-exception v0

    .line 1926
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1927
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1926
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1928
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_53
    nop

    .line 1936
    :cond_54
    :goto_54
    :try_start_54
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;

    move-result-object v0

    .line 1937
    .local v0, "properties":Landroid/location/provider/ProviderProperties;
    new-instance v2, Landroid/location/LocationProvider;

    invoke-direct {v2, p1, v0}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_5f} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5f} :catch_60

    return-object v2

    .line 1941
    .end local v0    # "properties":Landroid/location/provider/ProviderProperties;
    :catch_60
    move-exception v0

    .line 1942
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1938
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_66
    move-exception v0

    .line 1940
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v1
.end method

.method public blacklist getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2040
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->getProviderPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2041
    :catch_7
    move-exception v0

    .line 2042
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .line 1958
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1961
    :try_start_a
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 1962
    :catch_11
    move-exception v0

    .line 1963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 5
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1859
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null criteria"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1862
    :try_start_a
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 1863
    :catch_11
    move-exception v0

    .line 1864
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProviders(Z)Ljava/util/List;
    .registers 4
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1840
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 1841
    :catch_8
    move-exception v0

    .line 1842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasProvider(Ljava/lang/String;)Z
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .line 1808
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1811
    :try_start_a
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->hasProvider(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 1812
    :catch_11
    move-exception v0

    .line 1813
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .registers 4
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2802
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2804
    :try_start_8
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    .line 2807
    nop

    .line 2808
    return-void

    .line 2805
    :catch_f
    move-exception v0

    .line 2806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o injectLocation(Landroid/location/Location;)Z
    .registers 5
    .param p1, "location"    # Landroid/location/Location;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1672
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "invalid null location"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1673
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v1

    const-string v2, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1677
    :try_start_14
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->injectLocation(Landroid/location/Location;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 1678
    return v0

    .line 1679
    :catch_1a
    move-exception v0

    .line 1680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAdasGnssLocationEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 712
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->isAdasGnssLocationEnabledForUser(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 713
    :catch_11
    move-exception v0

    .line 714
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAutomotiveGnssSuspended()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 841
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->isAutomotiveGnssSuspended()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 842
    :catch_7
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isExtraLocationControllerPackageEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 602
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->isExtraLocationControllerPackageEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 603
    :catch_7
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isLocationEnabled()Z
    .registers 2

    .line 651
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist isLocationEnabledForUser(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 668
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ltz v0, :cond_1d

    .line 669
    sget-object v0, Landroid/location/LocationManager;->sLocationEnabledCache:Landroid/location/LocationManager$LocationEnabledCache;

    .line 670
    .local v0, "cache":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_1d

    .line 671
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 676
    .end local v0    # "cache":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->isLocationEnabledForUser(I)Z

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_27} :catch_28

    return v0

    .line 677
    :catch_28
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isProviderEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 751
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->isProviderEnabledForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProviderEnabledForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 773
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 776
    :try_start_a
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return v0

    .line 777
    :catch_15
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isProviderPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1978
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isProviderPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1999
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2019
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1, p3}, Landroid/location/ILocationManager;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 2021
    :catch_d
    move-exception v0

    .line 2022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerAntennaInfoListener(Ljava/util/concurrent/Executor;Landroid/location/GnssAntennaInfo$Listener;)Z
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/location/GnssAntennaInfo$Listener;

    .line 2840
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssAntennaInfoListeners:Landroid/location/LocationManager$GnssAntennaTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssAntennaInfoTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p2}, Landroid/location/LocationManager$GnssAntennaInfoTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssAntennaInfo$Listener;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$GnssAntennaTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2842
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerGnssBatchedLocationCallback(JZLandroid/location/BatchedLocationCallback;Landroid/os/Handler;)Z
    .registers 13
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z
    .param p4, "callback"    # Landroid/location/BatchedLocationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3043
    if-nez p5, :cond_8

    .line 3044
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p5, v0

    .line 3048
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    new-instance v3, Landroid/location/LocationManager$BatchedLocationCallbackTransport;

    invoke-direct {v3, p4, p5}, Landroid/location/LocationManager$BatchedLocationCallbackTransport;-><init>(Landroid/location/BatchedLocationCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 3051
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 3052
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 3053
    invoke-static {p4}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1f} :catch_28

    .line 3048
    move-wide v1, p1

    .end local p1    # "periodNanos":J
    .local v1, "periodNanos":J
    :try_start_20
    invoke-interface/range {v0 .. v6}, Landroid/location/ILocationManager;->startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_25

    .line 3054
    const/4 p1, 0x1

    return p1

    .line 3055
    :catch_25
    move-exception v0

    move-object p1, v0

    goto :goto_2b

    .end local v1    # "periodNanos":J
    .restart local p1    # "periodNanos":J
    :catch_28
    move-exception v0

    move-wide v1, p1

    move-object p1, v0

    .line 3056
    .restart local v1    # "periodNanos":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .registers 7
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 2784
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssMeasurementsListeners:Landroid/location/LocationManager$GnssMeasurementsTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssMeasurementsTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p2, v2, p1, p3}, Landroid/location/LocationManager$GnssMeasurementsTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssMeasurementRequest;Landroid/location/GnssMeasurementsEvent$Callback;)V

    invoke-virtual {v0, p3, v1}, Landroid/location/LocationManager$GnssMeasurementsTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2786
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2682
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z
    .registers 5
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2701
    if-nez p2, :cond_8

    .line 2702
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 2705
    :cond_8
    new-instance v0, Landroid/location/GnssMeasurementRequest$Builder;

    invoke-direct {v0}, Landroid/location/GnssMeasurementRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/location/GnssMeasurementRequest$Builder;->build()Landroid/location/GnssMeasurementRequest;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, p1}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssMeasurementsCallback(Landroid/location/GnssRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .registers 5
    .param p1, "request"    # Landroid/location/GnssRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2761
    invoke-virtual {p1}, Landroid/location/GnssRequest;->toGnssMeasurementRequest()Landroid/location/GnssMeasurementRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssMeasurementsCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 2734
    new-instance v0, Landroid/location/GnssMeasurementRequest$Builder;

    invoke-direct {v0}, Landroid/location/GnssMeasurementRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/location/GnssMeasurementRequest$Builder;->build()Landroid/location/GnssMeasurementRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2895
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssNavigationMessage$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;Landroid/os/Handler;)Z
    .registers 4
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2915
    if-nez p2, :cond_8

    .line 2916
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 2919
    :cond_8
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssNavigationMessage$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssNavigationMessageCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssNavigationMessage$Callback;)Z
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 2941
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNavigationListeners:Landroid/location/LocationManager$GnssNavigationTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssNavigationTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p2}, Landroid/location/LocationManager$GnssNavigationTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssNavigationMessage$Callback;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$GnssNavigationTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2943
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2493
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z
    .registers 4
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2512
    if-nez p2, :cond_8

    .line 2513
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 2516
    :cond_8
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssStatusCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/location/GnssStatus$Callback;

    .line 2535
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p2}, Landroid/location/LocationManager$GnssStatusTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssStatus$Callback;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$GnssStatusTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2537
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2663
    return-void
.end method

.method public greylist removeGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2876
    return-void
.end method

.method public whitelist removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .registers 4
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2467
    const-wide/32 v0, 0x895af92

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2472
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssStatusTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2473
    return-void

    .line 2468
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GpsStatus APIs not supported, please use GnssStatus APIs instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2567
    return-void
.end method

.method public whitelist removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;

    .line 2638
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNmeaListeners:Landroid/location/LocationManager$GnssNmeaTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssNmeaTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2639
    return-void
.end method

.method public whitelist removeProviderRequestChangedListener(Landroid/location/provider/ProviderRequest$ChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/provider/ProviderRequest$ChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2994
    sget-object v0, Landroid/location/LocationManager$ProviderRequestLazyLoader;->sProviderRequestListeners:Landroid/location/LocationManager$ProviderRequestTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$ProviderRequestTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2995
    return-void
.end method

.method public whitelist removeProximityAlert(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 2332
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null pending intent"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2335
    :try_start_a
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/app/PendingIntent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 2338
    nop

    .line 2339
    return-void

    .line 2336
    :catch_11
    move-exception v0

    .line 2337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeTestProvider(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 2155
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2158
    :try_start_a
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2159
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2158
    invoke-interface {v0, p1, v1, v2}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_1d

    .line 2162
    nop

    .line 2163
    return-void

    .line 2160
    :catch_1d
    move-exception v0

    .line 2161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeUpdates(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 1789
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null pending intent"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1792
    :try_start_a
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 1795
    nop

    .line 1796
    return-void

    .line 1793
    :catch_11
    move-exception v0

    .line 1794
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeUpdates(Landroid/location/LocationListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/location/LocationListener;

    .line 1762
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null listener"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1765
    :try_start_a
    sget-object v0, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_2f

    .line 1766
    :try_start_d
    sget-object v1, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1767
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$LocationListenerTransport;

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 1768
    .local v2, "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :goto_1f
    if-eqz v2, :cond_29

    .line 1769
    invoke-virtual {v2}, Landroid/location/LocationManager$LocationListenerTransport;->unregister()V

    .line 1770
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2}, Landroid/location/ILocationManager;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    .line 1772
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .end local v2    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :cond_29
    monitor-exit v0

    .line 1775
    nop

    .line 1776
    return-void

    .line 1772
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2c

    .end local p0    # "this":Landroid/location/LocationManager;
    .end local p1    # "listener":Landroid/location/LocationListener;
    :try_start_2e
    throw v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 1773
    .restart local p0    # "this":Landroid/location/LocationManager;
    .restart local p1    # "listener":Landroid/location/LocationListener;
    :catch_2f
    move-exception v0

    .line 1774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "requestCode"    # I

    .line 1736
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1737
    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const-string v1, "invalid null pending intent"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1740
    :try_start_15
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationManager;->requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 1743
    nop

    .line 1744
    return-void

    .line 1741
    :catch_1c
    move-exception v0

    .line 1742
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestFlush(Ljava/lang/String;Landroid/location/LocationListener;I)V
    .registers 9
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "requestCode"    # I

    .line 1702
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1703
    if-eqz p2, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    const-string v3, "invalid null listener"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1705
    sget-object v2, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 1706
    :try_start_19
    sget-object v3, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1707
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager$LocationListenerTransport;

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    .line 1709
    .local v4, "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :goto_2b
    if-eqz v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    const-string v1, "unregistered listener cannot be flushed"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_42

    .line 1713
    :try_start_34
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, v4, p3}, Landroid/location/ILocationManager;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3c
    .catchall {:try_start_34 .. :try_end_39} :catchall_42

    .line 1716
    nop

    .line 1717
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .end local v4    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :try_start_3a
    monitor-exit v2

    .line 1718
    return-void

    .line 1714
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .restart local v4    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :catch_3c
    move-exception v0

    .line 1715
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/location/LocationManager;
    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "listener":Landroid/location/LocationListener;
    .end local p3    # "requestCode":I
    throw v1

    .line 1717
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .end local v4    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    .restart local p0    # "this":Landroid/location/LocationManager;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "listener":Landroid/location/LocationListener;
    .restart local p3    # "requestCode":I
    :catchall_42
    move-exception v0

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw v0
.end method

.method public whitelist requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "minTimeMs"    # J
    .param p3, "minDistanceM"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1413
    const/4 v0, 0x0

    if-eqz p4, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1414
    nop

    .line 1416
    invoke-static {p4, p1, p2, p3, v0}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1414
    const-string v1, "fused"

    invoke-virtual {p0, v1, v0, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1418
    return-void
.end method

.method public whitelist requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 15
    .param p1, "minTimeMs"    # J
    .param p3, "minDistanceM"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1313
    new-instance v0, Landroid/os/Handler;

    if-nez p6, :cond_8

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_b

    :cond_8
    invoke-direct {v0, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1314
    .local v0, "handler":Landroid/os/Handler;
    :goto_b
    new-instance v6, Landroid/os/HandlerExecutor;

    invoke-direct {v6, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    .end local p1    # "minTimeMs":J
    .end local p3    # "minDistanceM":F
    .end local p4    # "criteria":Landroid/location/Criteria;
    .end local p5    # "listener":Landroid/location/LocationListener;
    .local v2, "minTimeMs":J
    .local v4, "minDistanceM":F
    .local v5, "criteria":Landroid/location/Criteria;
    .local v7, "listener":Landroid/location/LocationListener;
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1316
    return-void
.end method

.method public whitelist requestLocationUpdates(JFLandroid/location/Criteria;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V
    .registers 10
    .param p1, "minTimeMs"    # J
    .param p3, "minDistanceM"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/location/LocationListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1351
    const/4 v0, 0x0

    if-eqz p4, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1353
    nop

    .line 1355
    invoke-static {p4, p1, p2, p3, v0}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1353
    const-string v1, "fused"

    invoke-virtual {p0, v1, v0, p5, p6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1358
    return-void
.end method

.method public whitelist requestLocationUpdates(Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1511
    if-nez p1, :cond_6

    .line 1512
    invoke-static {}, Landroid/location/LocationRequest;->create()Landroid/location/LocationRequest;

    move-result-object p1

    .line 1514
    :cond_6
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1515
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1516
    return-void
.end method

.method public whitelist requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 6
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1451
    new-instance v0, Landroid/os/Handler;

    if-nez p3, :cond_8

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_b

    :cond_8
    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1452
    .local v0, "handler":Landroid/os/Handler;
    :goto_b
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v1, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1453
    return-void
.end method

.method public whitelist requestLocationUpdates(Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V
    .registers 5
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/location/LocationListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1481
    if-nez p1, :cond_6

    .line 1482
    invoke-static {}, Landroid/location/LocationRequest;->create()Landroid/location/LocationRequest;

    move-result-object p1

    .line 1484
    :cond_6
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1485
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1486
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .registers 9
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTimeMs"    # J
    .param p4, "minDistanceM"    # F
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 1379
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1381
    nop

    .line 1383
    invoke-static {p1, p2, p3, p4, v0}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1381
    invoke-virtual {p0, p1, v0, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1385
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .registers 13
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTimeMs"    # J
    .param p4, "minDistanceM"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;

    .line 1214
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "minTimeMs":J
    .end local p4    # "minDistanceM":F
    .end local p5    # "listener":Landroid/location/LocationListener;
    .local v1, "provider":Ljava/lang/String;
    .local v2, "minTimeMs":J
    .local v4, "minDistanceM":F
    .local v5, "listener":Landroid/location/LocationListener;
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1215
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 15
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTimeMs"    # J
    .param p4, "minDistanceM"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .line 1242
    new-instance v0, Landroid/os/Handler;

    if-nez p6, :cond_8

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_b

    :cond_8
    invoke-direct {v0, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1243
    .local v0, "handler":Landroid/os/Handler;
    :goto_b
    new-instance v6, Landroid/os/HandlerExecutor;

    invoke-direct {v6, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v7, p5

    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "minTimeMs":J
    .end local p4    # "minDistanceM":F
    .end local p5    # "listener":Landroid/location/LocationListener;
    .local v2, "provider":Ljava/lang/String;
    .local v3, "minTimeMs":J
    .local v5, "minDistanceM":F
    .local v7, "listener":Landroid/location/LocationListener;
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLjava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1245
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;JFLjava/util/concurrent/Executor;Landroid/location/LocationListener;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTimeMs"    # J
    .param p4, "minDistanceM"    # F
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/location/LocationListener;

    .line 1276
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1278
    nop

    .line 1280
    invoke-static {p1, p2, p3, p4, v0}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1278
    invoke-virtual {p0, p1, v0, p5, p6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1283
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .registers 12
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroid/location/LocationRequest;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 1629
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1630
    if-eqz p2, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    const-string v3, "invalid null location request"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1631
    if-eqz p3, :cond_19

    move v0, v1

    :cond_19
    const-string v2, "invalid null pending intent"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1633
    const-wide/32 v2, 0x8e10106

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1634
    invoke-virtual {p3}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v0

    const-string v2, "pending intent must be targeted to a package"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1638
    :cond_30
    const-wide/32 v2, 0xa3618e8

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1639
    invoke-virtual {p3}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "pending intent must be mutable"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1644
    :cond_43
    :try_start_43
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 1645
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_51} :catch_5c

    .line 1644
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "locationRequest":Landroid/location/LocationRequest;
    .end local p3    # "pendingIntent":Landroid/app/PendingIntent;
    .local v3, "provider":Ljava/lang/String;
    .local v4, "locationRequest":Landroid/location/LocationRequest;
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_54
    invoke-interface/range {v2 .. v7}, Landroid/location/ILocationManager;->registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_59

    .line 1648
    nop

    .line 1649
    return-void

    .line 1646
    :catch_59
    move-exception v0

    move-object p1, v0

    goto :goto_61

    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "locationRequest":Landroid/location/LocationRequest;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "locationRequest":Landroid/location/LocationRequest;
    .restart local p3    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_5c
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 1647
    .end local p2    # "locationRequest":Landroid/location/LocationRequest;
    .end local p3    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v3    # "provider":Ljava/lang/String;
    .restart local v4    # "locationRequest":Landroid/location/LocationRequest;
    .restart local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_61
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V
    .registers 16
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroid/location/LocationRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/location/LocationListener;

    .line 1580
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1581
    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const-string v1, "invalid null location request"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1584
    :try_start_15
    sget-object v1, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_72

    .line 1585
    :try_start_18
    sget-object v0, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_68

    .line 1587
    .local v0, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    if-eqz v0, :cond_2d

    :try_start_22
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$LocationListenerTransport;

    goto :goto_2e

    .line 1600
    .end local v0    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    :catchall_29
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    goto :goto_6b

    .line 1587
    .restart local v0    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    :cond_2d
    const/4 v2, 0x0

    .line 1588
    .local v2, "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :goto_2e
    if-nez v2, :cond_38

    .line 1589
    new-instance v3, Landroid/location/LocationManager$LocationListenerTransport;

    invoke-direct {v3, p4, p3}, Landroid/location/LocationManager$LocationListenerTransport;-><init>(Landroid/location/LocationListener;Ljava/util/concurrent/Executor;)V
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_29

    move-object v2, v3

    move-object v7, v2

    goto :goto_43

    .line 1591
    :cond_38
    :try_start_38
    invoke-virtual {v2}, Landroid/location/LocationManager$LocationListenerTransport;->isRegistered()Z

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1592
    invoke-virtual {v2, p3}, Landroid/location/LocationManager$LocationListenerTransport;->setExecutor(Ljava/util/concurrent/Executor;)V

    move-object v7, v2

    .line 1595
    .end local v2    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    .local v7, "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :goto_43
    iget-object v4, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 1596
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 1597
    invoke-static {p4}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10
    :try_end_55
    .catchall {:try_start_38 .. :try_end_55} :catchall_68

    .line 1595
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "locationRequest":Landroid/location/LocationRequest;
    .local v5, "provider":Ljava/lang/String;
    .local v6, "locationRequest":Landroid/location/LocationRequest;
    :try_start_57
    invoke-interface/range {v4 .. v10}, Landroid/location/ILocationManager;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    sget-object p1, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p4, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    nop

    .end local v0    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .end local v7    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    monitor-exit v1

    .line 1603
    nop

    .line 1604
    return-void

    .line 1600
    .end local v5    # "provider":Ljava/lang/String;
    .end local v6    # "locationRequest":Landroid/location/LocationRequest;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "locationRequest":Landroid/location/LocationRequest;
    :catchall_68
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "locationRequest":Landroid/location/LocationRequest;
    .restart local v5    # "provider":Ljava/lang/String;
    .restart local v6    # "locationRequest":Landroid/location/LocationRequest;
    :goto_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_57 .. :try_end_6c} :catchall_70

    .end local v5    # "provider":Ljava/lang/String;
    .end local v6    # "locationRequest":Landroid/location/LocationRequest;
    .end local p0    # "this":Landroid/location/LocationManager;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/location/LocationListener;
    :try_start_6c
    throw v0
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6d} :catch_6d

    .line 1601
    .restart local v5    # "provider":Ljava/lang/String;
    .restart local v6    # "locationRequest":Landroid/location/LocationRequest;
    .restart local p0    # "this":Landroid/location/LocationManager;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "listener":Landroid/location/LocationListener;
    :catch_6d
    move-exception v0

    move-object p1, v0

    goto :goto_76

    .line 1600
    :catchall_70
    move-exception v0

    goto :goto_6b

    .line 1601
    .end local v5    # "provider":Ljava/lang/String;
    .end local v6    # "locationRequest":Landroid/location/LocationRequest;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "locationRequest":Landroid/location/LocationRequest;
    :catch_72
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object p1, v0

    .line 1602
    .end local p2    # "locationRequest":Landroid/location/LocationRequest;
    .restart local v5    # "provider":Ljava/lang/String;
    .restart local v6    # "locationRequest":Landroid/location/LocationRequest;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_76
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1178
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1180
    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 1183
    invoke-virtual {v1, p1}, Landroid/location/LocationRequest$Builder;->setQuality(Landroid/location/Criteria;)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 1184
    invoke-virtual {v1, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1185
    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    .line 1180
    const-string v1, "fused"

    invoke-virtual {p0, v1, v0, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1188
    return-void
.end method

.method public whitelist requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 9
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1111
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1113
    new-instance v1, Landroid/os/Handler;

    if-nez p3, :cond_13

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    goto :goto_16

    :cond_13
    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1114
    .local v1, "handler":Landroid/os/Handler;
    :goto_16
    new-instance v2, Landroid/location/LocationRequest$Builder;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 1117
    invoke-virtual {v2, p1}, Landroid/location/LocationRequest$Builder;->setQuality(Landroid/location/Criteria;)Landroid/location/LocationRequest$Builder;

    move-result-object v2

    .line 1118
    invoke-virtual {v2, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1119
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 1114
    const-string v3, "fused"

    invoke-virtual {p0, v3, v0, v2, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1123
    return-void
.end method

.method public whitelist requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1144
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1146
    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 1149
    invoke-virtual {v1, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1150
    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1151
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    .line 1146
    invoke-virtual {p0, p1, v0, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1153
    return-void
.end method

.method public whitelist requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 9
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1072
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1074
    new-instance v1, Landroid/os/Handler;

    if-nez p3, :cond_13

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    goto :goto_16

    :cond_13
    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1075
    .local v1, "handler":Landroid/os/Handler;
    :goto_16
    new-instance v2, Landroid/location/LocationRequest$Builder;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 1078
    invoke-virtual {v2, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1079
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 1075
    invoke-virtual {p0, p1, v0, v2, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1083
    return-void
.end method

.method public whitelist sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2057
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2058
    if-eqz p2, :cond_f

    move v0, v1

    :cond_f
    const-string v2, "invalid null command"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2061
    :try_start_14
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 2062
    return v1

    .line 2063
    :catch_1a
    move-exception v0

    .line 2064
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAdasGnssLocationEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 731
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->setAdasGnssLocationEnabledForUser(ZI)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 734
    nop

    .line 735
    return-void

    .line 732
    :catch_11
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAutomotiveGnssSuspended(Z)V
    .registers 4
    .param p1, "suspended"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 823
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setAutomotiveGnssSuspended(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 826
    nop

    .line 827
    return-void

    .line 824
    :catch_7
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setExtraLocationControllerPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 573
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setExtraLocationControllerPackage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 576
    nop

    .line 577
    return-void

    .line 574
    :catch_7
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setExtraLocationControllerPackageEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 588
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setExtraLocationControllerPackageEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 591
    nop

    .line 592
    return-void

    .line 589
    :catch_7
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setLocationControllerExtraPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 620
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setExtraLocationControllerPackage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 623
    nop

    .line 624
    return-void

    .line 621
    :catch_7
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setLocationControllerExtraPackageEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setExtraLocationControllerPackageEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 641
    nop

    .line 642
    return-void

    .line 639
    :catch_7
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLocationEnabledForUser(ZLandroid/os/UserHandle;)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 694
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->setLocationEnabledForUser(ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 697
    nop

    .line 698
    return-void

    .line 695
    :catch_b
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setProviderEnabledForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 803
    return v0
.end method

.method public whitelist setTestProviderEnabled(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2220
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2223
    :try_start_a
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2224
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2223
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_1d

    .line 2227
    nop

    .line 2228
    return-void

    .line 2225
    :catch_1d
    move-exception v0

    .line 2226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;

    .line 2182
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2183
    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const-string v1, "invalid null location"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2185
    const-wide/32 v0, 0x8e105b9

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2186
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v0

    const-string v1, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_2b

    .line 2189
    :cond_28
    invoke-virtual {p2}, Landroid/location/Location;->makeComplete()V

    .line 2193
    :goto_2b
    :try_start_2b
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2194
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2193
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3c} :catch_3e

    .line 2197
    nop

    .line 2198
    return-void

    .line 2195
    :catch_3e
    move-exception v0

    .line 2196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2248
    return-void
.end method

.method public whitelist unregisterAntennaInfoListener(Landroid/location/GnssAntennaInfo$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/GnssAntennaInfo$Listener;

    .line 2851
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssAntennaInfoListeners:Landroid/location/LocationManager$GnssAntennaTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssAntennaTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2852
    return-void
.end method

.method public whitelist unregisterGnssBatchedLocationCallback(Landroid/location/BatchedLocationCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/location/BatchedLocationCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3096
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->stopGnssBatch()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3097
    const/4 v0, 0x1

    return v0

    .line 3098
    :catch_7
    move-exception v0

    .line 3099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 2817
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssMeasurementsListeners:Landroid/location/LocationManager$GnssMeasurementsTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssMeasurementsTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2818
    return-void
.end method

.method public whitelist unregisterGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 2953
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNavigationListeners:Landroid/location/LocationManager$GnssNavigationTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssNavigationTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2954
    return-void
.end method

.method public whitelist unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;

    .line 2546
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssStatusTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2547
    return-void
.end method
