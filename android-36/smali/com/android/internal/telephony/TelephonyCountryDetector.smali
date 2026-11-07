.class public Lcom/android/internal/telephony/TelephonyCountryDetector;
.super Landroid/os/Handler;
.source "TelephonyCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;,
        Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TIME_BETWEEN_LOCATION_UPDATES_MILLIS:J

.field protected static final blacklist WAIT_FOR_LOCATION_UPDATE_REQUEST_QUOTA_RESET_TIMEOUT_MILLIS:J

.field private static blacklist sInstance:Lcom/android/internal/telephony/TelephonyCountryDetector;


# instance fields
.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mGeocoder:Landroid/location/Geocoder;

.field private blacklist mIsCountryCodesOverridden:Z

.field private blacklist mIsLocationUpdateRequested:Z

.field private blacklist mIsWifiNetworkConnected:Z

.field private blacklist mLocationCountryCode:Ljava/lang/String;

.field private blacklist mLocationCountryCodeUpdatedTimestampNanos:J

.field private final blacklist mLocationListener:Landroid/location/LocationListener;

.field private final blacklist mLocationManager:Landroid/location/LocationManager;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOverriddenLocationCountryCode:Ljava/lang/String;

.field private blacklist mOverriddenLocationCountryCodeUpdatedTimestampNanos:J

