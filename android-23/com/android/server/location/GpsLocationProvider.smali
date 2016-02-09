.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$GpsRequest;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GpsLocationProvider$BackOff;,
        Lcom/android/server/location/GpsLocationProvider$1;,
        Lcom/android/server/location/GpsLocationProvider$2;,
        Lcom/android/server/location/GpsLocationProvider$3;,
        Lcom/android/server/location/GpsLocationProvider$4;,
        Lcom/android/server/location/GpsLocationProvider$5;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final BATTERY_SAVER_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final BATTERY_SAVER_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field private static final BATTERY_SAVER_MODE_NO_CHANGE:I = 0x0

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z

.field private static final DEFAULT_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mApnIpType:I

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private final mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

.field private final mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/location/GpsLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(IDDDIIII)Z
    .locals 1
    .param p0, "geofenceId"    # I
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D
    .param p7, "lastTransition"    # I
    .param p8, "monitorTransitions"    # I
    .param p9, "notificationResponsivenes"    # I
    .param p10, "unknownTimer"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GpsLocationProvider;->native_add_geofence(IDDDIIII)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_agps_ril_supported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_measurement_collection()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_navigation_message_collection()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_geofence_supported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/location/GpsLocationProvider;JJI)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/location/GpsLocationProvider;[BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .param p1, "singleShot"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateLowPowerMode()V

    #@3
    return-void
.end method

.method static synthetic -wrap3()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_measurement_supported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_navigation_message_supported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(I)Z
    .locals 1
    .param p0, "geofenceId"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_pause_geofence(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(I)Z
    .locals 1
    .param p0, "geofenceId"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_remove_geofence(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(II)Z
    .locals 1
    .param p0, "geofenceId"    # I
    .param p1, "transitions"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_resume_geofence(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_measurement_collection()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_navigation_message_collection()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 105
    const-string/jumbo v0, "GpsLocationProvider"

    #@6
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@c
    .line 106
    const-string/jumbo v0, "GpsLocationProvider"

    #@f
    const/4 v2, 0x2

    #@10
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v0

    #@14
    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    #@16
    .line 108
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    #@18
    move v2, v1

    #@19
    move v4, v3

    #@1a
    move v5, v1

    #@1b
    move v6, v1

    #@1c
    move v7, v1

    #@1d
    move v9, v1

    #@1e
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    #@21
    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    #@23
    .line 2250
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    #@26
    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const-wide/32 v8, 0x493e0

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x1

    #@5
    const/16 v5, 0x20

    #@7
    const/4 v4, 0x0

    #@8
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    .line 259
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    #@12
    .line 261
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    #@14
    .line 264
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    #@16
    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    #@1c
    .line 292
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$BackOff;

    #@1e
    const-wide/32 v2, 0xdbba00

    #@21
    invoke-direct {v0, v8, v9, v2, v3}, Lcom/android/server/location/GpsLocationProvider$BackOff;-><init>(JJ)V

    #@24
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    #@26
    .line 293
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$BackOff;

    #@28
    const-wide/32 v2, 0xdbba00

    #@2b
    invoke-direct {v0, v8, v9, v2, v3}, Lcom/android/server/location/GpsLocationProvider$BackOff;-><init>(JJ)V

    #@2e
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    #@30
    .line 308
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    #@32
    .line 309
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    #@34
    .line 321
    const/16 v0, 0x3e8

    #@36
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@38
    .line 336
    const-wide/16 v0, 0x0

    #@3a
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    #@3c
    .line 338
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    #@3e
    .line 345
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@40
    .line 347
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    #@42
    .line 349
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    #@44
    .line 358
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    #@46
    .line 361
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    #@48
    .line 366
    new-instance v0, Landroid/location/Location;

    #@4a
    const-string/jumbo v1, "gps"

    #@4d
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@50
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@52
    .line 367
    new-instance v0, Landroid/os/Bundle;

    #@54
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@57
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    #@59
    .line 402
    new-instance v0, Landroid/os/WorkSource;

    #@5b
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    #@5e
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    #@60
    .line 406
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$1;

    #@62
    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    #@65
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    #@67
    .line 434
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$2;

    #@69
    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    #@6c
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@6e
    .line 476
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$3;

    #@70
    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    #@73
    .line 475
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@75
    .line 1204
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$4;

    #@77
    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    #@7a
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    #@7c
    .line 1780
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$5;

    #@7e
    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    #@81
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@83
    .line 2241
    new-array v0, v5, [I

    #@85
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    #@87
    .line 2242
    new-array v0, v5, [F

    #@89
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    #@8b
    .line 2243
    new-array v0, v5, [F

    #@8d
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    #@8f
    .line 2244
    new-array v0, v5, [F

    #@91
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    #@93
    .line 2245
    const/4 v0, 0x3

    #@94
    new-array v0, v0, [I

    #@96
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@98
    .line 2248
    const/16 v0, 0x78

    #@9a
    new-array v0, v0, [B

    #@9c
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    #@9e
    .line 624
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@a0
    .line 625
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    #@a3
    move-result-object v0

    #@a4
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    #@a6
    .line 626
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    #@a8
    .line 628
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@aa
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    #@ac
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    #@af
    .line 631
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@b1
    const-string/jumbo v1, "power"

    #@b4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b7
    move-result-object v0

    #@b8
    check-cast v0, Landroid/os/PowerManager;

    #@ba
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    #@bc
    .line 632
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    #@be
    const-string/jumbo v1, "GpsLocationProvider"

    #@c1
    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@c4
    move-result-object v0

    #@c5
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@c7
    .line 633
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@c9
    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@cc
    .line 635
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@ce
    const-string/jumbo v1, "alarm"

    #@d1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d4
    move-result-object v0

    #@d5
    check-cast v0, Landroid/app/AlarmManager;

    #@d7
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@d9
    .line 636
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@db
    new-instance v1, Landroid/content/Intent;

    #@dd
    const-string/jumbo v2, "com.android.internal.location.ALARM_WAKEUP"

    #@e0
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e3
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@e6
    move-result-object v0

    #@e7
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@e9
    .line 637
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@eb
    new-instance v1, Landroid/content/Intent;

    #@ed
    const-string/jumbo v2, "com.android.internal.location.ALARM_TIMEOUT"

    #@f0
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f3
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@f6
    move-result-object v0

    #@f7
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@f9
    .line 639
    const-string/jumbo v0, "connectivity"

    #@fc
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@ff
    move-result-object v0

    #@100
    check-cast v0, Landroid/net/ConnectivityManager;

    #@102
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@104
    .line 643
    const-string/jumbo v0, "appops"

    #@107
    .line 642
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10a
    move-result-object v0

    #@10b
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@10e
    move-result-object v0

    #@10f
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@111
    .line 647
    const-string/jumbo v0, "batterystats"

    #@114
    .line 646
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@117
    move-result-object v0

    #@118
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@11b
    move-result-object v0

    #@11c
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@11e
    .line 650
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    #@120
    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V

    #@123
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    #@125
    .line 657
    new-instance v0, Ljava/util/Properties;

    #@127
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@12a
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    #@12c
    .line 658
    const/16 v0, 0xd

    #@12e
    invoke-direct {p0, v0, v4, v7}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@131
    .line 661
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@133
    .line 662
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@135
    .line 663
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    #@137
    .line 661
    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    #@13a
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@13c
    .line 665
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$6;

    #@13e
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    #@140
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$6;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    #@143
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    #@145
    .line 677
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$7;

    #@147
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    #@149
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$7;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    #@14c
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@14e
    .line 699
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$8;

    #@150
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    #@152
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$8;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    #@155
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@157
    .line 623
    return-void
.end method

.method private buildLocation(IDDDFFFJ)Landroid/location/Location;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    #@0
    .prologue
    .line 1636
    new-instance v2, Landroid/location/Location;

    #@2
    const-string/jumbo v3, "gps"

    #@5
    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@8
    .line 1637
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    #@a
    const/4 v4, 0x1

    #@b
    if-ne v3, v4, :cond_0

    #@d
    .line 1638
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    #@10
    .line 1639
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    #@13
    .line 1640
    move-wide/from16 v0, p11

    #@15
    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    #@18
    .line 1641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@1b
    move-result-wide v4

    #@1c
    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    #@1f
    .line 1643
    :cond_0
    and-int/lit8 v3, p1, 0x2

    #@21
    const/4 v4, 0x2

    #@22
    if-ne v3, v4, :cond_1

    #@24
    .line 1644
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    #@27
    .line 1646
    :cond_1
    and-int/lit8 v3, p1, 0x4

    #@29
    const/4 v4, 0x4

    #@2a
    if-ne v3, v4, :cond_2

    #@2c
    .line 1647
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    #@2f
    .line 1649
    :cond_2
    and-int/lit8 v3, p1, 0x8

    #@31
    const/16 v4, 0x8

    #@33
    if-ne v3, v4, :cond_3

    #@35
    .line 1650
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    #@38
    .line 1652
    :cond_3
    and-int/lit8 v3, p1, 0x10

    #@3a
    const/16 v4, 0x10

    #@3c
    if-ne v3, v4, :cond_4

    #@3e
    .line 1653
    move/from16 v0, p10

    #@40
    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    #@43
    .line 1655
    :cond_4
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 500
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    #@3
    move-result-object v1

    #@4
    .line 501
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@6
    if-ge v0, v3, :cond_0

    #@8
    .line 502
    aget-object v3, v1, v0

    #@a
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    #@d
    move-result-object v2

    #@e
    .line 503
    .local v2, "supl_init":[B
    array-length v3, v2

    #@f
    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    #@12
    .line 501
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 499
    .end local v2    # "supl_init":[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 508
    const-string/jumbo v1, "data"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    .line 509
    .local v0, "supl_init":[B
    array-length v1, v0

    #@a
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    #@d
    .line 507
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1232
    if-nez p1, :cond_1

    #@3
    .line 1233
    const v0, 0xffff

    #@6
    .line 1251
    .local v0, "flags":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    #@8
    .line 1252
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    #@b
    .line 1253
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 1235
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x0

    #@e
    .line 1236
    .restart local v0    # "flags":I
    const-string/jumbo v1, "ephemeris"

    #@11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    const/4 v0, 0x1

    #@18
    .line 1237
    :cond_2
    const-string/jumbo v1, "almanac"

    #@1b
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_3

    #@21
    or-int/lit8 v0, v0, 0x2

    #@23
    .line 1238
    :cond_3
    const-string/jumbo v1, "position"

    #@26
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_4

    #@2c
    or-int/lit8 v0, v0, 0x4

    #@2e
    .line 1239
    :cond_4
    const-string/jumbo v1, "time"

    #@31
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_5

    #@37
    or-int/lit8 v0, v0, 0x8

    #@39
    .line 1240
    :cond_5
    const-string/jumbo v1, "iono"

    #@3c
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_6

    #@42
    or-int/lit8 v0, v0, 0x10

    #@44
    .line 1241
    :cond_6
    const-string/jumbo v1, "utc"

    #@47
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_7

    #@4d
    or-int/lit8 v0, v0, 0x20

    #@4f
    .line 1242
    :cond_7
    const-string/jumbo v1, "health"

    #@52
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_8

    #@58
    or-int/lit8 v0, v0, 0x40

    #@5a
    .line 1243
    :cond_8
    const-string/jumbo v1, "svdir"

    #@5d
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_9

    #@63
    or-int/lit16 v0, v0, 0x80

    #@65
    .line 1244
    :cond_9
    const-string/jumbo v1, "svsteer"

    #@68
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_a

    #@6e
    or-int/lit16 v0, v0, 0x100

    #@70
    .line 1245
    :cond_a
    const-string/jumbo v1, "sadata"

    #@73
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_b

    #@79
    or-int/lit16 v0, v0, 0x200

    #@7b
    .line 1246
    :cond_b
    const-string/jumbo v1, "rti"

    #@7e
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@81
    move-result v1

    #@82
    if-eqz v1, :cond_c

    #@84
    or-int/lit16 v0, v0, 0x400

    #@86
    .line 1247
    :cond_c
    const-string/jumbo v1, "celldb-info"

    #@89
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_d

    #@8f
    const v1, 0x8000

    #@92
    or-int/2addr v0, v1

    #@93
    .line 1248
    :cond_d
    const-string/jumbo v1, "all"

    #@96
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_0

    #@9c
    const v1, 0xffff

    #@9f
    or-int/2addr v0, v1

    #@a0
    goto/16 :goto_0

    #@a2
    .line 1256
    :cond_e
    return v2
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .locals 9
    .param p1, "apn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2119
    if-nez p1, :cond_0

    #@4
    .line 2120
    return v8

    #@5
    .line 2124
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 2125
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    #@13
    return v0

    #@14
    .line 2128
    :cond_1
    const-string/jumbo v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    #@17
    new-array v1, v1, [Ljava/lang/Object;

    #@19
    aput-object p1, v1, v8

    #@1b
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 2129
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    #@20
    .line 2131
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@25
    move-result-object v0

    #@26
    .line 2132
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@28
    .line 2133
    const/4 v2, 0x1

    #@29
    new-array v2, v2, [Ljava/lang/String;

    #@2b
    const-string/jumbo v4, "protocol"

    #@2e
    const/4 v5, 0x0

    #@2f
    aput-object v4, v2, v5

    #@31
    .line 2136
    const-string/jumbo v5, "name ASC"

    #@34
    .line 2135
    const/4 v4, 0x0

    #@35
    .line 2131
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@38
    move-result-object v6

    #@39
    .line 2138
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    #@3b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_3

    #@41
    .line 2139
    const/4 v0, 0x0

    #@42
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GpsLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result v0

    #@4a
    .line 2146
    if-eqz v6, :cond_2

    #@4c
    .line 2147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@4f
    .line 2139
    :cond_2
    return v0

    #@50
    .line 2141
    :cond_3
    :try_start_1
    const-string/jumbo v0, "GpsLocationProvider"

    #@53
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v2, "No entry found in query for APN: "

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 2146
    if-eqz v6, :cond_4

    #@6c
    .line 2147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@6f
    .line 2151
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    return v8

    #@70
    .line 2143
    :catch_0
    move-exception v7

    #@71
    .line 2144
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "GpsLocationProvider"

    #@74
    new-instance v1, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v2, "Error encountered on APN query for: "

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    .line 2146
    if-eqz v6, :cond_4

    #@8d
    .line 2147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@90
    goto :goto_0

    #@91
    .line 2145
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@92
    .line 2146
    if-eqz v6, :cond_5

    #@94
    .line 2147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@97
    .line 2145
    :cond_5
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1662
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1676
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 1664
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1666
    :sswitch_1
    const/4 v0, 0x5

    #@8
    return v0

    #@9
    .line 1668
    :sswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 1670
    :sswitch_3
    const/4 v0, 0x4

    #@c
    return v0

    #@d
    .line 1672
    :sswitch_4
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 1674
    :sswitch_5
    const/4 v0, 0x3

    #@10
    return v0

    #@11
    .line 1662
    nop

    #@12
    :sswitch_data_0
    .sparse-switch
        -0x95 -> :sswitch_1
        -0x67 -> :sswitch_3
        -0x66 -> :sswitch_5
        -0x65 -> :sswitch_2
        0x0 -> :sswitch_0
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2093
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    #@4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    .line 2094
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    #@9
    .line 2096
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v0

    #@f
    .line 2098
    const/4 v2, 0x1

    #@10
    new-array v2, v2, [Ljava/lang/String;

    #@12
    const-string/jumbo v3, "apn"

    #@15
    const/4 v4, 0x0

    #@16
    aput-object v3, v2, v4

    #@18
    .line 2101
    const-string/jumbo v5, "name ASC"

    #@1b
    .line 2099
    const/4 v3, 0x0

    #@1c
    .line 2100
    const/4 v4, 0x0

    #@1d
    .line 2096
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@20
    move-result-object v6

    #@21
    .line 2102
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 2103
    const/4 v0, 0x0

    #@2a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v0

    #@2e
    .line 2110
    if-eqz v6, :cond_0

    #@30
    .line 2111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@33
    .line 2103
    :cond_0
    return-object v0

    #@34
    .line 2105
    :cond_1
    :try_start_1
    const-string/jumbo v0, "GpsLocationProvider"

    #@37
    const-string/jumbo v2, "No APN found to select."

    #@3a
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 2110
    if-eqz v6, :cond_2

    #@3f
    .line 2111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@42
    .line 2115
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v8

    #@43
    .line 2107
    :catch_0
    move-exception v7

    #@44
    .line 2108
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "GpsLocationProvider"

    #@47
    const-string/jumbo v2, "Error encountered on selecting the APN."

    #@4a
    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    .line 2110
    if-eqz v6, :cond_2

    #@4f
    .line 2111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@52
    goto :goto_0

    #@53
    .line 2109
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@54
    .line 2110
    if-eqz v6, :cond_3

    #@56
    .line 2111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@59
    .line 2109
    :cond_3
    throw v0
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 955
    if-eqz p2, :cond_2

    #@4
    .line 956
    const-string/jumbo v3, "SUPL_MODE"

    #@7
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 957
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    #@c
    .line 958
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    .line 960
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    .line 968
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    and-int/lit8 v3, v2, 0x1

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 969
    const/4 v3, 0x1

    #@21
    return v3

    #@22
    .line 961
    :catch_0
    move-exception v0

    #@23
    .line 962
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "GpsLocationProvider"

    #@26
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "unable to parse SUPL_MODE: "

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 963
    return v6

    #@3e
    .line 974
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    if-eqz p3, :cond_2

    #@40
    .line 975
    const/4 v3, 0x4

    #@41
    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@44
    move-result v3

    #@45
    .line 974
    if-eqz v3, :cond_2

    #@47
    .line 976
    and-int/lit8 v3, v2, 0x2

    #@49
    if-eqz v3, :cond_2

    #@4b
    .line 977
    return v4

    #@4c
    .line 980
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_2
    return v6
.end method

.method private handleDisable()V
    .locals 2

    #@0
    .prologue
    .line 1025
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GpsLocationProvider"

    #@7
    const-string/jumbo v1, "handleDisable"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1027
    :cond_0
    new-instance v0, Landroid/os/WorkSource;

    #@f
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    #@12
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    #@15
    .line 1028
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    #@18
    .line 1029
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@1a
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@1c
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1f
    .line 1030
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@21
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@23
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@26
    .line 1033
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    #@29
    .line 1035
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@2b
    invoke-virtual {v0}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged()V

    #@2e
    .line 1036
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@30
    invoke-virtual {v0}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged()V

    #@33
    .line 1024
    return-void
.end method

.method private handleDownloadXtraData()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 864
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 866
    return-void

    #@6
    .line 868
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    #@8
    if-nez v0, :cond_1

    #@a
    .line 870
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    #@d
    .line 871
    return-void

    #@e
    .line 873
    :cond_1
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    #@10
    .line 876
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@15
    .line 877
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@17
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$10;

    #@19
    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$10;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    #@1c
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@1f
    .line 863
    return-void
.end method

.method private handleEnable()V
    .locals 4

    #@0
    .prologue
    .line 984
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "GpsLocationProvider"

    #@7
    const-string/jumbo v2, "handleEnable"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 986
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    #@10
    move-result v0

    #@11
    .line 988
    .local v0, "enabled":Z
    if-eqz v0, :cond_3

    #@13
    .line 989
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    #@16
    move-result v1

    #@17
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    #@19
    .line 992
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 993
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@1f
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    #@21
    const/4 v3, 0x1

    #@22
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    #@25
    .line 995
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 996
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    #@2b
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    #@2d
    const/4 v3, 0x2

    #@2e
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    #@31
    .line 999
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@33
    invoke-virtual {v1}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged()V

    #@36
    .line 1000
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@38
    invoke-virtual {v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged()V

    #@3b
    .line 983
    :goto_0
    return-void

    #@3c
    .line 1002
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    #@3e
    monitor-enter v1

    #@3f
    .line 1003
    const/4 v2, 0x0

    #@40
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit v1

    #@43
    .line 1005
    const-string/jumbo v1, "GpsLocationProvider"

    #@46
    const-string/jumbo v2, "Failed to enable location provider"

    #@49
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    goto :goto_0

    #@4d
    .line 1002
    :catchall_0
    move-exception v2

    #@4e
    monitor-exit v1

    #@4f
    throw v2
.end method

.method private handleInjectNtpTime()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 805
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 807
    return-void

    #@6
    .line 809
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    #@8
    if-nez v0, :cond_1

    #@a
    .line 811
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    #@d
    .line 812
    return-void

    #@e
    .line 814
    :cond_1
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    #@10
    .line 817
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@15
    .line 818
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@17
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$9;

    #@19
    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$9;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    #@1c
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@1f
    .line 804
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1074
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@2
    .line 1075
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    #@4
    .line 1076
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    #@7
    .line 1073
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 906
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 907
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    #@d
    move-result-wide v4

    #@e
    .line 908
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    #@11
    move-result v6

    #@12
    move-object v1, p0

    #@13
    .line 907
    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    #@16
    .line 905
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 740
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_8

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    #@6
    .line 742
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 743
    const-string/jumbo v1, "GpsLocationProvider"

    #@d
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "updateNetworkState "

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    #@1b
    if-eqz v0, :cond_9

    #@1d
    const-string/jumbo v0, "available"

    #@20
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 744
    const-string/jumbo v2, " info: "

    #@27
    .line 743
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 747
    :cond_0
    if-eqz p2, :cond_2

    #@38
    .line 748
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_agps_ril_supported()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_b

    #@3e
    .line 749
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    #@45
    move-result v8

    #@46
    .line 750
    .local v8, "dataEnabled":Z
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_a

    #@4c
    move v4, v8

    #@4d
    .line 751
    :goto_2
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    .line 752
    .local v6, "defaultApn":Ljava/lang/String;
    if-nez v6, :cond_1

    #@53
    .line 753
    const-string/jumbo v6, "dummy-apn"

    #@56
    .line 756
    :cond_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    #@59
    move-result v1

    #@5a
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    #@5d
    move-result v2

    #@5e
    .line 757
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@61
    move-result v3

    #@62
    .line 758
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    move-object v0, p0

    #@67
    .line 756
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    #@6a
    .line 765
    .end local v6    # "defaultApn":Ljava/lang/String;
    .end local v8    # "dataEnabled":Z
    :cond_2
    :goto_3
    if-eqz p2, :cond_5

    #@6c
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    #@6f
    move-result v0

    #@70
    const/4 v1, 0x3

    #@71
    if-ne v0, v1, :cond_5

    #@73
    .line 766
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    #@75
    const/4 v1, 0x1

    #@76
    if-ne v0, v1, :cond_5

    #@78
    .line 767
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    #@7a
    if-eqz v0, :cond_c

    #@7c
    .line 768
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    .line 769
    .local v7, "apnName":Ljava/lang/String;
    if-nez v7, :cond_3

    #@82
    .line 772
    const-string/jumbo v7, "dummy-apn"

    #@85
    .line 774
    :cond_3
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    #@87
    .line 775
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->getApnIpType(Ljava/lang/String;)I

    #@8a
    move-result v0

    #@8b
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    #@8d
    .line 776
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    #@90
    .line 777
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@92
    if-eqz v0, :cond_4

    #@94
    .line 779
    const-string/jumbo v0, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    #@97
    .line 778
    const/4 v1, 0x2

    #@98
    new-array v1, v1, [Ljava/lang/Object;

    #@9a
    .line 780
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    #@9c
    const/4 v3, 0x0

    #@9d
    aput-object v2, v1, v3

    #@9f
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    #@a1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a4
    move-result-object v2

    #@a5
    const/4 v3, 0x1

    #@a6
    aput-object v2, v1, v3

    #@a8
    .line 778
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ab
    move-result-object v9

    #@ac
    .line 781
    .local v9, "message":Ljava/lang/String;
    const-string/jumbo v0, "GpsLocationProvider"

    #@af
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 783
    .end local v9    # "message":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    #@b4
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    #@b6
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    #@b9
    .line 784
    const/4 v0, 0x2

    #@ba
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    #@bc
    .line 794
    .end local v7    # "apnName":Ljava/lang/String;
    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    #@be
    if-eqz v0, :cond_7

    #@c0
    .line 795
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    #@c2
    if-nez v0, :cond_6

    #@c4
    .line 796
    const/4 v0, 0x5

    #@c5
    const/4 v1, 0x0

    #@c6
    const/4 v2, 0x0

    #@c7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@ca
    .line 798
    :cond_6
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    #@cc
    if-nez v0, :cond_7

    #@ce
    .line 799
    const/4 v0, 0x6

    #@cf
    const/4 v1, 0x0

    #@d0
    const/4 v2, 0x0

    #@d1
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@d4
    .line 739
    :cond_7
    return-void

    #@d5
    .line 740
    :cond_8
    const/4 v0, 0x0

    #@d6
    goto/16 :goto_0

    #@d8
    .line 743
    :cond_9
    const-string/jumbo v0, "unavailable"

    #@db
    goto/16 :goto_1

    #@dd
    .line 750
    .restart local v8    # "dataEnabled":Z
    :cond_a
    const/4 v4, 0x0

    #@de
    .local v4, "networkAvailable":Z
    goto/16 :goto_2

    #@e0
    .line 759
    .end local v4    # "networkAvailable":Z
    .end local v8    # "dataEnabled":Z
    :cond_b
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@e2
    if-eqz v0, :cond_2

    #@e4
    .line 760
    const-string/jumbo v0, "GpsLocationProvider"

    #@e7
    const-string/jumbo v1, "Skipped network state update because AGPS-RIL in GPS HAL is not supported"

    #@ea
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    goto/16 :goto_3

    #@ef
    .line 786
    :cond_c
    const-string/jumbo v0, "GpsLocationProvider"

    #@f2
    new-instance v1, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v2, "call native_agps_data_conn_failed, info: "

    #@fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v1

    #@fe
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v1

    #@102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v1

    #@106
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@109
    .line 787
    const/4 v0, 0x0

    #@10a
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    #@10c
    .line 788
    const/4 v0, 0x0

    #@10d
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    #@10f
    .line 789
    const/4 v0, 0x0

    #@110
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    #@112
    .line 790
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    #@115
    goto :goto_4
.end method

.method private hasCapability(I)Z
    .locals 2
    .param p1, "capability"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1345
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method private hibernate()V
    .locals 7

    #@0
    .prologue
    .line 1337
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    #@3
    .line 1338
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@5
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@7
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@a
    .line 1339
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@c
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@e
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@11
    .line 1340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14
    move-result-wide v0

    #@15
    .line 1341
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@17
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@19
    int-to-long v4, v3

    #@1a
    add-long/2addr v4, v0

    #@1b
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@1d
    const/4 v6, 0x2

    #@1e
    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@21
    .line 1335
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    #@0
    .prologue
    .line 529
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 606
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 607
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    #@6
    .line 609
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    #@8
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    .line 610
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e
    .line 612
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@11
    .line 619
    const/4 v4, 0x1

    #@12
    return v4

    #@13
    .line 611
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    #@14
    .line 612
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@17
    .line 611
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@18
    .line 615
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    #@19
    .line 616
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "GpsLocationProvider"

    #@1c
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v6, "Could not open GPS configuration file "

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 617
    const/4 v4, 0x0

    #@34
    return v4

    #@35
    .line 611
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    #@36
    move-object v2, v3

    #@37
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 589
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v3

    #@5
    .line 590
    const v5, 0x107003d

    #@8
    .line 589
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 591
    .local v0, "configValues":[Ljava/lang/String;
    array-length v5, v0

    #@d
    move v3, v4

    #@e
    :goto_0
    if-ge v3, v5, :cond_1

    #@10
    aget-object v1, v0, v3

    #@12
    .line 592
    .local v1, "item":Ljava/lang/String;
    const-string/jumbo v6, "GpsLocationProvider"

    #@15
    new-instance v7, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v8, "GpsParamsResource: "

    #@1d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 594
    const-string/jumbo v6, "="

    #@2f
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 595
    .local v2, "split":[Ljava/lang/String;
    array-length v6, v2

    #@34
    const/4 v7, 0x2

    #@35
    if-ne v6, v7, :cond_0

    #@37
    .line 596
    aget-object v6, v2, v4

    #@39
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    const/4 v7, 0x1

    #@42
    aget-object v7, v2, v7

    #@44
    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@47
    .line 591
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 598
    :cond_0
    const-string/jumbo v6, "GpsLocationProvider"

    #@4d
    new-instance v7, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v8, "malformed contents: "

    #@55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    goto :goto_1

    #@65
    .line 588
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private static native native_configuration_update(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_start_measurement_collection()Z
.end method

.method private native native_start_navigation_message_collection()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_stop_measurement_collection()Z
.end method

.method private native native_stop_navigation_message_collection()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 533
    const-string/jumbo v9, "GpsLocationProvider"

    #@4
    new-instance v10, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v11, "Reset GPS properties, previous size = "

    #@c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v10

    #@10
    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    #@13
    move-result v11

    #@14
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v10

    #@18
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v10

    #@1c
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 534
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    #@22
    .line 535
    const/4 v4, 0x0

    #@23
    .line 536
    .local v4, "isPropertiesLoadedFromFile":Z
    const-string/jumbo v9, "ro.hardware.gps"

    #@26
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 537
    .local v3, "gpsHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2d
    move-result v9

    #@2e
    if-nez v9, :cond_0

    #@30
    .line 539
    new-instance v9, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v10, "/etc/gps."

    #@38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    const-string/jumbo v10, ".conf"

    #@43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    .line 541
    .local v6, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v6, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    #@4e
    move-result v4

    #@4f
    .line 543
    .end local v4    # "isPropertiesLoadedFromFile":Z
    .end local v6    # "propFilename":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    #@51
    .line 544
    const-string/jumbo v9, "/etc/gps.conf"

    #@54
    invoke-direct {p0, v9, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    #@57
    .line 546
    :cond_1
    const-string/jumbo v9, "GpsLocationProvider"

    #@5a
    new-instance v10, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v11, "GPS properties reloaded, size = "

    #@62
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    #@69
    move-result v11

    #@6a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v10

    #@6e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v10

    #@72
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 549
    const-string/jumbo v9, "SUPL_HOST"

    #@78
    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    .line 550
    const-string/jumbo v10, "SUPL_PORT"

    #@7f
    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v10

    #@83
    .line 549
    invoke-direct {p0, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    #@86
    .line 551
    const-string/jumbo v9, "C2K_HOST"

    #@89
    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v9

    #@8d
    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    #@8f
    .line 552
    const-string/jumbo v9, "C2K_PORT"

    #@92
    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    .line 553
    .local v5, "portString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    #@98
    if-eqz v9, :cond_2

    #@9a
    if-eqz v5, :cond_2

    #@9c
    .line 555
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9f
    move-result v9

    #@a0
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a2
    .line 561
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_gnss_configuration_supported()Z

    #@a5
    move-result v9

    #@a6
    if-eqz v9, :cond_5

    #@a8
    .line 564
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@aa
    const/16 v9, 0x1000

    #@ac
    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@af
    .line 565
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    #@b0
    invoke-virtual {p2, v0, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@b3
    .line 566
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@b6
    move-result-object v9

    #@b7
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->native_configuration_update(Ljava/lang/String;)V

    #@ba
    .line 567
    const-string/jumbo v9, "GpsLocationProvider"

    #@bd
    new-instance v10, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v11, "final config = "

    #@c5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v10

    #@c9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@cc
    move-result-object v11

    #@cd
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v10

    #@d1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v10

    #@d5
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@d8
    .line 577
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    #@da
    const-string/jumbo v10, "SUPL_ES"

    #@dd
    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@e0
    move-result-object v7

    #@e1
    .line 578
    .local v7, "suplESProperty":Ljava/lang/String;
    if-eqz v7, :cond_4

    #@e3
    .line 580
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e6
    move-result v9

    #@e7
    if-ne v9, v8, :cond_6

    #@e9
    :goto_2
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@eb
    .line 532
    :cond_4
    :goto_3
    return-void

    #@ec
    .line 556
    .end local v7    # "suplESProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@ed
    .line 557
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "GpsLocationProvider"

    #@f0
    new-instance v10, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v11, "unable to parse C2K_PORT: "

    #@f8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v10

    #@fc
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v10

    #@100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v10

    #@104
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@107
    goto :goto_0

    #@108
    .line 568
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    #@109
    .line 569
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "GpsLocationProvider"

    #@10c
    const-string/jumbo v10, "failed to dump properties contents"

    #@10f
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@112
    goto :goto_1

    #@113
    .line 571
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_5
    sget-boolean v9, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@115
    if-eqz v9, :cond_3

    #@117
    .line 572
    const-string/jumbo v9, "GpsLocationProvider"

    #@11a
    const-string/jumbo v10, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    #@11d
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@120
    goto :goto_1

    #@121
    .line 580
    .restart local v7    # "suplESProperty":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    #@122
    goto :goto_2

    #@123
    .line 581
    :catch_2
    move-exception v1

    #@124
    .line 582
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "GpsLocationProvider"

    #@127
    new-instance v9, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string/jumbo v10, "unable to parse SUPL_ES: "

    #@12f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v9

    #@133
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v9

    #@137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v9

    #@13b
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13e
    goto :goto_3
.end method

.method private reportAGpsStatus(II[B)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1512
    packed-switch p2, :pswitch_data_0

    #@6
    .line 1572
    const-string/jumbo v2, "GpsLocationProvider"

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Received Unknown AGPS status: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1511
    :cond_0
    :goto_0
    return-void

    #@21
    .line 1514
    :pswitch_0
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@23
    if-eqz v2, :cond_1

    #@25
    const-string/jumbo v2, "GpsLocationProvider"

    #@28
    const-string/jumbo v3, "GPS_REQUEST_AGPS_DATA_CONN"

    #@2b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1515
    :cond_1
    const-string/jumbo v2, "GpsLocationProvider"

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Received SUPL IP addr[]: "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 1518
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    #@4a
    .line 1519
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@4c
    .line 1520
    const-string/jumbo v3, "enableSUPL"

    #@4f
    .line 1519
    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    #@52
    move-result v1

    #@53
    .line 1521
    .local v1, "result":I
    if-eqz p3, :cond_2

    #@55
    .line 1523
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@58
    move-result-object v2

    #@59
    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@5b
    .line 1524
    const-string/jumbo v2, "GpsLocationProvider"

    #@5e
    new-instance v3, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v4, "IP address converted to: "

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@77
    .line 1531
    :cond_2
    :goto_1
    if-nez v1, :cond_5

    #@79
    .line 1532
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@7b
    if-eqz v2, :cond_3

    #@7d
    const-string/jumbo v2, "GpsLocationProvider"

    #@80
    const-string/jumbo v3, "PhoneConstants.APN_ALREADY_ACTIVE"

    #@83
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    .line 1533
    :cond_3
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    #@88
    if-eqz v2, :cond_4

    #@8a
    .line 1534
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    #@8d
    .line 1535
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    #@8f
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    #@91
    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    #@94
    .line 1536
    const/4 v2, 0x2

    #@95
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    #@97
    goto :goto_0

    #@98
    .line 1525
    :catch_0
    move-exception v0

    #@99
    .line 1526
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "GpsLocationProvider"

    #@9c
    new-instance v3, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v4, "Bad IP Address: "

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v3

    #@ac
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v3

    #@b0
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b3
    .line 1527
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@b5
    goto :goto_1

    #@b6
    .line 1538
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_4
    const-string/jumbo v2, "GpsLocationProvider"

    #@b9
    const-string/jumbo v3, "mAGpsApn not set when receiving PhoneConstants.APN_ALREADY_ACTIVE"

    #@bc
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bf
    .line 1539
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    #@c1
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1542
    :cond_5
    if-ne v1, v7, :cond_6

    #@c8
    .line 1543
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@ca
    if-eqz v2, :cond_0

    #@cc
    const-string/jumbo v2, "GpsLocationProvider"

    #@cf
    const-string/jumbo v3, "PhoneConstants.APN_REQUEST_STARTED"

    #@d2
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto/16 :goto_0

    #@d7
    .line 1546
    :cond_6
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@d9
    if-eqz v2, :cond_7

    #@db
    const-string/jumbo v2, "GpsLocationProvider"

    #@de
    new-instance v3, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v4, "startUsingNetworkFeature failed, value is "

    #@e6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v3

    #@ea
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v3

    #@ee
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v3

    #@f2
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    .line 1548
    :cond_7
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    #@f7
    .line 1549
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    #@fa
    goto/16 :goto_0

    #@fc
    .line 1553
    .end local v1    # "result":I
    :pswitch_1
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@fe
    if-eqz v2, :cond_8

    #@100
    const-string/jumbo v2, "GpsLocationProvider"

    #@103
    const-string/jumbo v3, "GPS_RELEASE_AGPS_DATA_CONN"

    #@106
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@109
    .line 1554
    :cond_8
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    #@10b
    if-eqz v2, :cond_0

    #@10d
    .line 1555
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@10f
    .line 1556
    const-string/jumbo v3, "enableSUPL"

    #@112
    .line 1555
    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    #@115
    .line 1557
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    #@118
    .line 1558
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    #@11a
    .line 1559
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@11c
    goto/16 :goto_0

    #@11e
    .line 1563
    :pswitch_2
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@120
    if-eqz v2, :cond_0

    #@122
    const-string/jumbo v2, "GpsLocationProvider"

    #@125
    const-string/jumbo v3, "GPS_AGPS_DATA_CONNECTED"

    #@128
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12b
    goto/16 :goto_0

    #@12d
    .line 1566
    :pswitch_3
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@12f
    if-eqz v2, :cond_0

    #@131
    const-string/jumbo v2, "GpsLocationProvider"

    #@134
    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_DONE"

    #@137
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13a
    goto/16 :goto_0

    #@13c
    .line 1569
    :pswitch_4
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@13e
    if-eqz v2, :cond_0

    #@140
    const-string/jumbo v2, "GpsLocationProvider"

    #@143
    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_FAILED"

    #@146
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@149
    goto/16 :goto_0

    #@14b
    .line 1512
    nop

    #@14c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1741
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1742
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    #@15
    .line 1740
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1762
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    #@15
    .line 1760
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1752
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    #@15
    .line 1750
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1772
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    #@15
    .line 1770
    return-void
.end method

.method private reportGeofenceStatus(IIDDDFFFJ)V
    .locals 17
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    #@0
    .prologue
    .line 1714
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1715
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@d
    move-result-object v2

    #@e
    move-object/from16 v0, p0

    #@10
    iput-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@12
    :cond_0
    move-object/from16 v2, p0

    #@14
    move/from16 v3, p2

    #@16
    move-wide/from16 v4, p3

    #@18
    move-wide/from16 v6, p5

    #@1a
    move-wide/from16 v8, p7

    #@1c
    move/from16 v10, p9

    #@1e
    move/from16 v11, p10

    #@20
    move/from16 v12, p11

    #@22
    move-wide/from16 v13, p12

    #@24
    .line 1717
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    #@27
    move-result-object v15

    #@28
    .line 1726
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    #@2a
    .line 1727
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    #@2b
    move/from16 v0, p1

    #@2d
    if-ne v0, v2, :cond_1

    #@2f
    .line 1728
    const/16 v16, 0x0

    #@31
    .line 1730
    :cond_1
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@35
    .line 1734
    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    #@37
    .line 1731
    const/4 v4, 0x0

    #@38
    .line 1730
    move/from16 v0, v16

    #@3a
    invoke-virtual {v2, v4, v0, v15, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    #@3d
    .line 1713
    return-void
.end method

.method private reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 13
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    #@0
    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1688
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    :cond_0
    move-object v0, p0

    #@d
    move v1, p2

    #@e
    move-wide/from16 v2, p3

    #@10
    move-wide/from16 v4, p5

    #@12
    move-wide/from16 v6, p7

    #@14
    move/from16 v8, p9

    #@16
    move/from16 v9, p10

    #@18
    move/from16 v10, p11

    #@1a
    move-wide/from16 v11, p12

    #@1c
    .line 1690
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    #@1f
    move-result-object v2

    #@20
    .line 1699
    .local v2, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@22
    .line 1705
    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    #@24
    .line 1704
    const/4 v6, 0x0

    #@25
    move v1, p1

    #@26
    move/from16 v3, p14

    #@28
    move-wide/from16 v4, p15

    #@2a
    .line 1699
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    #@2d
    .line 1686
    return-void
.end method

.method private reportLocation(IDDDFFFJ)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    #@0
    .prologue
    .line 1354
    sget-boolean v4, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    const-string/jumbo v4, "GpsLocationProvider"

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "reportLocation lat: "

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    const-string/jumbo v6, " long: "

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    .line 1355
    const-string/jumbo v6, " timestamp: "

    #@25
    .line 1354
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    move-wide/from16 v0, p11

    #@2b
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1357
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@38
    monitor-enter v5

    #@39
    .line 1358
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    #@3b
    .line 1359
    and-int/lit8 v4, p1, 0x1

    #@3d
    const/4 v6, 0x1

    #@3e
    if-ne v4, v6, :cond_1

    #@40
    .line 1360
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@42
    invoke-virtual {v4, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    #@45
    .line 1361
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@47
    invoke-virtual {v4, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    #@4a
    .line 1362
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@4c
    move-wide/from16 v0, p11

    #@4e
    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setTime(J)V

    #@51
    .line 1365
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@56
    move-result-wide v6

    #@57
    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    #@5a
    .line 1367
    :cond_1
    and-int/lit8 v4, p1, 0x2

    #@5c
    const/4 v6, 0x2

    #@5d
    if-ne v4, v6, :cond_9

    #@5f
    .line 1368
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@61
    invoke-virtual {v4, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    #@64
    .line 1372
    :goto_0
    and-int/lit8 v4, p1, 0x4

    #@66
    const/4 v6, 0x4

    #@67
    if-ne v4, v6, :cond_a

    #@69
    .line 1373
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@6b
    move/from16 v0, p8

    #@6d
    invoke-virtual {v4, v0}, Landroid/location/Location;->setSpeed(F)V

    #@70
    .line 1377
    :goto_1
    and-int/lit8 v4, p1, 0x8

    #@72
    const/16 v6, 0x8

    #@74
    if-ne v4, v6, :cond_b

    #@76
    .line 1378
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@78
    move/from16 v0, p9

    #@7a
    invoke-virtual {v4, v0}, Landroid/location/Location;->setBearing(F)V

    #@7d
    .line 1382
    :goto_2
    and-int/lit8 v4, p1, 0x10

    #@7f
    const/16 v6, 0x10

    #@81
    if-ne v4, v6, :cond_c

    #@83
    .line 1383
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@85
    move/from16 v0, p10

    #@87
    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    #@8a
    .line 1387
    :goto_3
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@8c
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    #@8e
    invoke-virtual {v4, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@91
    .line 1390
    :try_start_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    #@93
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@95
    const/4 v7, 0x0

    #@96
    invoke-interface {v4, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@99
    :goto_4
    monitor-exit v5

    #@9a
    .line 1396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9d
    move-result-wide v4

    #@9e
    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    #@a0
    .line 1398
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    #@a2
    if-nez v4, :cond_3

    #@a4
    and-int/lit8 v4, p1, 0x1

    #@a6
    const/4 v5, 0x1

    #@a7
    if-ne v4, v5, :cond_3

    #@a9
    .line 1399
    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    #@ab
    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    #@ad
    sub-long/2addr v4, v6

    #@ae
    long-to-int v4, v4

    #@af
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    #@b1
    .line 1400
    sget-boolean v4, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@b3
    if-eqz v4, :cond_2

    #@b5
    const-string/jumbo v4, "GpsLocationProvider"

    #@b8
    new-instance v5, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v6, "TTFF: "

    #@c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    #@c6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v5

    #@ca
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v5

    #@ce
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    .line 1403
    :cond_2
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    #@d3
    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    #@d5
    invoke-virtual {v4, v5}, Lcom/android/server/location/GpsStatusListenerHelper;->onFirstFix(I)V

    #@d8
    .line 1406
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    #@da
    if-eqz v4, :cond_4

    #@dc
    .line 1407
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    #@df
    .line 1410
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@e1
    if-eqz v4, :cond_6

    #@e3
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    #@e5
    const/4 v5, 0x2

    #@e6
    if-eq v4, v5, :cond_6

    #@e8
    .line 1413
    const/4 v4, 0x1

    #@e9
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@ec
    move-result v4

    #@ed
    if-nez v4, :cond_5

    #@ef
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@f1
    const v5, 0xea60

    #@f4
    if-ge v4, v5, :cond_5

    #@f6
    .line 1414
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@f8
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@fa
    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@fd
    .line 1418
    :cond_5
    new-instance v3, Landroid/content/Intent;

    #@ff
    const-string/jumbo v4, "android.location.GPS_FIX_CHANGE"

    #@102
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@105
    .line 1419
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    #@108
    const/4 v5, 0x1

    #@109
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@10c
    .line 1420
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@10e
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@110
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@113
    .line 1421
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    #@115
    const/4 v5, 0x2

    #@116
    invoke-direct {p0, v5, v4}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    #@119
    .line 1424
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v4, 0x1

    #@11a
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@11d
    move-result v4

    #@11e
    if-nez v4, :cond_8

    #@120
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@122
    if-eqz v4, :cond_8

    #@124
    .line 1425
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@126
    const/16 v5, 0x2710

    #@128
    if-le v4, v5, :cond_8

    #@12a
    .line 1426
    sget-boolean v4, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@12c
    if-eqz v4, :cond_7

    #@12e
    const-string/jumbo v4, "GpsLocationProvider"

    #@131
    const-string/jumbo v5, "got fix, hibernating"

    #@134
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@137
    .line 1427
    :cond_7
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    #@13a
    .line 1353
    :cond_8
    return-void

    #@13b
    .line 1370
    :cond_9
    :try_start_2
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@13d
    invoke-virtual {v4}, Landroid/location/Location;->removeAltitude()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@140
    goto/16 :goto_0

    #@142
    .line 1357
    :catchall_0
    move-exception v4

    #@143
    monitor-exit v5

    #@144
    throw v4

    #@145
    .line 1375
    :cond_a
    :try_start_3
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@147
    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    #@14a
    goto/16 :goto_1

    #@14c
    .line 1380
    :cond_b
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@14e
    invoke-virtual {v4}, Landroid/location/Location;->removeBearing()V

    #@151
    goto/16 :goto_2

    #@153
    .line 1385
    :cond_c
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    #@155
    invoke-virtual {v4}, Landroid/location/Location;->removeAccuracy()V

    #@158
    goto/16 :goto_3

    #@15a
    .line 1391
    :catch_0
    move-exception v2

    #@15b
    .line 1392
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "GpsLocationProvider"

    #@15e
    const-string/jumbo v6, "RemoteException calling reportLocation"

    #@161
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@164
    goto/16 :goto_4
.end method

.method private reportMeasurementData(Landroid/location/GpsMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    #@0
    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V

    #@5
    .line 1588
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GpsNavigationMessageEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsNavigationMessageEvent;

    #@0
    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GpsNavigationMessageEvent;)V

    #@5
    .line 1595
    return-void
.end method

.method private reportNmea(J)V
    .locals 5
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 1580
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    #@2
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    #@4
    array-length v3, v3

    #@5
    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    #@8
    move-result v0

    #@9
    .line 1581
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    #@b
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    #@d
    const/4 v3, 0x0

    #@e
    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    #@11
    .line 1582
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    #@13
    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    #@16
    .line 1579
    return-void
.end method

.method private reportStatus(I)V
    .locals 7
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1435
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    const-string/jumbo v2, "GpsLocationProvider"

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "reportStatus status: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1437
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    #@22
    .line 1438
    .local v1, "wasNavigating":Z
    packed-switch p1, :pswitch_data_0

    #@25
    .line 1455
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    #@27
    if-eq v1, v2, :cond_1

    #@29
    .line 1456
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    #@2b
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    #@2d
    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsStatusListenerHelper;->onStatusChanged(Z)V

    #@30
    .line 1459
    new-instance v0, Landroid/content/Intent;

    #@32
    const-string/jumbo v2, "android.location.GPS_ENABLED_CHANGE"

    #@35
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@38
    .line 1460
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "enabled"

    #@3b
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    #@3d
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@40
    .line 1461
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@42
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@44
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@47
    .line 1434
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    #@48
    .line 1440
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    #@4a
    .line 1441
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    #@4c
    goto :goto_0

    #@4d
    .line 1444
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    #@4f
    goto :goto_0

    #@50
    .line 1447
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    #@52
    goto :goto_0

    #@53
    .line 1450
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    #@55
    .line 1451
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    #@57
    goto :goto_0

    #@58
    .line 1438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x1

    #@2
    const/4 v11, 0x0

    #@3
    .line 1469
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    #@5
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    #@7
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    #@9
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    #@b
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@d
    move-object v0, p0

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    #@11
    move-result v1

    #@12
    .line 1470
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    #@14
    .line 1472
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    #@16
    .line 1473
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    #@18
    .line 1474
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    #@1a
    .line 1475
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    #@1c
    .line 1476
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@1e
    aget v6, v6, v11

    #@20
    .line 1477
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@22
    aget v7, v7, v12

    #@24
    .line 1478
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@26
    aget v8, v8, v13

    #@28
    .line 1470
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII)V

    #@2b
    .line 1480
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 1481
    const-string/jumbo v0, "GpsLocationProvider"

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "SV count: "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 1482
    const-string/jumbo v3, " ephemerisMask: "

    #@45
    .line 1481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 1482
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@4b
    aget v3, v3, v11

    #@4d
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    .line 1481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    .line 1483
    const-string/jumbo v3, " almanacMask: "

    #@58
    .line 1481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    .line 1483
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@5e
    aget v3, v3, v12

    #@60
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    .line 1481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 1484
    const/4 v9, 0x0

    #@70
    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_3

    #@72
    .line 1485
    const-string/jumbo v2, "GpsLocationProvider"

    #@75
    new-instance v0, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v3, "sv: "

    #@7d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    #@83
    aget v3, v3, v9

    #@85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    .line 1486
    const-string/jumbo v3, " snr: "

    #@8c
    .line 1485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    .line 1486
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    #@92
    aget v3, v3, v9

    #@94
    const/high16 v4, 0x41200000    # 10.0f

    #@96
    div-float/2addr v3, v4

    #@97
    .line 1485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 1487
    const-string/jumbo v3, " elev: "

    #@9e
    .line 1485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    .line 1487
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    #@a4
    aget v3, v3, v9

    #@a6
    .line 1485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v0

    #@aa
    .line 1488
    const-string/jumbo v3, " azimuth: "

    #@ad
    .line 1485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    .line 1488
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    #@b3
    aget v3, v3, v9

    #@b5
    .line 1485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    .line 1489
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@bb
    aget v0, v0, v11

    #@bd
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    #@bf
    aget v4, v4, v9

    #@c1
    add-int/lit8 v4, v4, -0x1

    #@c3
    shl-int v4, v12, v4

    #@c5
    and-int/2addr v0, v4

    #@c6
    if-nez v0, :cond_0

    #@c8
    const-string/jumbo v0, "  "

    #@cb
    .line 1485
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v3

    #@cf
    .line 1490
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@d1
    aget v0, v0, v12

    #@d3
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    #@d5
    aget v4, v4, v9

    #@d7
    add-int/lit8 v4, v4, -0x1

    #@d9
    shl-int v4, v12, v4

    #@db
    and-int/2addr v0, v4

    #@dc
    if-nez v0, :cond_1

    #@de
    const-string/jumbo v0, "  "

    #@e1
    .line 1485
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v3

    #@e5
    .line 1491
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@e7
    aget v0, v0, v13

    #@e9
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    #@eb
    aget v4, v4, v9

    #@ed
    add-int/lit8 v4, v4, -0x1

    #@ef
    shl-int v4, v12, v4

    #@f1
    and-int/2addr v0, v4

    #@f2
    if-nez v0, :cond_2

    #@f4
    const-string/jumbo v0, ""

    #@f7
    .line 1485
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v0

    #@fb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v0

    #@ff
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    .line 1484
    add-int/lit8 v9, v9, 0x1

    #@104
    goto/16 :goto_0

    #@106
    .line 1489
    :cond_0
    const-string/jumbo v0, " E"

    #@109
    goto :goto_1

    #@10a
    .line 1490
    :cond_1
    const-string/jumbo v0, " A"

    #@10d
    goto :goto_2

    #@10e
    .line 1491
    :cond_2
    const-string/jumbo v0, "U"

    #@111
    goto :goto_3

    #@112
    .line 1496
    .end local v9    # "i":I
    :cond_3
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    #@114
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    #@116
    aget v2, v2, v13

    #@118
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    #@11b
    move-result v2

    #@11c
    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    #@11f
    .line 1498
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    #@121
    if-eqz v0, :cond_4

    #@123
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    #@125
    if-ne v0, v13, :cond_4

    #@127
    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    #@129
    const-wide/16 v4, 0x0

    #@12b
    cmp-long v0, v2, v4

    #@12d
    if-lez v0, :cond_4

    #@12f
    .line 1499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@132
    move-result-wide v2

    #@133
    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    #@135
    sub-long/2addr v2, v4

    #@136
    const-wide/16 v4, 0x2710

    #@138
    cmp-long v0, v2, v4

    #@13a
    if-lez v0, :cond_4

    #@13c
    .line 1501
    new-instance v10, Landroid/content/Intent;

    #@13e
    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    #@141
    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@144
    .line 1502
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enabled"

    #@147
    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@14a
    .line 1503
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@14c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@14e
    invoke-virtual {v0, v10, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@151
    .line 1504
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    #@153
    invoke-direct {p0, v12, v0}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    #@156
    .line 1468
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_4
    return-void
.end method

.method private requestRefLocation(I)V
    .locals 10
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 1912
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "phone"

    #@6
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v8

    #@a
    .line 1911
    check-cast v8, Landroid/telephony/TelephonyManager;

    #@c
    .line 1913
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    #@f
    move-result v9

    #@10
    .line 1914
    .local v9, "phoneType":I
    const/4 v0, 0x1

    #@11
    if-ne v9, v0, :cond_4

    #@13
    .line 1915
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    #@16
    move-result-object v6

    #@17
    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    #@19
    .line 1916
    .local v6, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_3

    #@1b
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 1917
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@28
    move-result v0

    #@29
    if-le v0, v5, :cond_3

    #@2b
    .line 1919
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@37
    move-result v2

    #@38
    .line 1920
    .local v2, "mcc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@43
    move-result v3

    #@44
    .line 1921
    .local v3, "mnc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@47
    move-result v7

    #@48
    .line 1922
    .local v7, "networkType":I
    if-eq v7, v5, :cond_0

    #@4a
    .line 1923
    const/16 v0, 0x8

    #@4c
    if-ne v7, v0, :cond_2

    #@4e
    .line 1927
    :cond_0
    const/4 v1, 0x2

    #@4f
    .line 1932
    .local v1, "type":I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    #@52
    move-result v4

    #@53
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@56
    move-result v5

    #@57
    move-object v0, p0

    #@58
    .line 1931
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    #@5b
    .line 1910
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "networkType":I
    :cond_1
    :goto_1
    return-void

    #@5c
    .line 1924
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7    # "networkType":I
    :cond_2
    const/16 v0, 0x9

    #@5e
    if-eq v7, v0, :cond_0

    #@60
    .line 1925
    const/16 v0, 0xa

    #@62
    if-eq v7, v0, :cond_0

    #@64
    .line 1926
    const/16 v0, 0xf

    #@66
    if-eq v7, v0, :cond_0

    #@68
    .line 1929
    const/4 v1, 0x1

    #@69
    .restart local v1    # "type":I
    goto :goto_0

    #@6a
    .line 1934
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v7    # "networkType":I
    :cond_3
    const-string/jumbo v0, "GpsLocationProvider"

    #@6d
    const-string/jumbo v4, "Error getting cell location info."

    #@70
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    goto :goto_1

    #@74
    .line 1936
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    const/4 v0, 0x2

    #@75
    if-ne v9, v0, :cond_1

    #@77
    .line 1937
    const-string/jumbo v0, "GpsLocationProvider"

    #@7a
    const-string/jumbo v4, "CDMA not supported."

    #@7d
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1871
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "phone"

    #@5
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 1870
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@b
    .line 1872
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    #@c
    .line 1873
    .local v3, "type":I
    const-string/jumbo v0, ""

    #@f
    .line 1875
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    #@11
    const/4 v5, 0x1

    #@12
    if-ne v4, v5, :cond_2

    #@14
    .line 1876
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 1877
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1

    #@1a
    .line 1895
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    #@1d
    .line 1869
    return-void

    #@1e
    .line 1881
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    #@1f
    .line 1882
    const/4 v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1885
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    #@23
    const/4 v5, 0x2

    #@24
    if-ne v4, v5, :cond_0

    #@26
    .line 1886
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 1887
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@2c
    .line 1891
    move-object v0, v1

    #@2d
    .line 1892
    const/4 v3, 0x2

    #@2e
    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    #@0
    .prologue
    .line 1903
    const/4 v0, 0x5

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@6
    .line 1902
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5
    .line 1946
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 1941
    return-void
.end method

.method private setEngineCapabilities(I)V
    .locals 5
    .param p1, "capabilities"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1603
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    #@4
    .line 1605
    const/16 v0, 0x10

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1610
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@12
    .line 1611
    and-int/lit8 v0, p1, 0x40

    #@14
    const/16 v4, 0x40

    #@16
    if-ne v0, v4, :cond_2

    #@18
    move v0, v1

    #@19
    .line 1610
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    #@1c
    .line 1612
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@1e
    .line 1613
    and-int/lit16 v3, p1, 0x80

    #@20
    const/16 v4, 0x80

    #@22
    if-ne v3, v4, :cond_3

    #@24
    .line 1612
    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    #@27
    .line 1602
    return-void

    #@28
    .line 1606
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    #@2a
    .line 1607
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    #@2d
    goto :goto_0

    #@2e
    :cond_2
    move v0, v2

    #@2f
    .line 1611
    goto :goto_1

    #@30
    :cond_3
    move v1, v2

    #@31
    .line 1613
    goto :goto_2
.end method

.method private setRouting()V
    .locals 4

    #@0
    .prologue
    .line 2172
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2173
    return-void

    #@5
    .line 2176
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@7
    .line 2178
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@9
    .line 2177
    const/4 v3, 0x3

    #@a
    .line 2176
    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    #@d
    move-result v0

    #@e
    .line 2180
    .local v0, "result":Z
    if-nez v0, :cond_2

    #@10
    .line 2181
    const-string/jumbo v1, "GpsLocationProvider"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Error requesting route to host: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 2171
    :cond_1
    :goto_0
    return-void

    #@2d
    .line 2182
    :cond_2
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 2183
    const-string/jumbo v1, "GpsLocationProvider"

    #@34
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v3, "Successfully requested route to host: "

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    goto :goto_0
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 928
    if-eqz p1, :cond_0

    #@2
    .line 929
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@4
    .line 931
    :cond_0
    if-eqz p2, :cond_1

    #@6
    .line 933
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 938
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 939
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    #@12
    if-lez v1, :cond_2

    #@14
    .line 940
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    #@16
    const v2, 0xffff

    #@19
    if-gt v1, v2, :cond_2

    #@1b
    .line 941
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@1d
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    #@1f
    const/4 v3, 0x1

    #@20
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    #@23
    .line 927
    :cond_2
    return-void

    #@24
    .line 934
    :catch_0
    move-exception v0

    #@25
    .line 935
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "GpsLocationProvider"

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "unable to parse SUPL_PORT: "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto :goto_0
.end method

.method private startNavigating(Z)V
    .locals 10
    .param p1, "singleShot"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1260
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@4
    if-nez v0, :cond_6

    #@6
    .line 1261
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v0, "GpsLocationProvider"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "startNavigating, singleShot is "

    #@15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1262
    :cond_0
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    #@26
    .line 1263
    const-wide/16 v0, 0x0

    #@28
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    #@2a
    .line 1264
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@2c
    .line 1265
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    #@2e
    .line 1266
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    #@30
    .line 1269
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@35
    move-result-object v0

    #@36
    .line 1270
    const-string/jumbo v1, "assisted_gps_enabled"

    #@39
    .line 1269
    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_2

    #@3f
    const/4 v6, 0x1

    #@40
    .line 1271
    .local v6, "agpsEnabled":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    #@42
    invoke-direct {p0, v0, v6, p1}, Lcom/android/server/location/GpsLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    #@45
    move-result v0

    #@46
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    #@48
    .line 1273
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@4a
    if-eqz v0, :cond_1

    #@4c
    .line 1276
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    #@4e
    packed-switch v0, :pswitch_data_0

    #@51
    .line 1287
    const-string/jumbo v7, "unknown"

    #@54
    .line 1290
    .local v7, "mode":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "GpsLocationProvider"

    #@57
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v4, "setting position_mode to "

    #@5f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 1293
    .end local v7    # "mode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@71
    move-result v0

    #@72
    if-eqz v0, :cond_3

    #@74
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@76
    .line 1294
    .local v3, "interval":I
    :goto_2
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    #@78
    move-object v0, p0

    #@79
    move v4, v2

    #@7a
    move v5, v2

    #@7b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    #@7e
    move-result v0

    #@7f
    if-nez v0, :cond_4

    #@81
    .line 1296
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@83
    .line 1297
    const-string/jumbo v0, "GpsLocationProvider"

    #@86
    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    #@89
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    .line 1298
    return-void

    #@8d
    .line 1269
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    :cond_2
    const/4 v6, 0x0

    #@8e
    .restart local v6    # "agpsEnabled":Z
    goto :goto_0

    #@8f
    .line 1278
    :pswitch_0
    const-string/jumbo v7, "standalone"

    #@92
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    #@93
    .line 1281
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v7, "MS_ASSISTED"

    #@96
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    #@97
    .line 1284
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v7, "MS_BASED"

    #@9a
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    #@9b
    .line 1293
    .end local v7    # "mode":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x3e8

    #@9d
    .restart local v3    # "interval":I
    goto :goto_2

    #@9e
    .line 1300
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    #@a1
    move-result v0

    #@a2
    if-nez v0, :cond_5

    #@a4
    .line 1301
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@a6
    .line 1302
    const-string/jumbo v0, "GpsLocationProvider"

    #@a9
    const-string/jumbo v1, "native_start failed in startNavigating()"

    #@ac
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 1303
    return-void

    #@b0
    .line 1307
    :cond_5
    invoke-direct {p0, v8, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    #@b3
    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b6
    move-result-wide v0

    #@b7
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    #@b9
    .line 1309
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@bc
    move-result v0

    #@bd
    if-nez v0, :cond_6

    #@bf
    .line 1312
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@c1
    const v1, 0xea60

    #@c4
    if-lt v0, v1, :cond_6

    #@c6
    .line 1313
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@c8
    .line 1314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@cb
    move-result-wide v4

    #@cc
    const-wide/32 v8, 0xea60

    #@cf
    add-long/2addr v4, v8

    #@d0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@d2
    .line 1313
    const/4 v2, 0x2

    #@d3
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@d6
    .line 1259
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    :cond_6
    return-void

    #@d7
    .line 1276
    nop

    #@d8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private stopNavigating()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1321
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "GpsLocationProvider"

    #@8
    const-string/jumbo v1, "stopNavigating"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1322
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1323
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@14
    .line 1324
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    #@16
    .line 1325
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    #@19
    .line 1326
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    #@1b
    .line 1327
    const-wide/16 v0, 0x0

    #@1d
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    #@1f
    .line 1328
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    #@21
    .line 1331
    const/4 v0, 0x1

    #@22
    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    #@25
    .line 1320
    :cond_1
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 484
    const-string/jumbo v2, "GpsLocationProvider"

    #@3
    const-string/jumbo v3, "received SIM related action: "

    #@6
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 486
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v3, "phone"

    #@e
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 485
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@14
    .line 487
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 488
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 489
    const-string/jumbo v2, "GpsLocationProvider"

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "SIM MCC/MNC is available: "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 490
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    #@3a
    monitor-enter v3

    #@3b
    .line 491
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    #@3d
    invoke-direct {p0, p1, v2}, Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    #@40
    .line 492
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@42
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    #@44
    invoke-virtual {v2, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    monitor-exit v3

    #@48
    .line 483
    :goto_0
    return-void

    #@49
    .line 490
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2

    #@4c
    .line 495
    :cond_0
    const-string/jumbo v2, "GpsLocationProvider"

    #@4f
    const-string/jumbo v3, "SIM MCC/MNC is still not available"

    #@52
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    goto :goto_0
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 2155
    const-string/jumbo v1, "IP"

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2156
    return v4

    #@d
    .line 2158
    :cond_0
    const-string/jumbo v1, "IPV6"

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 2159
    return v2

    #@17
    .line 2161
    :cond_1
    const-string/jumbo v1, "IPV4V6"

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 2162
    const/4 v1, 0x3

    #@21
    return v1

    #@22
    .line 2166
    :cond_2
    const-string/jumbo v1, "Unknown IP Protocol: %s, for APN: %s"

    #@25
    new-array v2, v2, [Ljava/lang/Object;

    #@27
    aput-object p1, v2, v3

    #@29
    aput-object p2, v2, v4

    #@2b
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 2167
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GpsLocationProvider"

    #@32
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 2168
    return v3
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1136
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    #@2
    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    #@5
    move-result-object v0

    #@6
    .line 1137
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_0

    #@8
    .line 1138
    return-void

    #@9
    .line 1140
    :cond_0
    const/4 v7, 0x0

    #@a
    aget-object v5, v0, v7

    #@c
    .line 1141
    .local v5, "newWork":Landroid/os/WorkSource;
    const/4 v7, 0x1

    #@d
    aget-object v2, v0, v7

    #@f
    .line 1144
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_2

    #@11
    .line 1145
    const/4 v4, -0x1

    #@12
    .line 1146
    .local v4, "lastuid":I
    const/4 v3, 0x0

    #@13
    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    #@16
    move-result v7

    #@17
    if-ge v3, v7, :cond_2

    #@19
    .line 1148
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    #@1c
    move-result v6

    #@1d
    .line 1149
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@1f
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@21
    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@24
    move-result-object v8

    #@25
    .line 1150
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@28
    move-result-object v9

    #@29
    const/4 v10, 0x2

    #@2a
    .line 1149
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    #@2d
    .line 1151
    if-eq v6, v4, :cond_1

    #@2f
    .line 1152
    move v4, v6

    #@30
    .line 1153
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@32
    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 1146
    .end local v6    # "uid":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1155
    :catch_0
    move-exception v1

    #@39
    .line 1156
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GpsLocationProvider"

    #@3c
    const-string/jumbo v8, "RemoteException"

    #@3f
    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    goto :goto_1

    #@43
    .line 1162
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_2
    if-eqz v2, :cond_4

    #@45
    .line 1163
    const/4 v4, -0x1

    #@46
    .line 1164
    .restart local v4    # "lastuid":I
    const/4 v3, 0x0

    #@47
    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    #@4a
    move-result v7

    #@4b
    if-ge v3, v7, :cond_4

    #@4d
    .line 1166
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    #@50
    move-result v6

    #@51
    .line 1167
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@53
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@55
    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@58
    move-result-object v8

    #@59
    .line 1168
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    const/4 v10, 0x2

    #@5e
    .line 1167
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    #@61
    .line 1169
    if-eq v6, v4, :cond_3

    #@63
    .line 1170
    move v4, v6

    #@64
    .line 1171
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@66
    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    .line 1164
    .end local v6    # "uid":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@6b
    goto :goto_2

    #@6c
    .line 1173
    :catch_1
    move-exception v1

    #@6d
    .line 1174
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GpsLocationProvider"

    #@70
    const-string/jumbo v8, "RemoteException"

    #@73
    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    goto :goto_3

    #@77
    .line 1134
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_4
    return-void
.end method

.method private updateLowPowerMode()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 514
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    #@4
    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@7
    move-result v0

    #@8
    .line 515
    .local v0, "disableGps":Z
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v3

    #@e
    const-string/jumbo v4, "batterySaverGpsMode"

    #@11
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@14
    move-result v3

    #@15
    packed-switch v3, :pswitch_data_0

    #@18
    .line 522
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    #@1a
    if-eq v0, v1, :cond_0

    #@1c
    .line 523
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    #@1e
    .line 524
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    #@21
    .line 512
    :cond_0
    return-void

    #@22
    .line 519
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    #@24
    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    #@2c
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    :cond_1
    :goto_1
    or-int/2addr v0, v1

    #@33
    .line 520
    goto :goto_0

    #@34
    :cond_2
    move v1, v2

    #@35
    .line 519
    goto :goto_1

    #@36
    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequirements()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1081
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    #@8
    if-nez v0, :cond_1

    #@a
    .line 1082
    :cond_0
    return-void

    #@b
    .line 1085
    :cond_1
    const/4 v8, 0x0

    #@c
    .line 1088
    .local v8, "singleShot":Z
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@e
    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 1089
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@14
    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@16
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v0

    #@1a
    if-lez v0, :cond_3

    #@1c
    .line 1092
    const/4 v8, 0x1

    #@1d
    .line 1094
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@1f
    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v7

    #@25
    .local v7, "lr$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v6

    #@2f
    check-cast v6, Landroid/location/LocationRequest;

    #@31
    .line 1095
    .local v6, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    #@34
    move-result v0

    #@35
    if-eq v0, v9, :cond_2

    #@37
    .line 1096
    const/4 v8, 0x0

    #@38
    goto :goto_0

    #@39
    .line 1101
    .end local v6    # "lr":Landroid/location/LocationRequest;
    .end local v7    # "lr$iterator":Ljava/util/Iterator;
    :cond_3
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@3b
    if-eqz v0, :cond_4

    #@3d
    const-string/jumbo v0, "GpsLocationProvider"

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "setRequest "

    #@48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@4e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 1102
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@5b
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@5d
    if-eqz v0, :cond_5

    #@5f
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    #@61
    if-eqz v0, :cond_7

    #@63
    .line 1126
    :cond_5
    new-instance v0, Landroid/os/WorkSource;

    #@65
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    #@68
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    #@6b
    .line 1128
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    #@6e
    .line 1129
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@70
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@72
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@75
    .line 1130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@77
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@79
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7c
    .line 1080
    :cond_6
    :goto_1
    return-void

    #@7d
    .line 1104
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    #@7f
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    #@82
    .line 1106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@84
    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@86
    long-to-int v0, v0

    #@87
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@89
    .line 1109
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@8b
    int-to-long v0, v0

    #@8c
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@8e
    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@90
    cmp-long v0, v0, v4

    #@92
    if-eqz v0, :cond_8

    #@94
    .line 1110
    const-string/jumbo v0, "GpsLocationProvider"

    #@97
    new-instance v1, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v3, "interval overflow: "

    #@9f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@a5
    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@a7
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v1

    #@af
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 1111
    const v0, 0x7fffffff

    #@b5
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@b7
    .line 1115
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@b9
    if-eqz v0, :cond_9

    #@bb
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@be
    move-result v0

    #@bf
    if-eqz v0, :cond_9

    #@c1
    .line 1117
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    #@c3
    .line 1118
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@c5
    move-object v0, p0

    #@c6
    move v4, v2

    #@c7
    move v5, v2

    #@c8
    .line 1117
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    #@cb
    move-result v0

    #@cc
    if-nez v0, :cond_6

    #@ce
    .line 1119
    const-string/jumbo v0, "GpsLocationProvider"

    #@d1
    const-string/jumbo v1, "set_position_mode failed in setMinTime()"

    #@d4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    goto :goto_1

    #@d8
    .line 1121
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    #@da
    if-nez v0, :cond_6

    #@dc
    .line 1123
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    #@df
    goto :goto_1
.end method

.method private updateStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    #@0
    .prologue
    .line 1055
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    #@6
    if-eq p2, v0, :cond_1

    #@8
    .line 1056
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    #@a
    .line 1057
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    #@c
    .line 1058
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    #@e
    const-string/jumbo v1, "satellites"

    #@11
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@14
    .line 1059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    #@1a
    .line 1054
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    #@0
    .prologue
    .line 1620
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GpsLocationProvider"

    #@7
    const-string/jumbo v1, "xtraDownloadRequest"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1621
    :cond_0
    const/4 v0, 0x6

    #@e
    const/4 v1, 0x0

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@13
    .line 1619
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1016
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 1017
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    .line 1018
    :cond_0
    const/4 v0, 0x0

    #@b
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1021
    const/4 v0, 0x2

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@13
    .line 1015
    return-void

    #@14
    .line 1016
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2190
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "  mFixInterval="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "\n"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 2191
    const-string/jumbo v1, "  mDisableGps (battery saver mode)="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "\n"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 2192
    const-string/jumbo v1, "  mEngineCapabilities=0x"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    #@34
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    const-string/jumbo v2, " ("

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 2193
    const/4 v1, 0x1

    #@43
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_0

    #@49
    const-string/jumbo v1, "SCHED "

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 2194
    :cond_0
    const/4 v1, 0x2

    #@50
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_1

    #@56
    const-string/jumbo v1, "MSB "

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 2195
    :cond_1
    const/4 v1, 0x4

    #@5d
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_2

    #@63
    const-string/jumbo v1, "MSA "

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 2196
    :cond_2
    const/16 v1, 0x8

    #@6b
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@6e
    move-result v1

    #@6f
    if-eqz v1, :cond_3

    #@71
    const-string/jumbo v1, "SINGLE_SHOT "

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 2197
    :cond_3
    const/16 v1, 0x10

    #@79
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    #@7c
    move-result v1

    #@7d
    if-eqz v1, :cond_4

    #@7f
    const-string/jumbo v1, "ON_DEMAND_TIME "

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 2198
    :cond_4
    const-string/jumbo v1, ")\n"

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 2200
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 2201
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@95
    .line 2188
    return-void
.end method

.method public enable()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 919
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 920
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    .line 921
    :cond_0
    const/4 v0, 0x1

    #@b
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 924
    const/4 v0, 0x2

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@13
    .line 918
    return-void

    #@14
    .line 919
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    #@2
    return-object v0
.end method

.method public getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;
    .locals 1

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    #@2
    return-object v0
.end method

.method public getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;
    .locals 1

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    #@2
    return-object v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 727
    const-string/jumbo v0, "gps"

    #@3
    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    #@0
    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@2
    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    #@0
    .prologue
    .line 732
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    #@2
    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1048
    if-eqz p1, :cond_0

    #@2
    .line 1049
    const-string/jumbo v0, "satellites"

    #@5
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a
    .line 1051
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    #@c
    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    #@0
    .prologue
    .line 1065
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    #@2
    return-wide v0
.end method

.method public isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1042
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1041
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1812
    const-string/jumbo v7, "GpsLocationProvider"

    #@3
    const-string/jumbo v8, "reportNiNotification: entered"

    #@6
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1813
    const-string/jumbo v7, "GpsLocationProvider"

    #@c
    new-instance v8, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v9, "notificationId: "

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    .line 1814
    const-string/jumbo v9, ", niType: "

    #@1f
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    .line 1815
    const-string/jumbo v9, ", notifyFlags: "

    #@2a
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    .line 1816
    const-string/jumbo v9, ", timeout: "

    #@35
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    .line 1817
    const-string/jumbo v9, ", defaultResponse: "

    #@40
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 1819
    const-string/jumbo v7, "GpsLocationProvider"

    #@52
    new-instance v8, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v9, "requestorId: "

    #@5a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    move-object/from16 v0, p6

    #@60
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    .line 1820
    const-string/jumbo v9, ", text: "

    #@67
    .line 1819
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    move-object/from16 v0, p7

    #@6d
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    .line 1821
    const-string/jumbo v9, ", requestorIdEncoding: "

    #@74
    .line 1819
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    move/from16 v0, p8

    #@7a
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v8

    #@7e
    .line 1822
    const-string/jumbo v9, ", textEncoding: "

    #@81
    .line 1819
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v8

    #@85
    move/from16 v0, p9

    #@87
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 1824
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    #@94
    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    #@97
    .line 1826
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@99
    .line 1827
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    #@9b
    .line 1828
    and-int/lit8 v7, p3, 0x1

    #@9d
    if-eqz v7, :cond_1

    #@9f
    const/4 v7, 0x1

    #@a0
    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    #@a2
    .line 1829
    and-int/lit8 v7, p3, 0x2

    #@a4
    if-eqz v7, :cond_2

    #@a6
    const/4 v7, 0x1

    #@a7
    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    #@a9
    .line 1830
    and-int/lit8 v7, p3, 0x4

    #@ab
    if-eqz v7, :cond_3

    #@ad
    const/4 v7, 0x1

    #@ae
    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    #@b0
    .line 1831
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    #@b2
    .line 1832
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    #@b4
    .line 1833
    move-object/from16 v0, p6

    #@b6
    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    #@b8
    .line 1834
    move-object/from16 v0, p7

    #@ba
    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    #@bc
    .line 1835
    move/from16 v0, p8

    #@be
    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    #@c0
    .line 1836
    move/from16 v0, p9

    #@c2
    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    #@c4
    .line 1840
    new-instance v1, Landroid/os/Bundle;

    #@c6
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@c9
    .line 1842
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_0

    #@cb
    const-string/jumbo p10, ""

    #@ce
    .line 1843
    :cond_0
    new-instance v5, Ljava/util/Properties;

    #@d0
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    #@d3
    .line 1846
    .local v5, "extraProp":Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    #@d5
    move-object/from16 v0, p10

    #@d7
    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@da
    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@dd
    .line 1853
    :goto_3
    invoke-virtual {v5}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    #@e0
    move-result-object v7

    #@e1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e4
    move-result-object v4

    #@e5
    .local v4, "ent$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@e8
    move-result v7

    #@e9
    if-eqz v7, :cond_4

    #@eb
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ee
    move-result-object v3

    #@ef
    check-cast v3, Ljava/util/Map$Entry;

    #@f1
    .line 1855
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@f4
    move-result-object v7

    #@f5
    check-cast v7, Ljava/lang/String;

    #@f7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@fa
    move-result-object v8

    #@fb
    check-cast v8, Ljava/lang/String;

    #@fd
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@100
    goto :goto_4

    #@101
    .line 1828
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "ent$iterator":Ljava/util/Iterator;
    .end local v5    # "extraProp":Ljava/util/Properties;
    :cond_1
    const/4 v7, 0x0

    #@102
    goto :goto_0

    #@103
    .line 1829
    :cond_2
    const/4 v7, 0x0

    #@104
    goto :goto_1

    #@105
    .line 1830
    :cond_3
    const/4 v7, 0x0

    #@106
    goto :goto_2

    #@107
    .line 1849
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "extraProp":Ljava/util/Properties;
    :catch_0
    move-exception v2

    #@108
    .line 1850
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "GpsLocationProvider"

    #@10b
    new-instance v8, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v9, "reportNiNotification cannot parse extras data: "

    #@113
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v8

    #@117
    move-object/from16 v0, p10

    #@119
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v8

    #@11d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v8

    #@121
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@124
    goto :goto_3

    #@125
    .line 1858
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "ent$iterator":Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    #@127
    .line 1860
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@129
    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    #@12c
    .line 1810
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1184
    .local v0, "identity":J
    const/4 v2, 0x0

    #@5
    .line 1186
    .local v2, "result":Z
    const-string/jumbo v3, "delete_aiding_data"

    #@8
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 1187
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    #@11
    move-result v2

    #@12
    .line 1200
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 1201
    return v2

    #@16
    .line 1188
    .restart local v2    # "result":Z
    :cond_1
    const-string/jumbo v3, "force_time_injection"

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 1189
    const/4 v3, 0x5

    #@20
    const/4 v4, 0x0

    #@21
    const/4 v5, 0x0

    #@22
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@25
    .line 1190
    const/4 v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1191
    :cond_2
    const-string/jumbo v3, "force_xtra_injection"

    #@2a
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_3

    #@30
    .line 1192
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    #@32
    if-eqz v3, :cond_0

    #@34
    .line 1193
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    #@37
    .line 1194
    const/4 v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 1197
    :cond_3
    const-string/jumbo v3, "GpsLocationProvider"

    #@3c
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "sendExtraCommand: unknown command "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1070
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    #@5
    const/4 v1, 0x3

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@a
    .line 1069
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 736
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@4
    .line 735
    return-void
.end method