.field private final blacklist mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method public static synthetic blacklist $r8$lambda$1eSkIn88zn-kWWqDrRnxf_qwrNg(Ljava/lang/Integer;)Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;
    .registers 2

    .line 471
    new-instance p0, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector-IA;)V

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misInternetAvailable(Lcom/android/internal/telephony/TelephonyCountryDetector;Landroid/net/NetworkCapabilities;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isInternetAvailable(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendRequestAsync(Lcom/android/internal/telephony/TelephonyCountryDetector;ILjava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyCountryDetector;->sendRequestAsync(ILjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 68
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->DEBUG:Z

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->TIME_BETWEEN_LOCATION_UPDATES_MILLIS:J

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->WAIT_FOR_LOCATION_UPDATE_REQUEST_QUOTA_RESET_TIMEOUT_MILLIS:J

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/location/LocationManager;Landroid/net/ConnectivityManager;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 9

    .line 197
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;

    .line 90
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCode:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    const-wide/16 v1, 0x0

    .line 102
    iput-wide v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCodeUpdatedTimestampNanos:J

    .line 105
    iput-wide v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCodeUpdatedTimestampNanos:J

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;

    .line 111
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    .line 113
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 118
    new-instance p1, Lcom/android/internal/telephony/TelephonyCountryDetector$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/TelephonyCountryDetector$1;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector;)V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationListener:Landroid/location/LocationListener;

    .line 198
    iput-object p3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 199
    new-instance p1, Landroid/location/Geocoder;

    invoke-direct {p1, p2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mGeocoder:Landroid/location/Geocoder;

    .line 200
    iput-object p4, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 201
    iput-object p5, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->initialize()V

    return-void
.end method

.method private blacklist evaluateNotifyWifiConnectivityStateChangedEvent(Z)V
    .registers 3

    .line 504
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    if-eq p1, v0, :cond_23

    .line 505
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 507
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "evaluateNotifyWifiConnectivityStateChangedEvent: wifi connectivity state has changed to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private blacklist evaluateRequestingLocationUpdates()V
    .registers 2

    .line 566
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->shouldRequestLocationUpdate()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 567
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->registerForLocationUpdates()V

    return-void

    .line 569
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->unregisterForLocationUpdates()V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/TelephonyCountryDetector;
    .registers 11

    const-class v1, Lcom/android/internal/telephony/TelephonyCountryDetector;

    monitor-enter v1

    .line 208
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->sInstance:Lcom/android/internal/telephony/TelephonyCountryDetector;

    if-nez v0, :cond_34

    .line 215
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "TelephonyCountryDetector"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v3, Lcom/android/internal/telephony/TelephonyCountryDetector;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const-class v0, Landroid/location/LocationManager;

    .line 218
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/location/LocationManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 219
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/ConnectivityManager;

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/TelephonyCountryDetector;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/location/LocationManager;Landroid/net/ConnectivityManager;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v3, Lcom/android/internal/telephony/TelephonyCountryDetector;->sInstance:Lcom/android/internal/telephony/TelephonyCountryDetector;

    goto :goto_34

    :catchall_31
    move-exception v0

    move-object p0, v0

    goto :goto_38

    .line 223
    :cond_34
    :goto_34
    sget-object p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->sInstance:Lcom/android/internal/telephony/TelephonyCountryDetector;
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_31

    monitor-exit v1

    return-object p0

    :goto_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_31

    throw p0
.end method

.method private blacklist getLastKnownLocation()Landroid/location/Location;
    .registers 8

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 418
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_c

    if-eqz v1, :cond_2e

    .line 420
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_c

    :cond_2e
    move-object v1, v2

    goto :goto_c

    :cond_30
    return-object v1
.end method

.method private blacklist getNetworkCountryIsoForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 2

    .line 525
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_d

    .line 527
    const-string p0, "getNetworkCountryIsoForPhone: serviceStateTracker is null"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logw(Ljava/lang/String;)V

    return-object p1

    .line 531
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0

    if-nez p0, :cond_19

    .line 533
    const-string p0, "getNetworkCountryIsoForPhone: localeTracker is null"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logw(Ljava/lang/String;)V

    return-object p1

    .line 537
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleEventWifiConnectivityStateChanged(Z)V
    .registers 4

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEventWifiConnectivityStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateNotifyWifiConnectivityStateChangedEvent(Z)V

    .line 500
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateRequestingLocationUpdates()V

    return-void
.end method

.method private blacklist handleNetworkCountryCodeChangedEvent(Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;)V
    .registers 6

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentNetworkCountryCodeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 466
    iget-object v0, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_1f
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    iget v2, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 470
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda0;-><init>()V

    .line 469
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    .line 472
    iget v2, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    iput v2, v1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getElapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->timestamp:J

    .line 474
    iget-object p1, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 475
    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    .line 476
    monitor-exit v0

    goto :goto_8a

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_1f .. :try_end_4a} :catchall_48

    throw p0

    .line 478
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkCountryCodeChangedEvent: Got invalid or empty country code for phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_64
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    iget v2, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 482
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 481
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 485
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    iget p1, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 486
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getElapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->timestamp:J

    goto :goto_89

    :catchall_87
    move-exception p0

    goto :goto_98

    .line 490
    :cond_89
    :goto_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_64 .. :try_end_8a} :catchall_87

    .line 492
    :goto_8a
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateRequestingLocationUpdates()V

    .line 493
    const-string p1, "mCountryCodeChangedRegistrants.notifyRegistrants()"

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 494
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 490
    :goto_98
    :try_start_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_87

    throw p0
.end method

.method private blacklist initialize()V
    .registers 1

    .line 376
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateRequestingLocationUpdates()V

    .line 377
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->registerForWifiConnectivityStateChanged()V

    return-void
.end method

.method private blacklist isGeoCoderImplemented()Z
    .registers 1

    .line 381
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result p0

    return p0
.end method

.method private blacklist isInternetAvailable(Landroid/net/NetworkCapabilities;)Z
    .registers 3

    const/16 p0, 0xc

    .line 585
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x10

    .line 586
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 587
    :goto_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isWifiConnected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return p0
.end method

.method private blacklist isLocationUpdateRequestQuotaExceeded()Z
    .registers 2

    const/4 v0, 0x5

    .line 445
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method private static blacklist isMockModemAllowed()Z
    .registers 2

    .line 622
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->DEBUG:Z

    if-nez v0, :cond_17

    const-string v0, "persist.radio.allow_mock_modem"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "ro.boot.radio.allow_mock_modem"

    .line 623
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    return v1

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isValid(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_1a

    .line 617
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 647
    const-string v0, "TelephonyCountryDetector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 655
    const-string v0, "TelephonyCountryDetector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist logw(Ljava/lang/String;)V
    .registers 2

    .line 651
    const-string v0, "TelephonyCountryDetector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist registerForLocationUpdates()V
    .registers 9

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isGeoCoderImplemented()Z

    move-result v0

    if-nez v0, :cond_c

    .line 388
    const-string p0, "Geocoder is not implemented on the device"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return-void

    .line 392
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_f
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    if-eqz v0, :cond_1d

    .line 394
    const-string p0, "Already registered for location updates"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 395
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_3d

    .line 398
    :cond_1d
    const-string v0, "Registering for location updates"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "passive"

    sget-wide v4, Lcom/android/internal/telephony/TelephonyCountryDetector;->TIME_BETWEEN_LOCATION_UPDATES_MILLIS:J

    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationListener:Landroid/location/LocationListener;

    const/high16 v6, 0x44fa0000    # 2000.0f

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationListener:Landroid/location/LocationListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 411
    monitor-exit v1

    return-void

    :goto_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_1a

    throw p0
.end method

.method private blacklist registerForWifiConnectivityStateChanged()V
    .registers 4

    .line 541
    const-string v0, "registerForWifiConnectivityStateChanged"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 542
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 543
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 544
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 546
    new-instance v1, Lcom/android/internal/telephony/TelephonyCountryDetector$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/TelephonyCountryDetector$2;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector;)V

    .line 562
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private blacklist sendRequestAsync(ILjava/lang/Object;)V
    .registers 3

    .line 459
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 460
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist setLocationCountryCode(Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set location country code to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 514
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 515
    const-string p0, "Received invalid location country code"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return-void

    .line 517
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_2b
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCode:Ljava/lang/String;

    .line 519
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCodeUpdatedTimestampNanos:J

    .line 520
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_43

    throw p0
.end method

.method private blacklist shouldRequestLocationUpdate()Z
    .registers 2

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getCurrentNetworkCountryIso()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isWifiNetworkConnected()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist unregisterForLocationUpdates()V
    .registers 5

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    if-nez v1, :cond_10

    .line 430
    const-string p0, "Location update was not requested yet"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 431
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_33

    .line 433
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isLocationUpdateRequestQuotaExceeded()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 434
    const-string p0, "Removing location updates will be re-evaluated after the quota is refilled"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 435
    monitor-exit v0

    return-void

    .line 437
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    .line 438
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    const/4 v1, 0x5

    .line 439
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/android/internal/telephony/TelephonyCountryDetector;->WAIT_FOR_LOCATION_UPDATE_REQUEST_QUOTA_RESET_TIMEOUT_MILLIS:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 441
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_e

    throw p0
.end method


# virtual methods
.method public blacklist getCachedLocationCountryIsoInfo()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    if-eqz v1, :cond_33

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverriddenLocationCountryCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will be used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 262
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCode:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCodeUpdatedTimestampNanos:J

    .line 263
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p0

    goto :goto_42

    .line 265
    :cond_33
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCode:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCodeUpdatedTimestampNanos:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 266
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_31

    throw p0
.end method

.method public blacklist getCachedNetworkCountryIsoInfo()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    if-eqz v1, :cond_32

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverriddenCachedNetworkCountryCodes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;

    .line 279
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will be used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 281
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;

    monitor-exit v0

    return-object p0

    :catchall_30
    move-exception p0

    goto :goto_77

    .line 283
    :cond_32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    .line 286
    iget-object v3, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    if-eqz v3, :cond_41

    .line 287
    iget-object v3, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    .line 288
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_41

    .line 289
    :cond_69
    iget-object v3, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    iget-wide v4, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 292
    :cond_75
    monitor-exit v0

    return-object v1

    .line 293
    :goto_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_30

    throw p0
.end method

.method public blacklist getCurrentNetworkCountryIso()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    if-eqz v1, :cond_29

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverriddenCurrentNetworkCountryCodes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;

    .line 233
    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 234
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_27
    move-exception p0

    goto :goto_83

    .line 236
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_27

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v2, :cond_82

    aget-object v4, v1, v3

    .line 240
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getNetworkCountryIsoForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 242
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 244
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 247
    :cond_53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentNetworkCountryIso: invalid countryIso="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for phoneId="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_82
    return-object v0

    .line 236
    :goto_83
    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_27

    throw p0
.end method

.method protected blacklist getElapsedRealtimeNanos()J
    .registers 3

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    const/4 v1, 0x2

    if-eq v0, v1, :cond_40

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_28

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CountryDetectorHandler: unexpected message code: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logw(Ljava/lang/String;)V

    return-void

    .line 312
    :cond_28
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateRequestingLocationUpdates()V

    return-void

    .line 309
    :cond_2c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->handleEventWifiConnectivityStateChanged(Z)V

    return-void

    .line 306
    :cond_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->handleNetworkCountryCodeChangedEvent(Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;)V

    return-void

    .line 303
    :cond_40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->setLocationCountryCode(Landroid/util/Pair;)V

    return-void

    .line 300
    :cond_48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->queryCountryCodeForLocation(Landroid/location/Location;)V

    return-void
.end method

.method public blacklist isWifiNetworkConnected()Z
    .registers 3

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiNetworkConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 580
    iget-boolean p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    return p0
.end method

.method public blacklist onNetworkCountryCodeChanged(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .registers 5

    .line 326
    new-instance v0, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector-IA;)V

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 328
    iput-object p2, v0, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    const/4 p1, 0x3

    .line 329
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->sendRequestAsync(ILjava/lang/Object;)V

    return-void
.end method

.method protected blacklist queryCountryCodeForLocation(Landroid/location/Location;)V
    .registers 11

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mGeocoder:Landroid/location/Geocoder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    new-instance v6, Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;

    .line 367
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    invoke-direct {v6, p0, v7, v8}, Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector;J)V

    const/4 v5, 0x1

    .line 366
    invoke-virtual/range {v0 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V

    return-void
.end method

.method public blacklist registerForCountryCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 634
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForWifiConnectivityStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 599
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setCountryCodes(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;J)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isMockModemAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 339
    const-string p0, "setCountryCodes: mock modem is not allowed"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return v1

    .line 342
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCountryCodes: currentNetworkCountryCodes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 343
    invoke-static {v2, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", locationCountryCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", locationCountryCodeTimestampNanos"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cachedNetworkCountryCodes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 347
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    if-eqz p1, :cond_5c

    .line 351
    :try_start_57
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    goto :goto_66

    :catchall_5a
    move-exception p0

    goto :goto_68

    .line 353
    :cond_5c
    iput-boolean v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    .line 354
    iput-object p3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;

    .line 355
    iput-object p2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;

    .line 356
    iput-object p4, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCode:Ljava/lang/String;

    .line 357
    iput-wide p5, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCodeUpdatedTimestampNanos:J

    .line 360
    :goto_66
    monitor-exit v0

    return v2

    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_5a

    throw p0
.end method

.method public blacklist unregisterForCountryCodeChanged(Landroid/os/Handler;)V
    .registers 2

    .line 643
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForWifiConnectivityStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 607
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
