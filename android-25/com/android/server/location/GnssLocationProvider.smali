.class public Lcom/android/server/location/GnssLocationProvider;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$1;,
        Lcom/android/server/location/GnssLocationProvider$2;,
        Lcom/android/server/location/GnssLocationProvider$3;,
        Lcom/android/server/location/GnssLocationProvider$4;,
        Lcom/android/server/location/GnssLocationProvider$5;,
        Lcom/android/server/location/GnssLocationProvider$6;,
        Lcom/android/server/location/GnssLocationProvider$7;,
        Lcom/android/server/location/GnssLocationProvider$BackOff;,
        Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/GnssLocationProvider$GpsRequest;,
        Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
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

.field private static final LPP_PROFILE:Ljava/lang/String; = "persist.sys.gps.lpp"

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final MAX_SVS:I = 0x40

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final RELEASE_SUPL_CONNECTION:I = 0xf

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_SUPL_CONNECTION:I = 0xe

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final VERBOSE:Z

.field private static final VzwGid1List:[Ljava/lang/String;

.field private static final VzwMccMncList:[Ljava/lang/String;

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"


# instance fields
.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private mCn0s:[F

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

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNmeaBuffer:[B

.field private mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mOnDemandTimeInjection:Z

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvidWithFlags:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

.field private mYearOfHardware:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnDemandTimeInjection:Z

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/location/GnssLocationProvider;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/location/GnssLocationProvider;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/location/GnssLocationProvider;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/GnssLocationProvider;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/GnssLocationProvider;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

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
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GnssLocationProvider;->native_add_geofence(IDDDIIII)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop_measurement_collection()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop_navigation_message_collection()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleInjectNtpTime()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/GnssLocationProvider;I)V
    .locals 0
    .param p1, "agpsDataConnStatus"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestSuplConnection(Ljava/net/InetAddress;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_geofence_supported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateNetworkState(Landroid/net/Network;)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/location/GnssLocationProvider;JJI)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/location/GnssLocationProvider;[BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_inject_xtra_data([BI)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/location/GnssLocationProvider;II)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/location/GnssLocationProvider;I)V
    .locals 0
    .param p1, "connStatus"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    #@3
    return-void
.end method

.method static synthetic -wrap3()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_measurement_supported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/location/GnssLocationProvider;Z)V
    .locals 0
    .param p1, "singleShot"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    #@3
    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    #@3
    return-void
.end method

.method static synthetic -wrap4()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_navigation_message_supported()Z

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
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_pause_geofence(I)Z

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
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_remove_geofence(I)Z

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
    invoke-static {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->native_resume_geofence(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start_measurement_collection()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start_navigation_message_collection()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    .line 108
    const-string/jumbo v0, "GnssLocationProvider"

    #@7
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a
    move-result v0

    #@b
    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@d
    .line 109
    const-string/jumbo v0, "GnssLocationProvider"

    #@10
    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v0

    #@14
    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    #@16
    .line 111
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
    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    #@23
    .line 400
    new-array v0, v8, [Ljava/lang/String;

    #@25
    const-string/jumbo v2, "311480"

    #@28
    aput-object v2, v0, v3

    #@2a
    const-string/jumbo v2, "310004"

    #@2d
    aput-object v2, v0, v1

    #@2f
    const-string/jumbo v2, "20404"

    #@32
    aput-object v2, v0, v10

    #@34
    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    #@36
    .line 402
    new-array v0, v8, [Ljava/lang/String;

    #@38
    const-string/jumbo v2, ""

    #@3b
    aput-object v2, v0, v3

    #@3d
    const-string/jumbo v2, ""

    #@40
    aput-object v2, v0, v1

    #@42
    const-string/jumbo v1, "BAE0000000000000"

    #@45
    aput-object v1, v0, v10

    #@47
    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->VzwGid1List:[Ljava/lang/String;

    #@49
    .line 2470
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    #@4c
    .line 104
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
    const/16 v5, 0x40

    #@7
    const/4 v4, 0x0

    #@8
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    .line 264
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    #@12
    .line 266
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    #@14
    .line 269
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    #@16
    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    #@1c
    .line 297
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@1e
    const-wide/32 v2, 0xdbba00

    #@21
    invoke-direct {v0, v8, v9, v2, v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;-><init>(JJ)V

    #@24
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@26
    .line 298
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@28
    const-wide/32 v2, 0xdbba00

    #@2b
    invoke-direct {v0, v8, v9, v2, v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;-><init>(JJ)V

    #@2e
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@30
    .line 310
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    #@32
    .line 311
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    #@34
    .line 323
    const/16 v0, 0x3e8

    #@36
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@38
    .line 338
    const-wide/16 v0, 0x0

    #@3a
    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    #@3c
    .line 340
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    #@3e
    .line 347
    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@40
    .line 349
    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    #@42
    .line 351
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    #@44
    .line 360
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    #@46
    .line 363
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    #@48
    .line 368
    new-instance v0, Landroid/location/Location;

    #@4a
    const-string/jumbo v1, "gps"

    #@4d
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@50
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@52
    .line 369
    new-instance v0, Landroid/os/Bundle;

    #@54
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@57
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    #@59
    .line 414
    new-instance v0, Landroid/os/WorkSource;

    #@5b
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    #@5e
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    #@60
    .line 418
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    #@62
    .line 420
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$1;

    #@64
    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@67
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    #@69
    .line 452
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$2;

    #@6b
    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@6e
    .line 451
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@70
    .line 470
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$3;

    #@72
    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@75
    .line 469
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@77
    .line 488
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$4;

    #@79
    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@7c
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@7e
    .line 516
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$5;

    #@80
    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@83
    .line 515
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@85
    .line 1354
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$6;

    #@87
    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@8a
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    #@8c
    .line 1934
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$7;

    #@8e
    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@91
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@93
    .line 2462
    new-array v0, v5, [I

    #@95
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    #@97
    .line 2463
    new-array v0, v5, [F

    #@99
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    #@9b
    .line 2464
    new-array v0, v5, [F

    #@9d
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    #@9f
    .line 2465
    new-array v0, v5, [F

    #@a1
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    #@a3
    .line 2468
    const/16 v0, 0x78

    #@a5
    new-array v0, v0, [B

    #@a7
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    #@a9
    .line 711
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@ab
    .line 712
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    #@ae
    move-result-object v0

    #@af
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    #@b1
    .line 713
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    #@b3
    .line 715
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@b5
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    #@b7
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    #@ba
    .line 718
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@bc
    const-string/jumbo v1, "power"

    #@bf
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c2
    move-result-object v0

    #@c3
    check-cast v0, Landroid/os/PowerManager;

    #@c5
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    #@c7
    .line 719
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    #@c9
    const-string/jumbo v1, "GnssLocationProvider"

    #@cc
    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@cf
    move-result-object v0

    #@d0
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d2
    .line 720
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d4
    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@d7
    .line 722
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@d9
    const-string/jumbo v1, "alarm"

    #@dc
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@df
    move-result-object v0

    #@e0
    check-cast v0, Landroid/app/AlarmManager;

    #@e2
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@e4
    .line 723
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@e6
    new-instance v1, Landroid/content/Intent;

    #@e8
    const-string/jumbo v2, "com.android.internal.location.ALARM_WAKEUP"

    #@eb
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ee
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@f1
    move-result-object v0

    #@f2
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@f4
    .line 724
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@f6
    new-instance v1, Landroid/content/Intent;

    #@f8
    const-string/jumbo v2, "com.android.internal.location.ALARM_TIMEOUT"

    #@fb
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@fe
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@101
    move-result-object v0

    #@102
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@104
    .line 726
    const-string/jumbo v0, "connectivity"

    #@107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10a
    move-result-object v0

    #@10b
    check-cast v0, Landroid/net/ConnectivityManager;

    #@10d
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@10f
    .line 730
    const-string/jumbo v0, "appops"

    #@112
    .line 729
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@115
    move-result-object v0

    #@116
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@119
    move-result-object v0

    #@11a
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@11c
    .line 734
    const-string/jumbo v0, "batterystats"

    #@11f
    .line 733
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@122
    move-result-object v0

    #@123
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@126
    move-result-object v0

    #@127
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@129
    .line 737
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    #@12b
    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    #@12e
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    #@130
    .line 744
    new-instance v0, Ljava/util/Properties;

    #@132
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@135
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    #@137
    .line 745
    const/16 v0, 0xd

    #@139
    invoke-direct {p0, v0, v4, v7}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@13c
    .line 748
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@13e
    .line 749
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@140
    .line 750
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    #@142
    .line 748
    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    #@145
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@147
    .line 752
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$8;

    #@149
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    #@14b
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    #@14e
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    #@150
    .line 764
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$9;

    #@152
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    #@154
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$9;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    #@157
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@159
    .line 786
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$10;

    #@15b
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    #@15d
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$10;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    #@160
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@162
    .line 710
    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2375
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 2383
    const-string/jumbo v0, "<Unknown>"

    #@8
    return-object v0

    #@9
    .line 2377
    :pswitch_0
    const-string/jumbo v0, "CLOSED"

    #@c
    return-object v0

    #@d
    .line 2379
    :pswitch_1
    const-string/jumbo v0, "OPEN"

    #@10
    return-object v0

    #@11
    .line 2381
    :pswitch_2
    const-string/jumbo v0, "OPENING"

    #@14
    return-object v0

    #@15
    .line 2375
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "agpsDataConnStatus"    # I

    #@0
    .prologue
    .line 2391
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2403
    const-string/jumbo v0, "<Unknown>"

    #@6
    return-object v0

    #@7
    .line 2393
    :pswitch_0
    const-string/jumbo v0, "CONNECTED"

    #@a
    return-object v0

    #@b
    .line 2395
    :pswitch_1
    const-string/jumbo v0, "DONE"

    #@e
    return-object v0

    #@f
    .line 2397
    :pswitch_2
    const-string/jumbo v0, "FAILED"

    #@12
    return-object v0

    #@13
    .line 2399
    :pswitch_3
    const-string/jumbo v0, "RELEASE"

    #@16
    return-object v0

    #@17
    .line 2401
    :pswitch_4
    const-string/jumbo v0, "REQUEST"

    #@1a
    return-object v0

    #@1b
    .line 2391
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 1790
    new-instance v2, Landroid/location/Location;

    #@2
    const-string/jumbo v3, "gps"

    #@5
    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@8
    .line 1791
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    #@a
    const/4 v4, 0x1

    #@b
    if-ne v3, v4, :cond_0

    #@d
    .line 1792
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    #@10
    .line 1793
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    #@13
    .line 1794
    move-wide/from16 v0, p11

    #@15
    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    #@18
    .line 1795
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@1b
    move-result-wide v4

    #@1c
    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    #@1f
    .line 1797
    :cond_0
    and-int/lit8 v3, p1, 0x2

    #@21
    const/4 v4, 0x2

    #@22
    if-ne v3, v4, :cond_1

    #@24
    .line 1798
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    #@27
    .line 1800
    :cond_1
    and-int/lit8 v3, p1, 0x4

    #@29
    const/4 v4, 0x4

    #@2a
    if-ne v3, v4, :cond_2

    #@2c
    .line 1801
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    #@2f
    .line 1803
    :cond_2
    and-int/lit8 v3, p1, 0x8

    #@31
    const/16 v4, 0x8

    #@33
    if-ne v3, v4, :cond_3

    #@35
    .line 1804
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    #@38
    .line 1806
    :cond_3
    and-int/lit8 v3, p1, 0x10

    #@3a
    const/16 v4, 0x10

    #@3c
    if-ne v3, v4, :cond_4

    #@3e
    .line 1807
    move/from16 v0, p10

    #@40
    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    #@43
    .line 1809
    :cond_4
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 569
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    #@3
    move-result-object v1

    #@4
    .line 570
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    if-nez v1, :cond_0

    #@6
    .line 571
    const-string/jumbo v3, "GnssLocationProvider"

    #@9
    const-string/jumbo v4, "Message does not exist in the intent."

    #@c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 572
    return-void

    #@10
    .line 575
    :cond_0
    const/4 v3, 0x0

    #@11
    array-length v4, v1

    #@12
    :goto_0
    if-ge v3, v4, :cond_2

    #@14
    aget-object v0, v1, v3

    #@16
    .line 576
    .local v0, "message":Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_1

    #@18
    iget-object v5, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 577
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getUserData()[B

    #@1f
    move-result-object v2

    #@20
    .line 578
    .local v2, "suplInit":[B
    if-eqz v2, :cond_1

    #@22
    .line 579
    array-length v5, v2

    #@23
    invoke-direct {p0, v2, v5}, Lcom/android/server/location/GnssLocationProvider;->native_agps_ni_message([BI)V

    #@26
    .line 575
    .end local v2    # "suplInit":[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 568
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    :cond_2
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 586
    const-string/jumbo v1, "data"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    #@6
    move-result-object v0

    #@7
    .line 587
    .local v0, "suplInit":[B
    if-nez v0, :cond_0

    #@9
    .line 588
    return-void

    #@a
    .line 590
    :cond_0
    array-length v1, v0

    #@b
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_agps_ni_message([BI)V

    #@e
    .line 585
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
    .line 1382
    if-nez p1, :cond_1

    #@3
    .line 1383
    const v0, 0xffff

    #@6
    .line 1401
    .local v0, "flags":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    #@8
    .line 1402
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    #@b
    .line 1403
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 1385
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x0

    #@e
    .line 1386
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
    .line 1387
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
    .line 1388
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
    .line 1389
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
    .line 1390
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
    .line 1391
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
    .line 1392
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
    .line 1393
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
    .line 1394
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
    .line 1395
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
    .line 1396
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
    .line 1397
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
    .line 1398
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
    .line 1406
    :cond_e
    return v2
.end method

.method private ensureInHandlerThread()V
    .locals 2

    #@0
    .prologue
    .line 2365
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    #@a
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@d
    move-result-object v1

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 2366
    return-void

    #@11
    .line 2368
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@13
    const-string/jumbo v1, "This method must run on the Handler thread."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
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
    .line 2287
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->ensureInHandlerThread()V

    #@5
    .line 2288
    if-nez p1, :cond_0

    #@7
    .line 2289
    return v8

    #@8
    .line 2292
    :cond_0
    const-string/jumbo v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    #@b
    new-array v1, v1, [Ljava/lang/Object;

    #@d
    aput-object p1, v1, v8

    #@f
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 2293
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    #@14
    .line 2295
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v0

    #@1a
    .line 2296
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@1c
    .line 2297
    const/4 v2, 0x1

    #@1d
    new-array v2, v2, [Ljava/lang/String;

    #@1f
    const-string/jumbo v4, "protocol"

    #@22
    const/4 v5, 0x0

    #@23
    aput-object v4, v2, v5

    #@25
    .line 2300
    const-string/jumbo v5, "name ASC"

    #@28
    .line 2299
    const/4 v4, 0x0

    #@29
    .line 2295
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2c
    move-result-object v6

    #@2d
    .line 2302
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    #@2f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 2303
    const/4 v0, 0x0

    #@36
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result v0

    #@3e
    .line 2310
    if-eqz v6, :cond_1

    #@40
    .line 2311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@43
    .line 2303
    :cond_1
    return v0

    #@44
    .line 2305
    :cond_2
    :try_start_1
    const-string/jumbo v0, "GnssLocationProvider"

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v2, "No entry found in query for APN: "

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    .line 2310
    if-eqz v6, :cond_3

    #@60
    .line 2311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@63
    .line 2315
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return v8

    #@64
    .line 2307
    :catch_0
    move-exception v7

    #@65
    .line 2308
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "GnssLocationProvider"

    #@68
    new-instance v1, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v2, "Error encountered on APN query for: "

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7f
    .line 2310
    if-eqz v6, :cond_3

    #@81
    .line 2311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@84
    goto :goto_0

    #@85
    .line 2309
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@86
    .line 2310
    if-eqz v6, :cond_4

    #@88
    .line 2311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@8b
    .line 2309
    :cond_4
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1816
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1830
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 1818
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1820
    :sswitch_1
    const/4 v0, 0x5

    #@8
    return v0

    #@9
    .line 1822
    :sswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 1824
    :sswitch_3
    const/4 v0, 0x4

    #@c
    return v0

    #@d
    .line 1826
    :sswitch_4
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 1828
    :sswitch_5
    const/4 v0, 0x3

    #@10
    return v0

    #@11
    .line 1816
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
    .line 2261
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    #@4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    .line 2262
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    #@9
    .line 2264
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v0

    #@f
    .line 2266
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
    .line 2269
    const-string/jumbo v5, "name ASC"

    #@1b
    .line 2267
    const/4 v3, 0x0

    #@1c
    .line 2268
    const/4 v4, 0x0

    #@1d
    .line 2264
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@20
    move-result-object v6

    #@21
    .line 2270
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 2271
    const/4 v0, 0x0

    #@2a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v0

    #@2e
    .line 2278
    if-eqz v6, :cond_0

    #@30
    .line 2279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@33
    .line 2271
    :cond_0
    return-object v0

    #@34
    .line 2273
    :cond_1
    :try_start_1
    const-string/jumbo v0, "GnssLocationProvider"

    #@37
    const-string/jumbo v2, "No APN found to select."

    #@3a
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 2278
    if-eqz v6, :cond_2

    #@3f
    .line 2279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@42
    .line 2283
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v8

    #@43
    .line 2275
    :catch_0
    move-exception v7

    #@44
    .line 2276
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "GnssLocationProvider"

    #@47
    const-string/jumbo v2, "Error encountered on selecting the APN."

    #@4a
    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    .line 2278
    if-eqz v6, :cond_2

    #@4f
    .line 2279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@52
    goto :goto_0

    #@53
    .line 2277
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@54
    .line 2278
    if-eqz v6, :cond_3

    #@56
    .line 2279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@59
    .line 2277
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
    .line 1105
    if-eqz p2, :cond_2

    #@4
    .line 1106
    const-string/jumbo v3, "SUPL_MODE"

    #@7
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1107
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    #@c
    .line 1108
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    .line 1110
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    .line 1118
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    and-int/lit8 v3, v2, 0x1

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 1119
    const/4 v3, 0x1

    #@21
    return v3

    #@22
    .line 1111
    :catch_0
    move-exception v0

    #@23
    .line 1112
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "GnssLocationProvider"

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
    .line 1113
    return v6

    #@3e
    .line 1124
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    if-eqz p3, :cond_2

    #@40
    .line 1125
    const/4 v3, 0x4

    #@41
    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@44
    move-result v3

    #@45
    .line 1124
    if-eqz v3, :cond_2

    #@47
    .line 1126
    and-int/lit8 v3, v2, 0x2

    #@49
    if-eqz v3, :cond_2

    #@4b
    .line 1127
    return v4

    #@4c
    .line 1130
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_2
    return v6
.end method

.method private handleDisable()V
    .locals 2

    #@0
    .prologue
    .line 1175
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GnssLocationProvider"

    #@7
    const-string/jumbo v1, "handleDisable"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1177
    :cond_0
    new-instance v0, Landroid/os/WorkSource;

    #@f
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    #@12
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    #@15
    .line 1178
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    #@18
    .line 1179
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@1a
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@1c
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1f
    .line 1180
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@21
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@23
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@26
    .line 1183
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    #@29
    .line 1185
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@2b
    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    #@2e
    .line 1186
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@30
    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    #@33
    .line 1174
    return-void
.end method

.method private handleDownloadXtraData()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1009
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1011
    const-string/jumbo v0, "GnssLocationProvider"

    #@8
    const-string/jumbo v1, "handleDownloadXtraData() called when Xtra not supported"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1012
    return-void

    #@f
    .line 1014
    :cond_0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    #@11
    if-ne v0, v1, :cond_1

    #@13
    .line 1016
    return-void

    #@14
    .line 1018
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 1020
    const/4 v0, 0x0

    #@1b
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    #@1d
    .line 1021
    return-void

    #@1e
    .line 1023
    :cond_2
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    #@20
    .line 1026
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@22
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@25
    .line 1027
    const-string/jumbo v0, "GnssLocationProvider"

    #@28
    const-string/jumbo v1, "WakeLock acquired by handleDownloadXtraData()"

    #@2b
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1028
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@30
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$12;

    #@32
    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$12;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@35
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@38
    .line 1008
    return-void
.end method

.method private handleEnable()V
    .locals 4

    #@0
    .prologue
    .line 1134
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "GnssLocationProvider"

    #@7
    const-string/jumbo v2, "handleEnable"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1136
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    #@10
    move-result v0

    #@11
    .line 1138
    .local v0, "enabled":Z
    if-eqz v0, :cond_3

    #@13
    .line 1139
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_xtra()Z

    #@16
    move-result v1

    #@17
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    #@19
    .line 1142
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1143
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@1f
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    #@21
    const/4 v3, 0x1

    #@22
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    #@25
    .line 1145
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 1146
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    #@2b
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    #@2d
    const/4 v3, 0x2

    #@2e
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    #@31
    .line 1149
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@33
    invoke-virtual {v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    #@36
    .line 1150
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@38
    invoke-virtual {v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    #@3b
    .line 1133
    :goto_0
    return-void

    #@3c
    .line 1152
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    #@3e
    monitor-enter v1

    #@3f
    .line 1153
    const/4 v2, 0x0

    #@40
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit v1

    #@43
    .line 1155
    const-string/jumbo v1, "GnssLocationProvider"

    #@46
    const-string/jumbo v2, "Failed to enable location provider"

    #@49
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    goto :goto_0

    #@4d
    .line 1152
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
    .line 937
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 939
    return-void

    #@6
    .line 941
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 943
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    #@f
    .line 944
    return-void

    #@10
    .line 946
    :cond_1
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    #@12
    .line 949
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@14
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@17
    .line 950
    const-string/jumbo v0, "GnssLocationProvider"

    #@1a
    const-string/jumbo v1, "WakeLock acquired by handleInjectNtpTime()"

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 951
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@22
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$11;

    #@24
    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$11;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@27
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@2a
    .line 936
    return-void
.end method

.method private handleReleaseSuplConnection(I)V
    .locals 6
    .param p1, "agpsDataConnStatus"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 910
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 912
    const-string/jumbo v1, "releaseSuplConnection, state=%s, status=%s"

    #@8
    .line 911
    const/4 v2, 0x2

    #@9
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    .line 913
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    aput-object v3, v2, v5

    #@11
    .line 914
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    const/4 v4, 0x1

    #@16
    aput-object v3, v2, v4

    #@18
    .line 911
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 915
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GnssLocationProvider"

    #@1f
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 918
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    #@24
    if-nez v1, :cond_1

    #@26
    .line 919
    return-void

    #@27
    .line 921
    :cond_1
    iput v5, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    #@29
    .line 923
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@2b
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@2d
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@30
    .line 924
    packed-switch p1, :pswitch_data_0

    #@33
    .line 932
    :pswitch_0
    const-string/jumbo v1, "GnssLocationProvider"

    #@36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "Invalid status to release SUPL connection: "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 909
    :goto_0
    return-void

    #@4e
    .line 926
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_failed()V

    #@51
    goto :goto_0

    #@52
    .line 929
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_closed()V

    #@55
    goto :goto_0

    #@56
    .line 924
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRequestSuplConnection(Ljava/net/InetAddress;)V
    .locals 8
    .param p1, "address"    # Ljava/net/InetAddress;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 885
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 887
    const-string/jumbo v3, "requestSuplConnection, state=%s, address=%s"

    #@9
    .line 886
    const/4 v4, 0x2

    #@a
    new-array v4, v4, [Ljava/lang/Object;

    #@c
    .line 888
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    aput-object v5, v4, v6

    #@12
    .line 889
    aput-object p1, v4, v7

    #@14
    .line 886
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 890
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v3, "GnssLocationProvider"

    #@1b
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 893
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 894
    return-void

    #@23
    .line 896
    :cond_1
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@25
    .line 897
    iput v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    #@27
    .line 899
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    #@29
    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    #@2c
    .line 900
    .local v2, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v2, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    #@2f
    .line 901
    invoke-virtual {v2, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    #@32
    .line 902
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    #@35
    move-result-object v1

    #@36
    .line 903
    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@38
    .line 905
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@3a
    .line 906
    const v5, 0x5b8d80

    #@3d
    .line 903
    invoke-virtual {v3, v1, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    #@40
    .line 884
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1224
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@2
    .line 1225
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    #@4
    .line 1226
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    #@7
    .line 1223
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 1056
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1057
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    #@d
    move-result-wide v4

    #@e
    .line 1058
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    #@11
    move-result v6

    #@12
    move-object v1, p0

    #@13
    .line 1057
    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    #@16
    .line 1055
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;)V
    .locals 12
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    #@5
    move-result-object v10

    #@6
    .line 825
    .local v10, "info":Landroid/net/NetworkInfo;
    if-nez v10, :cond_0

    #@8
    .line 826
    return-void

    #@9
    .line 829
    :cond_0
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    #@c
    move-result v1

    #@d
    .line 830
    .local v1, "isConnected":Z
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 832
    const-string/jumbo v0, "UpdateNetworkState, state=%s, connected=%s, info=%s, capabilities=%S"

    #@14
    .line 831
    const/4 v2, 0x4

    #@15
    new-array v2, v2, [Ljava/lang/Object;

    #@17
    .line 833
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    const/4 v5, 0x0

    #@1c
    aput-object v3, v2, v5

    #@1e
    .line 834
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@21
    move-result-object v3

    #@22
    const/4 v5, 0x1

    #@23
    aput-object v3, v2, v5

    #@25
    .line 835
    const/4 v3, 0x2

    #@26
    aput-object v10, v2, v3

    #@28
    .line 836
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@2a
    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    #@2d
    move-result-object v3

    #@2e
    const/4 v5, 0x3

    #@2f
    aput-object v3, v2, v5

    #@31
    .line 831
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v11

    #@35
    .line 837
    .local v11, "message":Ljava/lang/String;
    const-string/jumbo v0, "GnssLocationProvider"

    #@38
    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 840
    .end local v11    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_8

    #@41
    .line 841
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    #@48
    move-result v9

    #@49
    .line 842
    .local v9, "dataEnabled":Z
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isAvailable()Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_7

    #@4f
    move v4, v9

    #@50
    .line 843
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->getSelectedApn()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    .line 844
    .local v6, "defaultApn":Ljava/lang/String;
    if-nez v6, :cond_2

    #@56
    .line 845
    const-string/jumbo v6, "dummy-apn"

    #@59
    .line 850
    :cond_2
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    #@5c
    move-result v2

    #@5d
    .line 851
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@60
    move-result v3

    #@61
    .line 853
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    move-object v0, p0

    #@66
    .line 848
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    #@69
    .line 859
    .end local v6    # "defaultApn":Ljava/lang/String;
    .end local v9    # "dataEnabled":Z
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    #@6b
    const/4 v2, 0x1

    #@6c
    if-ne v0, v2, :cond_6

    #@6e
    .line 860
    if-eqz v1, :cond_9

    #@70
    .line 861
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@73
    move-result-object v8

    #@74
    .line 862
    .local v8, "apnName":Ljava/lang/String;
    if-nez v8, :cond_4

    #@76
    .line 865
    const-string/jumbo v8, "dummy-apn"

    #@79
    .line 867
    :cond_4
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->getApnIpType(Ljava/lang/String;)I

    #@7c
    move-result v7

    #@7d
    .line 868
    .local v7, "apnIpType":I
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->setRouting()V

    #@80
    .line 869
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@82
    if-eqz v0, :cond_5

    #@84
    .line 871
    const-string/jumbo v0, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    #@87
    .line 870
    const/4 v2, 0x2

    #@88
    new-array v2, v2, [Ljava/lang/Object;

    #@8a
    .line 872
    const/4 v3, 0x0

    #@8b
    aput-object v8, v2, v3

    #@8d
    .line 873
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@90
    move-result-object v3

    #@91
    const/4 v5, 0x1

    #@92
    aput-object v3, v2, v5

    #@94
    .line 870
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@97
    move-result-object v11

    #@98
    .line 874
    .restart local v11    # "message":Ljava/lang/String;
    const-string/jumbo v0, "GnssLocationProvider"

    #@9b
    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 876
    .end local v11    # "message":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v8, v7}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    #@a1
    .line 877
    const/4 v0, 0x2

    #@a2
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    #@a4
    .line 822
    .end local v7    # "apnIpType":I
    .end local v8    # "apnName":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    #@a5
    .line 842
    .restart local v9    # "dataEnabled":Z
    :cond_7
    const/4 v4, 0x0

    #@a6
    .local v4, "networkAvailable":Z
    goto :goto_0

    #@a7
    .line 855
    .end local v4    # "networkAvailable":Z
    .end local v9    # "dataEnabled":Z
    :cond_8
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@a9
    if-eqz v0, :cond_3

    #@ab
    .line 856
    const-string/jumbo v0, "GnssLocationProvider"

    #@ae
    const-string/jumbo v2, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    #@b1
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b4
    goto :goto_1

    #@b5
    .line 879
    :cond_9
    const/4 v0, 0x5

    #@b6
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    #@b9
    goto :goto_2
.end method

.method private hasCapability(I)Z
    .locals 2
    .param p1, "capability"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1495
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

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
    .line 1487
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    #@3
    .line 1488
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@5
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@7
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@a
    .line 1489
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@c
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@e
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@11
    .line 1490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14
    move-result-wide v0

    #@15
    .line 1491
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@17
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@19
    int-to-long v4, v3

    #@1a
    add-long/2addr v4, v0

    #@1b
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@1d
    const/4 v6, 0x2

    #@1e
    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@21
    .line 1485
    return-void
.end method

.method private isDataNetworkConnected()Z
    .locals 2

    #@0
    .prologue
    .line 2357
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@2
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@5
    move-result-object v0

    #@6
    .line 2358
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@b
    move-result v1

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    #@0
    .prologue
    .line 610
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private final isVerizon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 524
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "GnssLocationProvider"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "simOperator: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 525
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2

    #@24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 537
    :cond_1
    const/4 v1, 0x0

    #@2b
    return v1

    #@2c
    .line 526
    :cond_2
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    #@2f
    array-length v1, v1

    #@30
    if-ge v0, v1, :cond_1

    #@32
    .line 527
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@35
    move-result v1

    #@36
    if-nez v1, :cond_3

    #@38
    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    #@3a
    aget-object v1, v1, v0

    #@3c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    if-nez v1, :cond_4

    #@42
    .line 528
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_7

    #@48
    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    #@4a
    aget-object v1, v1, v0

    #@4c
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4f
    move-result v1

    #@50
    .line 527
    if-eqz v1, :cond_7

    #@52
    .line 530
    :cond_4
    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwGid1List:[Ljava/lang/String;

    #@54
    aget-object v1, v1, v0

    #@56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@59
    move-result v1

    #@5a
    if-nez v1, :cond_5

    #@5c
    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwGid1List:[Ljava/lang/String;

    #@5e
    aget-object v1, v1, v0

    #@60
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_7

    #@66
    .line 531
    :cond_5
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@68
    if-eqz v1, :cond_6

    #@6a
    const-string/jumbo v1, "GnssLocationProvider"

    #@6d
    const-string/jumbo v2, "Verizon UICC"

    #@70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 532
    :cond_6
    const/4 v1, 0x1

    #@74
    return v1

    #@75
    .line 526
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@77
    goto :goto_0
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 693
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 694
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    #@6
    .line 696
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    #@8
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    .line 697
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e
    .line 699
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@11
    .line 706
    const/4 v4, 0x1

    #@12
    return v4

    #@13
    .line 698
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    #@14
    .line 699
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@17
    .line 698
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@18
    .line 702
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    #@19
    .line 703
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "GnssLocationProvider"

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
    .line 704
    const/4 v4, 0x0

    #@34
    return v4

    #@35
    .line 698
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
    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v3

    #@5
    .line 677
    const v5, 0x1070041

    #@8
    .line 676
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 678
    .local v0, "configValues":[Ljava/lang/String;
    array-length v5, v0

    #@d
    move v3, v4

    #@e
    :goto_0
    if-ge v3, v5, :cond_2

    #@10
    aget-object v1, v0, v3

    #@12
    .line 679
    .local v1, "item":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@14
    if-eqz v6, :cond_0

    #@16
    const-string/jumbo v6, "GnssLocationProvider"

    #@19
    new-instance v7, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v8, "GpsParamsResource: "

    #@21
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 681
    :cond_0
    const-string/jumbo v6, "="

    #@33
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 682
    .local v2, "split":[Ljava/lang/String;
    array-length v6, v2

    #@38
    const/4 v7, 0x2

    #@39
    if-ne v6, v7, :cond_1

    #@3b
    .line 683
    aget-object v6, v2, v4

    #@3d
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    const/4 v7, 0x1

    #@46
    aget-object v7, v2, v7

    #@48
    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@4b
    .line 678
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 685
    :cond_1
    const-string/jumbo v6, "GnssLocationProvider"

    #@51
    new-instance v7, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v8, "malformed contents: "

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    goto :goto_1

    #@69
    .line 675
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_2
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

.method private native native_read_sv_status([I[F[F[F)I
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

.method private releaseSuplConnection(I)V
    .locals 2
    .param p1, "connStatus"    # I

    #@0
    .prologue
    .line 1700
    const/16 v0, 0xf

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@6
    .line 1699
    return-void
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 614
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@3
    if-eqz v10, :cond_0

    #@5
    const-string/jumbo v10, "GnssLocationProvider"

    #@8
    new-instance v11, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v12, "Reset GPS properties, previous size = "

    #@10
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v11

    #@14
    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    #@17
    move-result v12

    #@18
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v11

    #@1c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v11

    #@20
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 615
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    #@26
    .line 617
    const/4 v4, 0x0

    #@27
    .line 618
    .local v4, "isPropertiesLoadedFromFile":Z
    const-string/jumbo v10, "ro.hardware.gps"

    #@2a
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 620
    .local v3, "gpsHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@31
    move-result v10

    #@32
    if-nez v10, :cond_1

    #@34
    .line 622
    new-instance v10, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v11, "/etc/gps."

    #@3c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v10

    #@40
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    const-string/jumbo v11, ".conf"

    #@47
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v10

    #@4b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    .line 624
    .local v7, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v7, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    #@52
    move-result v4

    #@53
    .line 626
    .end local v4    # "isPropertiesLoadedFromFile":Z
    .end local v7    # "propFilename":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    #@55
    .line 627
    const-string/jumbo v10, "/etc/gps.conf"

    #@58
    invoke-direct {p0, v10, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    #@5b
    .line 629
    :cond_2
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@5d
    if-eqz v10, :cond_3

    #@5f
    const-string/jumbo v10, "GnssLocationProvider"

    #@62
    new-instance v11, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v12, "GPS properties reloaded, size = "

    #@6a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v11

    #@6e
    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    #@71
    move-result v12

    #@72
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v11

    #@76
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v11

    #@7a
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 630
    :cond_3
    const-string/jumbo v10, "persist.sys.gps.lpp"

    #@80
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    .line 631
    .local v5, "lpp_prof":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@87
    move-result v10

    #@88
    if-nez v10, :cond_4

    #@8a
    .line 633
    const-string/jumbo v10, "LPP_PROFILE"

    #@8d
    invoke-virtual {p2, v10, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@90
    .line 636
    :cond_4
    const-string/jumbo v10, "SUPL_HOST"

    #@93
    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v10

    #@97
    .line 637
    const-string/jumbo v11, "SUPL_PORT"

    #@9a
    invoke-virtual {p2, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v11

    #@9e
    .line 636
    invoke-direct {p0, v10, v11}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    #@a1
    .line 638
    const-string/jumbo v10, "C2K_HOST"

    #@a4
    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v10

    #@a8
    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    #@aa
    .line 639
    const-string/jumbo v10, "C2K_PORT"

    #@ad
    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b0
    move-result-object v6

    #@b1
    .line 640
    .local v6, "portString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    #@b3
    if-eqz v10, :cond_5

    #@b5
    if-eqz v6, :cond_5

    #@b7
    .line 642
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ba
    move-result v10

    #@bb
    iput v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@bd
    .line 648
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_configuration_supported()Z

    #@c0
    move-result v10

    #@c1
    if-eqz v10, :cond_8

    #@c3
    .line 651
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@c5
    const/16 v10, 0x1000

    #@c7
    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@ca
    .line 652
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x0

    #@cb
    invoke-virtual {p2, v0, v10}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@ce
    .line 653
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@d1
    move-result-object v10

    #@d2
    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->native_configuration_update(Ljava/lang/String;)V

    #@d5
    .line 654
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@d7
    if-eqz v10, :cond_6

    #@d9
    const-string/jumbo v10, "GnssLocationProvider"

    #@dc
    new-instance v11, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v12, "final config = "

    #@e4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v11

    #@e8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@eb
    move-result-object v12

    #@ec
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v11

    #@f0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v11

    #@f4
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@f7
    .line 664
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :goto_1
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    #@f9
    const-string/jumbo v11, "SUPL_ES"

    #@fc
    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@ff
    move-result-object v8

    #@100
    .line 665
    .local v8, "suplESProperty":Ljava/lang/String;
    if-eqz v8, :cond_7

    #@102
    .line 667
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@105
    move-result v10

    #@106
    if-ne v10, v9, :cond_9

    #@108
    :goto_2
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@10a
    .line 613
    :cond_7
    :goto_3
    return-void

    #@10b
    .line 643
    .end local v8    # "suplESProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@10c
    .line 644
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "GnssLocationProvider"

    #@10f
    new-instance v11, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v12, "unable to parse C2K_PORT: "

    #@117
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v11

    #@11b
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v11

    #@11f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v11

    #@123
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@126
    goto :goto_0

    #@127
    .line 655
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    #@128
    .line 656
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v10, "GnssLocationProvider"

    #@12b
    const-string/jumbo v11, "failed to dump properties contents"

    #@12e
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@131
    goto :goto_1

    #@132
    .line 658
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_8
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@134
    if-eqz v10, :cond_6

    #@136
    .line 659
    const-string/jumbo v10, "GnssLocationProvider"

    #@139
    const-string/jumbo v11, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    #@13c
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13f
    goto :goto_1

    #@140
    .line 667
    .restart local v8    # "suplESProperty":Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    #@141
    goto :goto_2

    #@142
    .line 668
    :catch_2
    move-exception v1

    #@143
    .line 669
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "GnssLocationProvider"

    #@146
    new-instance v10, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v11, "unable to parse SUPL_ES: "

    #@14e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v10

    #@152
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v10

    #@156
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v10

    #@15a
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15d
    goto :goto_3
.end method

.method private reportAGpsStatus(II[B)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    #@0
    .prologue
    .line 1666
    packed-switch p2, :pswitch_data_0

    #@3
    .line 1695
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    const-string/jumbo v2, "GnssLocationProvider"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Received Unknown AGPS status: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1665
    :cond_0
    :goto_0
    return-void

    #@22
    .line 1668
    :pswitch_0
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@24
    if-eqz v2, :cond_1

    #@26
    const-string/jumbo v2, "GnssLocationProvider"

    #@29
    const-string/jumbo v3, "GPS_REQUEST_AGPS_DATA_CONN"

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1669
    :cond_1
    const-string/jumbo v2, "GnssLocationProvider"

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "Received SUPL IP addr[]: "

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1670
    const/4 v0, 0x0

    #@4e
    .line 1671
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    if-eqz p3, :cond_2

    #@50
    .line 1673
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@53
    move-result-object v0

    #@54
    .line 1674
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@56
    if-eqz v2, :cond_2

    #@58
    const-string/jumbo v2, "GnssLocationProvider"

    #@5b
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v4, "IP address converted to: "

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 1679
    .end local v0    # "connectionIpAddress":Ljava/net/InetAddress;
    :cond_2
    :goto_1
    const/16 v2, 0xe

    #@74
    const/4 v3, 0x0

    #@75
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@78
    goto :goto_0

    #@79
    .line 1675
    :catch_0
    move-exception v1

    #@7a
    .line 1676
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "GnssLocationProvider"

    #@7d
    new-instance v3, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v4, "Bad IP Address: "

    #@85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@94
    goto :goto_1

    #@95
    .line 1682
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :pswitch_1
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@97
    if-eqz v2, :cond_3

    #@99
    const-string/jumbo v2, "GnssLocationProvider"

    #@9c
    const-string/jumbo v3, "GPS_RELEASE_AGPS_DATA_CONN"

    #@9f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    .line 1683
    :cond_3
    const/4 v2, 0x2

    #@a3
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    #@a6
    goto/16 :goto_0

    #@a8
    .line 1686
    :pswitch_2
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@aa
    if-eqz v2, :cond_0

    #@ac
    const-string/jumbo v2, "GnssLocationProvider"

    #@af
    const-string/jumbo v3, "GPS_AGPS_DATA_CONNECTED"

    #@b2
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    goto/16 :goto_0

    #@b7
    .line 1689
    :pswitch_3
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@b9
    if-eqz v2, :cond_0

    #@bb
    const-string/jumbo v2, "GnssLocationProvider"

    #@be
    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_DONE"

    #@c1
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1692
    :pswitch_4
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@c8
    if-eqz v2, :cond_0

    #@ca
    const-string/jumbo v2, "GnssLocationProvider"

    #@cd
    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_FAILED"

    #@d0
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    goto/16 :goto_0

    #@d5
    .line 1666
    nop

    #@d6
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
    .line 1895
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1896
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    #@15
    .line 1894
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1916
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    #@15
    .line 1914
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1906
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    #@15
    .line 1904
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1926
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    #@15
    .line 1924
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
    .line 1868
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1869
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@d
    move-result-object v2

    #@e
    move-object/from16 v0, p0

    #@10
    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

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
    .line 1871
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GnssLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    #@27
    move-result-object v15

    #@28
    .line 1880
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    #@2a
    .line 1881
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    #@2b
    move/from16 v0, p1

    #@2d
    if-ne v0, v2, :cond_1

    #@2f
    .line 1882
    const/16 v16, 0x0

    #@31
    .line 1884
    :cond_1
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@35
    .line 1888
    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    #@37
    .line 1885
    const/4 v4, 0x0

    #@38
    .line 1884
    move/from16 v0, v16

    #@3a
    invoke-virtual {v2, v4, v0, v15, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    #@3d
    .line 1867
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
    .line 1841
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1842
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

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
    .line 1844
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/GnssLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    #@1f
    move-result-object v2

    #@20
    .line 1853
    .local v2, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    #@22
    .line 1859
    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    #@24
    .line 1858
    const/4 v6, 0x0

    #@25
    move v1, p1

    #@26
    move/from16 v3, p14

    #@28
    move-wide/from16 v4, p15

    #@2a
    .line 1853
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    #@2d
    .line 1840
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
    .line 1504
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    const-string/jumbo v4, "GnssLocationProvider"

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
    .line 1505
    const-string/jumbo v6, " timestamp: "

    #@25
    .line 1504
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
    .line 1507
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@38
    monitor-enter v5

    #@39
    .line 1508
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    #@3b
    .line 1509
    and-int/lit8 v4, p1, 0x1

    #@3d
    const/4 v6, 0x1

    #@3e
    if-ne v4, v6, :cond_1

    #@40
    .line 1510
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@42
    invoke-virtual {v4, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    #@45
    .line 1511
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@47
    invoke-virtual {v4, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    #@4a
    .line 1512
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@4c
    move-wide/from16 v0, p11

    #@4e
    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setTime(J)V

    #@51
    .line 1515
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@56
    move-result-wide v6

    #@57
    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    #@5a
    .line 1517
    :cond_1
    and-int/lit8 v4, p1, 0x2

    #@5c
    const/4 v6, 0x2

    #@5d
    if-ne v4, v6, :cond_9

    #@5f
    .line 1518
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@61
    invoke-virtual {v4, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    #@64
    .line 1522
    :goto_0
    and-int/lit8 v4, p1, 0x4

    #@66
    const/4 v6, 0x4

    #@67
    if-ne v4, v6, :cond_a

    #@69
    .line 1523
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@6b
    move/from16 v0, p8

    #@6d
    invoke-virtual {v4, v0}, Landroid/location/Location;->setSpeed(F)V

    #@70
    .line 1527
    :goto_1
    and-int/lit8 v4, p1, 0x8

    #@72
    const/16 v6, 0x8

    #@74
    if-ne v4, v6, :cond_b

    #@76
    .line 1528
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@78
    move/from16 v0, p9

    #@7a
    invoke-virtual {v4, v0}, Landroid/location/Location;->setBearing(F)V

    #@7d
    .line 1532
    :goto_2
    and-int/lit8 v4, p1, 0x10

    #@7f
    const/16 v6, 0x10

    #@81
    if-ne v4, v6, :cond_c

    #@83
    .line 1533
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@85
    move/from16 v0, p10

    #@87
    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    #@8a
    .line 1537
    :goto_3
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@8c
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    #@8e
    invoke-virtual {v4, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@91
    .line 1540
    :try_start_1
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    #@93
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

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
    .line 1546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9d
    move-result-wide v4

    #@9e
    iput-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    #@a0
    .line 1548
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    #@a2
    if-nez v4, :cond_3

    #@a4
    and-int/lit8 v4, p1, 0x1

    #@a6
    const/4 v5, 0x1

    #@a7
    if-ne v4, v5, :cond_3

    #@a9
    .line 1549
    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    #@ab
    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    #@ad
    sub-long/2addr v4, v6

    #@ae
    long-to-int v4, v4

    #@af
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    #@b1
    .line 1550
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@b3
    if-eqz v4, :cond_2

    #@b5
    const-string/jumbo v4, "GnssLocationProvider"

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
    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

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
    .line 1553
    :cond_2
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    #@d3
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    #@d5
    invoke-virtual {v4, v5}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    #@d8
    .line 1556
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    #@da
    if-eqz v4, :cond_4

    #@dc
    .line 1557
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    #@df
    .line 1560
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@e1
    if-eqz v4, :cond_6

    #@e3
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    #@e5
    const/4 v5, 0x2

    #@e6
    if-eq v4, v5, :cond_6

    #@e8
    .line 1563
    const/4 v4, 0x1

    #@e9
    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@ec
    move-result v4

    #@ed
    if-nez v4, :cond_5

    #@ef
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@f1
    const v5, 0xea60

    #@f4
    if-ge v4, v5, :cond_5

    #@f6
    .line 1564
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@f8
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@fa
    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@fd
    .line 1568
    :cond_5
    new-instance v3, Landroid/content/Intent;

    #@ff
    const-string/jumbo v4, "android.location.GPS_FIX_CHANGE"

    #@102
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@105
    .line 1569
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    #@108
    const/4 v5, 0x1

    #@109
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@10c
    .line 1570
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@10e
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@110
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@113
    .line 1571
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    #@115
    const/4 v5, 0x2

    #@116
    invoke-direct {p0, v5, v4}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    #@119
    .line 1574
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v4, 0x1

    #@11a
    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@11d
    move-result v4

    #@11e
    if-nez v4, :cond_8

    #@120
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@122
    if-eqz v4, :cond_8

    #@124
    .line 1575
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@126
    const/16 v5, 0x2710

    #@128
    if-le v4, v5, :cond_8

    #@12a
    .line 1576
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@12c
    if-eqz v4, :cond_7

    #@12e
    const-string/jumbo v4, "GnssLocationProvider"

    #@131
    const-string/jumbo v5, "got fix, hibernating"

    #@134
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@137
    .line 1577
    :cond_7
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    #@13a
    .line 1503
    :cond_8
    return-void

    #@13b
    .line 1520
    :cond_9
    :try_start_2
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@13d
    invoke-virtual {v4}, Landroid/location/Location;->removeAltitude()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@140
    goto/16 :goto_0

    #@142
    .line 1507
    :catchall_0
    move-exception v4

    #@143
    monitor-exit v5

    #@144
    throw v4

    #@145
    .line 1525
    :cond_a
    :try_start_3
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@147
    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    #@14a
    goto/16 :goto_1

    #@14c
    .line 1530
    :cond_b
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@14e
    invoke-virtual {v4}, Landroid/location/Location;->removeBearing()V

    #@151
    goto/16 :goto_2

    #@153
    .line 1535
    :cond_c
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    #@155
    invoke-virtual {v4}, Landroid/location/Location;->removeAccuracy()V

    #@158
    goto/16 :goto_3

    #@15a
    .line 1541
    :catch_0
    move-exception v2

    #@15b
    .line 1542
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "GnssLocationProvider"

    #@15e
    const-string/jumbo v6, "RemoteException calling reportLocation"

    #@161
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@164
    goto/16 :goto_4
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    #@0
    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    #@5
    .line 1715
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    #@0
    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    #@5
    .line 1722
    return-void
.end method

.method private reportNmea(J)V
    .locals 5
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 1707
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    #@2
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    #@4
    array-length v3, v3

    #@5
    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    #@8
    move-result v0

    #@9
    .line 1708
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    #@b
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    #@d
    const/4 v3, 0x0

    #@e
    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    #@11
    .line 1709
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    #@13
    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    #@16
    .line 1706
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
    .line 1585
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    const-string/jumbo v2, "GnssLocationProvider"

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
    .line 1587
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    #@22
    .line 1588
    .local v1, "wasNavigating":Z
    packed-switch p1, :pswitch_data_0

    #@25
    .line 1605
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    #@27
    if-eq v1, v2, :cond_1

    #@29
    .line 1606
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    #@2b
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    #@2d
    invoke-virtual {v2, v3}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    #@30
    .line 1609
    new-instance v0, Landroid/content/Intent;

    #@32
    const-string/jumbo v2, "android.location.GPS_ENABLED_CHANGE"

    #@35
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@38
    .line 1610
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "enabled"

    #@3b
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    #@3d
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@40
    .line 1611
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@42
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@44
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@47
    .line 1584
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    #@48
    .line 1590
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    #@4a
    .line 1591
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    #@4c
    goto :goto_0

    #@4d
    .line 1594
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    #@4f
    goto :goto_0

    #@50
    .line 1597
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    #@52
    goto :goto_0

    #@53
    .line 1600
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    #@55
    .line 1601
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    #@57
    goto :goto_0

    #@58
    .line 1588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1619
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    #@3
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    #@5
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    #@7
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    #@9
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->native_read_sv_status([I[F[F[F)I

    #@c
    move-result v1

    #@d
    .line 1620
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    #@f
    .line 1622
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    #@11
    .line 1623
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    #@13
    .line 1624
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    #@15
    .line 1625
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    #@17
    .line 1620
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F)V

    #@1a
    .line 1627
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 1628
    const-string/jumbo v0, "GnssLocationProvider"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "SV count: "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 1631
    :cond_0
    const/4 v8, 0x0

    #@39
    .line 1632
    .local v8, "usedInFixCount":I
    const/4 v6, 0x0

    #@3a
    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_6

    #@3c
    .line 1633
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    #@3e
    aget v0, v0, v6

    #@40
    and-int/lit8 v0, v0, 0x4

    #@42
    if-eqz v0, :cond_1

    #@44
    .line 1634
    add-int/lit8 v8, v8, 0x1

    #@46
    .line 1636
    :cond_1
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    #@48
    if-eqz v0, :cond_2

    #@4a
    .line 1637
    const-string/jumbo v2, "GnssLocationProvider"

    #@4d
    new-instance v0, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v3, "svid: "

    #@55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    #@5b
    aget v3, v3, v6

    #@5d
    shr-int/lit8 v3, v3, 0x7

    #@5f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 1638
    const-string/jumbo v3, " cn0: "

    #@66
    .line 1637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 1638
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    #@6c
    aget v3, v3, v6

    #@6e
    const/high16 v4, 0x41200000    # 10.0f

    #@70
    div-float/2addr v3, v4

    #@71
    .line 1637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    .line 1639
    const-string/jumbo v3, " elev: "

    #@78
    .line 1637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    .line 1639
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    #@7e
    aget v3, v3, v6

    #@80
    .line 1637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    .line 1640
    const-string/jumbo v3, " azimuth: "

    #@87
    .line 1637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 1640
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    #@8d
    aget v3, v3, v6

    #@8f
    .line 1637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    .line 1641
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    #@95
    aget v0, v0, v6

    #@97
    and-int/lit8 v0, v0, 0x1

    #@99
    if-nez v0, :cond_3

    #@9b
    .line 1642
    const-string/jumbo v0, "  "

    #@9e
    .line 1637
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    .line 1643
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    #@a4
    aget v0, v0, v6

    #@a6
    and-int/lit8 v0, v0, 0x2

    #@a8
    if-nez v0, :cond_4

    #@aa
    .line 1644
    const-string/jumbo v0, "  "

    #@ad
    .line 1637
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    .line 1645
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    #@b3
    aget v0, v0, v6

    #@b5
    and-int/lit8 v0, v0, 0x4

    #@b7
    if-nez v0, :cond_5

    #@b9
    .line 1646
    const-string/jumbo v0, ""

    #@bc
    .line 1637
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v0

    #@c4
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 1632
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@c9
    goto/16 :goto_0

    #@cb
    .line 1642
    :cond_3
    const-string/jumbo v0, " E"

    #@ce
    goto :goto_1

    #@cf
    .line 1644
    :cond_4
    const-string/jumbo v0, " A"

    #@d2
    goto :goto_2

    #@d3
    .line 1646
    :cond_5
    const-string/jumbo v0, "U"

    #@d6
    goto :goto_3

    #@d7
    .line 1650
    :cond_6
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    #@d9
    invoke-direct {p0, v0, v8}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    #@dc
    .line 1652
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    #@de
    if-eqz v0, :cond_7

    #@e0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    #@e2
    const/4 v2, 0x2

    #@e3
    if-ne v0, v2, :cond_7

    #@e5
    iget-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    #@e7
    const-wide/16 v4, 0x0

    #@e9
    cmp-long v0, v2, v4

    #@eb
    if-lez v0, :cond_7

    #@ed
    .line 1653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f0
    move-result-wide v2

    #@f1
    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    #@f3
    sub-long/2addr v2, v4

    #@f4
    const-wide/16 v4, 0x2710

    #@f6
    cmp-long v0, v2, v4

    #@f8
    if-lez v0, :cond_7

    #@fa
    .line 1655
    new-instance v7, Landroid/content/Intent;

    #@fc
    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    #@ff
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@102
    .line 1656
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enabled"

    #@105
    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@108
    .line 1657
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@10a
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@10c
    invoke-virtual {v0, v7, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@10f
    .line 1658
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    #@111
    const/4 v2, 0x1

    #@112
    invoke-direct {p0, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    #@115
    .line 1618
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_7
    return-void
.end method

.method private requestRefLocation(I)V
    .locals 10
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 2066
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "phone"

    #@6
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v8

    #@a
    .line 2065
    check-cast v8, Landroid/telephony/TelephonyManager;

    #@c
    .line 2067
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    #@f
    move-result v9

    #@10
    .line 2068
    .local v9, "phoneType":I
    const/4 v0, 0x1

    #@11
    if-ne v9, v0, :cond_4

    #@13
    .line 2069
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    #@16
    move-result-object v6

    #@17
    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    #@19
    .line 2070
    .local v6, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_3

    #@1b
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 2071
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
    .line 2073
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
    .line 2074
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
    .line 2075
    .local v3, "mnc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@47
    move-result v7

    #@48
    .line 2076
    .local v7, "networkType":I
    if-eq v7, v5, :cond_0

    #@4a
    .line 2077
    const/16 v0, 0x8

    #@4c
    if-ne v7, v0, :cond_2

    #@4e
    .line 2081
    :cond_0
    const/4 v1, 0x2

    #@4f
    .line 2086
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
    .line 2085
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    #@5b
    .line 2064
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "networkType":I
    :cond_1
    :goto_1
    return-void

    #@5c
    .line 2078
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7    # "networkType":I
    :cond_2
    const/16 v0, 0x9

    #@5e
    if-eq v7, v0, :cond_0

    #@60
    .line 2079
    const/16 v0, 0xa

    #@62
    if-eq v7, v0, :cond_0

    #@64
    .line 2080
    const/16 v0, 0xf

    #@66
    if-eq v7, v0, :cond_0

    #@68
    .line 2083
    const/4 v1, 0x1

    #@69
    .restart local v1    # "type":I
    goto :goto_0

    #@6a
    .line 2088
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v7    # "networkType":I
    :cond_3
    const-string/jumbo v0, "GnssLocationProvider"

    #@6d
    const-string/jumbo v4, "Error getting cell location info."

    #@70
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    goto :goto_1

    #@74
    .line 2090
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    const/4 v0, 0x2

    #@75
    if-ne v9, v0, :cond_1

    #@77
    .line 2091
    const-string/jumbo v0, "GnssLocationProvider"

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
    .line 2025
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "phone"

    #@5
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 2024
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@b
    .line 2026
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    #@c
    .line 2027
    .local v3, "type":I
    const-string/jumbo v0, ""

    #@f
    .line 2029
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    #@11
    const/4 v5, 0x1

    #@12
    if-ne v4, v5, :cond_2

    #@14
    .line 2030
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 2031
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1

    #@1a
    .line 2049
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    #@1d
    .line 2023
    return-void

    #@1e
    .line 2035
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    #@1f
    .line 2036
    const/4 v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2039
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    #@23
    const/4 v5, 0x2

    #@24
    if-ne v4, v5, :cond_0

    #@26
    .line 2040
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 2041
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@2c
    .line 2045
    move-object v0, v1

    #@2d
    .line 2046
    const/4 v3, 0x2

    #@2e
    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    #@0
    .prologue
    .line 2056
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GnssLocationProvider"

    #@7
    const-string/jumbo v1, "utcTimeRequest"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2057
    :cond_0
    const/4 v0, 0x5

    #@e
    const/4 v1, 0x0

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@13
    .line 2055
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5
    .line 2100
    const-string/jumbo v0, "GnssLocationProvider"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "WakeLock acquired by sendMessage("

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, ", "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, ", "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, ")"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 2101
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    #@3e
    const/4 v1, 0x1

    #@3f
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@46
    .line 2095
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
    .line 1730
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    #@4
    .line 1732
    const/16 v0, 0x10

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1733
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mOnDemandTimeInjection:Z

    #@e
    .line 1734
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    #@11
    .line 1737
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@13
    .line 1738
    and-int/lit8 v0, p1, 0x40

    #@15
    const/16 v4, 0x40

    #@17
    if-ne v0, v4, :cond_1

    #@19
    move v0, v1

    #@1a
    .line 1737
    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    #@1d
    .line 1739
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@1f
    .line 1740
    and-int/lit16 v3, p1, 0x80

    #@21
    const/16 v4, 0x80

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 1739
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    #@28
    .line 1729
    return-void

    #@29
    :cond_1
    move v0, v2

    #@2a
    .line 1738
    goto :goto_0

    #@2b
    :cond_2
    move v1, v2

    #@2c
    .line 1740
    goto :goto_1
.end method

.method private setGnssYearOfHardware(I)V
    .locals 3
    .param p1, "yearOfHardware"    # I

    #@0
    .prologue
    .line 1747
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GnssLocationProvider"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "setGnssYearOfHardware called with "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1748
    :cond_0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    #@20
    .line 1746
    return-void
.end method

.method private setRouting()V
    .locals 4

    #@0
    .prologue
    .line 2336
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2337
    return-void

    #@5
    .line 2341
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #@7
    .line 2343
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    #@9
    .line 2342
    const/4 v3, 0x3

    #@a
    .line 2341
    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    #@d
    move-result v0

    #@e
    .line 2345
    .local v0, "result":Z
    if-nez v0, :cond_2

    #@10
    .line 2346
    const-string/jumbo v1, "GnssLocationProvider"

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
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

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
    .line 2335
    :cond_1
    :goto_0
    return-void

    #@2d
    .line 2347
    :cond_2
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 2348
    const-string/jumbo v1, "GnssLocationProvider"

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
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

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
    .line 1078
    if-eqz p1, :cond_0

    #@2
    .line 1079
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@4
    .line 1081
    :cond_0
    if-eqz p2, :cond_1

    #@6
    .line 1083
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1088
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 1089
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    #@12
    if-lez v1, :cond_2

    #@14
    .line 1090
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    #@16
    const v2, 0xffff

    #@19
    if-gt v1, v2, :cond_2

    #@1b
    .line 1091
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    #@1d
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    #@1f
    const/4 v3, 0x1

    #@20
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    #@23
    .line 1077
    :cond_2
    return-void

    #@24
    .line 1084
    :catch_0
    move-exception v0

    #@25
    .line 1085
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "GnssLocationProvider"

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
    .line 1410
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@4
    if-nez v0, :cond_6

    #@6
    .line 1411
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v0, "GnssLocationProvider"

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
    .line 1412
    :cond_0
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    #@26
    .line 1413
    const-wide/16 v0, 0x0

    #@28
    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    #@2a
    .line 1414
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@2c
    .line 1415
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    #@2e
    .line 1416
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    #@30
    .line 1419
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@35
    move-result-object v0

    #@36
    .line 1420
    const-string/jumbo v1, "assisted_gps_enabled"

    #@39
    .line 1419
    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_2

    #@3f
    const/4 v6, 0x1

    #@40
    .line 1421
    .local v6, "agpsEnabled":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    #@42
    invoke-direct {p0, v0, v6, p1}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    #@45
    move-result v0

    #@46
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    #@48
    .line 1423
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@4a
    if-eqz v0, :cond_1

    #@4c
    .line 1426
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    #@4e
    packed-switch v0, :pswitch_data_0

    #@51
    .line 1437
    const-string/jumbo v7, "unknown"

    #@54
    .line 1440
    .local v7, "mode":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "GnssLocationProvider"

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
    .line 1443
    .end local v7    # "mode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@71
    move-result v0

    #@72
    if-eqz v0, :cond_3

    #@74
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@76
    .line 1444
    .local v3, "interval":I
    :goto_2
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    #@78
    move-object v0, p0

    #@79
    move v4, v2

    #@7a
    move v5, v2

    #@7b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIII)Z

    #@7e
    move-result v0

    #@7f
    if-nez v0, :cond_4

    #@81
    .line 1446
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@83
    .line 1447
    const-string/jumbo v0, "GnssLocationProvider"

    #@86
    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    #@89
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    .line 1448
    return-void

    #@8d
    .line 1419
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    :cond_2
    const/4 v6, 0x0

    #@8e
    .restart local v6    # "agpsEnabled":Z
    goto :goto_0

    #@8f
    .line 1428
    :pswitch_0
    const-string/jumbo v7, "standalone"

    #@92
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    #@93
    .line 1431
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v7, "MS_ASSISTED"

    #@96
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    #@97
    .line 1434
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v7, "MS_BASED"

    #@9a
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    #@9b
    .line 1443
    .end local v7    # "mode":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x3e8

    #@9d
    .restart local v3    # "interval":I
    goto :goto_2

    #@9e
    .line 1450
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    #@a1
    move-result v0

    #@a2
    if-nez v0, :cond_5

    #@a4
    .line 1451
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@a6
    .line 1452
    const-string/jumbo v0, "GnssLocationProvider"

    #@a9
    const-string/jumbo v1, "native_start failed in startNavigating()"

    #@ac
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 1453
    return-void

    #@b0
    .line 1457
    :cond_5
    invoke-direct {p0, v8, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    #@b3
    .line 1458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b6
    move-result-wide v0

    #@b7
    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    #@b9
    .line 1459
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@bc
    move-result v0

    #@bd
    if-nez v0, :cond_6

    #@bf
    .line 1462
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@c1
    const v1, 0xea60

    #@c4
    if-lt v0, v1, :cond_6

    #@c6
    .line 1463
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@c8
    .line 1464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@cb
    move-result-wide v4

    #@cc
    const-wide/32 v8, 0xea60

    #@cf
    add-long/2addr v4, v8

    #@d0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@d2
    .line 1463
    const/4 v2, 0x2

    #@d3
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@d6
    .line 1409
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    :cond_6
    return-void

    #@d7
    .line 1426
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
    .line 1471
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "GnssLocationProvider"

    #@8
    const-string/jumbo v1, "stopNavigating"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1472
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1473
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@14
    .line 1474
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    #@16
    .line 1475
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    #@19
    .line 1476
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    #@1b
    .line 1477
    const-wide/16 v0, 0x0

    #@1d
    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    #@1f
    .line 1478
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    #@21
    .line 1481
    const/4 v0, 0x1

    #@22
    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    #@25
    .line 1470
    :cond_1
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 541
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    const-string/jumbo v5, "GnssLocationProvider"

    #@7
    const-string/jumbo v6, "received SIM related action: "

    #@a
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 543
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    #@f
    const-string/jumbo v6, "phone"

    #@12
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    .line 542
    check-cast v4, Landroid/telephony/TelephonyManager;

    #@18
    .line 544
    .local v4, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 545
    .local v3, "mccMnc":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 546
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 547
    .local v0, "groupId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_4

    #@2a
    .line 548
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2c
    if-eqz v5, :cond_1

    #@2e
    const-string/jumbo v5, "GnssLocationProvider"

    #@31
    new-instance v6, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v7, "SIM MCC/MNC is available: "

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 549
    :cond_1
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    #@4a
    monitor-enter v6

    #@4b
    .line 550
    :try_start_0
    invoke-direct {p0, v3, v1, v0}, Lcom/android/server/location/GnssLocationProvider;->isVerizon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_3

    #@51
    .line 552
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    #@53
    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    #@56
    .line 553
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    #@58
    const-string/jumbo v7, "LPP_PROFILE"

    #@5b
    invoke-virtual {v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    .line 555
    .local v2, "lpp_profile":Ljava/lang/String;
    const-string/jumbo v5, "persist.sys.gps.lpp"

    #@62
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@65
    .line 560
    .end local v2    # "lpp_profile":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    #@67
    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    #@6a
    .line 561
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@6c
    iget-boolean v7, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    #@6e
    invoke-virtual {v5, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    monitor-exit v6

    #@72
    .line 540
    :cond_2
    :goto_1
    return-void

    #@73
    .line 558
    :cond_3
    :try_start_1
    const-string/jumbo v5, "persist.sys.gps.lpp"

    #@76
    const-string/jumbo v7, ""

    #@79
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7c
    goto :goto_0

    #@7d
    .line 549
    :catchall_0
    move-exception v5

    #@7e
    monitor-exit v6

    #@7f
    throw v5

    #@80
    .line 564
    :cond_4
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@82
    if-eqz v5, :cond_2

    #@84
    const-string/jumbo v5, "GnssLocationProvider"

    #@87
    const-string/jumbo v6, "SIM MCC/MNC is still not available"

    #@8a
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    goto :goto_1
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
    .line 2319
    const-string/jumbo v1, "IP"

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2320
    return v4

    #@d
    .line 2322
    :cond_0
    const-string/jumbo v1, "IPV6"

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 2323
    return v2

    #@17
    .line 2325
    :cond_1
    const-string/jumbo v1, "IPV4V6"

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 2326
    const/4 v1, 0x3

    #@21
    return v1

    #@22
    .line 2330
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
    .line 2331
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GnssLocationProvider"

    #@32
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 2332
    return v3
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1286
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    #@2
    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    #@5
    move-result-object v0

    #@6
    .line 1287
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_0

    #@8
    .line 1288
    return-void

    #@9
    .line 1290
    :cond_0
    const/4 v7, 0x0

    #@a
    aget-object v5, v0, v7

    #@c
    .line 1291
    .local v5, "newWork":Landroid/os/WorkSource;
    const/4 v7, 0x1

    #@d
    aget-object v2, v0, v7

    #@f
    .line 1294
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_2

    #@11
    .line 1295
    const/4 v4, -0x1

    #@12
    .line 1296
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
    .line 1298
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    #@1c
    move-result v6

    #@1d
    .line 1299
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@1f
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@21
    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@24
    move-result-object v8

    #@25
    .line 1300
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@28
    move-result-object v9

    #@29
    const/4 v10, 0x2

    #@2a
    .line 1299
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    #@2d
    .line 1301
    if-eq v6, v4, :cond_1

    #@2f
    .line 1302
    move v4, v6

    #@30
    .line 1303
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@32
    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 1296
    .end local v6    # "uid":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1305
    :catch_0
    move-exception v1

    #@39
    .line 1306
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GnssLocationProvider"

    #@3c
    const-string/jumbo v8, "RemoteException"

    #@3f
    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    goto :goto_1

    #@43
    .line 1312
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_2
    if-eqz v2, :cond_4

    #@45
    .line 1313
    const/4 v4, -0x1

    #@46
    .line 1314
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
    .line 1316
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    #@50
    move-result v6

    #@51
    .line 1317
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@53
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@55
    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@58
    move-result-object v8

    #@59
    .line 1318
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    const/4 v10, 0x2

    #@5e
    .line 1317
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    #@61
    .line 1319
    if-eq v6, v4, :cond_3

    #@63
    .line 1320
    move v4, v6

    #@64
    .line 1321
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@66
    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    .line 1314
    .end local v6    # "uid":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@6b
    goto :goto_2

    #@6c
    .line 1323
    :catch_1
    move-exception v1

    #@6d
    .line 1324
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GnssLocationProvider"

    #@70
    const-string/jumbo v8, "RemoteException"

    #@73
    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    goto :goto_3

    #@77
    .line 1284
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
    .line 595
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    #@4
    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@7
    move-result v0

    #@8
    .line 596
    .local v0, "disableGps":Z
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

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
    .line 603
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    #@1a
    if-eq v0, v1, :cond_0

    #@1c
    .line 604
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    #@1e
    .line 605
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    #@21
    .line 593
    :cond_0
    return-void

    #@22
    .line 600
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    #@24
    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

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
    .line 601
    goto :goto_0

    #@34
    :cond_2
    move v1, v2

    #@35
    .line 600
    goto :goto_1

    #@36
    .line 596
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
    .line 1231
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    #@8
    if-nez v0, :cond_1

    #@a
    .line 1232
    :cond_0
    return-void

    #@b
    .line 1235
    :cond_1
    const/4 v8, 0x0

    #@c
    .line 1238
    .local v8, "singleShot":Z
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@e
    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 1239
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@14
    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@16
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v0

    #@1a
    if-lez v0, :cond_3

    #@1c
    .line 1242
    const/4 v8, 0x1

    #@1d
    .line 1244
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

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
    .line 1245
    .local v6, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    #@34
    move-result v0

    #@35
    if-eq v0, v9, :cond_2

    #@37
    .line 1246
    const/4 v8, 0x0

    #@38
    goto :goto_0

    #@39
    .line 1251
    .end local v6    # "lr":Landroid/location/LocationRequest;
    .end local v7    # "lr$iterator":Ljava/util/Iterator;
    :cond_3
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@3b
    if-eqz v0, :cond_4

    #@3d
    const-string/jumbo v0, "GnssLocationProvider"

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
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

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
    .line 1252
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@5b
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@5d
    if-eqz v0, :cond_5

    #@5f
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    #@61
    if-eqz v0, :cond_7

    #@63
    .line 1276
    :cond_5
    new-instance v0, Landroid/os/WorkSource;

    #@65
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    #@68
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    #@6b
    .line 1278
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    #@6e
    .line 1279
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@70
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    #@72
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@75
    .line 1280
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    #@77
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@79
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7c
    .line 1230
    :cond_6
    :goto_1
    return-void

    #@7d
    .line 1252
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    #@80
    move-result v0

    #@81
    if-eqz v0, :cond_5

    #@83
    .line 1254
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    #@85
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    #@88
    .line 1256
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@8a
    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@8c
    long-to-int v0, v0

    #@8d
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@8f
    .line 1259
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@91
    int-to-long v0, v0

    #@92
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@94
    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@96
    cmp-long v0, v0, v4

    #@98
    if-eqz v0, :cond_8

    #@9a
    .line 1260
    const-string/jumbo v0, "GnssLocationProvider"

    #@9d
    new-instance v1, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v3, "interval overflow: "

    #@a5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    #@ab
    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@ad
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 1261
    const v0, 0x7fffffff

    #@bb
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@bd
    .line 1265
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@bf
    if-eqz v0, :cond_9

    #@c1
    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@c4
    move-result v0

    #@c5
    if-eqz v0, :cond_9

    #@c7
    .line 1267
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    #@c9
    .line 1268
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@cb
    move-object v0, p0

    #@cc
    move v4, v2

    #@cd
    move v5, v2

    #@ce
    .line 1267
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIII)Z

    #@d1
    move-result v0

    #@d2
    if-nez v0, :cond_6

    #@d4
    .line 1269
    const-string/jumbo v0, "GnssLocationProvider"

    #@d7
    const-string/jumbo v1, "set_position_mode failed in setMinTime()"

    #@da
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    goto :goto_1

    #@de
    .line 1271
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    #@e0
    if-nez v0, :cond_6

    #@e2
    .line 1273
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    #@e5
    goto :goto_1
.end method

.method private updateStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    #@0
    .prologue
    .line 1205
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    #@6
    if-eq p2, v0, :cond_1

    #@8
    .line 1206
    :cond_0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    #@a
    .line 1207
    iput p2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    #@c
    .line 1208
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    #@e
    const-string/jumbo v1, "satellites"

    #@11
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@14
    .line 1209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    #@1a
    .line 1204
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    #@0
    .prologue
    .line 1774
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GnssLocationProvider"

    #@7
    const-string/jumbo v1, "xtraDownloadRequest"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1775
    :cond_0
    const/4 v0, 0x6

    #@e
    const/4 v1, 0x0

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@13
    .line 1773
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1166
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 1167
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    .line 1168
    :cond_0
    const/4 v0, 0x0

    #@b
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1171
    const/4 v0, 0x2

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@13
    .line 1165
    return-void

    #@14
    .line 1166
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 2410
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "  mFixInterval="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 2411
    const-string/jumbo v1, "  mDisableGps (battery saver mode)="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 2412
    const-string/jumbo v1, "  mEngineCapabilities=0x"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    #@30
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 2413
    const-string/jumbo v1, " ( "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 2414
    const/4 v1, 0x1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_0

    #@44
    const-string/jumbo v1, "SCHEDULING "

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 2415
    :cond_0
    const/4 v1, 0x2

    #@4b
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_1

    #@51
    const-string/jumbo v1, "MSB "

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 2416
    :cond_1
    const/4 v1, 0x4

    #@58
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_2

    #@5e
    const-string/jumbo v1, "MSA "

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    .line 2417
    :cond_2
    const/16 v1, 0x8

    #@66
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_3

    #@6c
    const-string/jumbo v1, "SINGLE_SHOT "

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 2418
    :cond_3
    const/16 v1, 0x10

    #@74
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_4

    #@7a
    const-string/jumbo v1, "ON_DEMAND_TIME "

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 2419
    :cond_4
    const/16 v1, 0x20

    #@82
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@85
    move-result v1

    #@86
    if-eqz v1, :cond_5

    #@88
    const-string/jumbo v1, "GEOFENCING "

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 2420
    :cond_5
    const/16 v1, 0x40

    #@90
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@93
    move-result v1

    #@94
    if-eqz v1, :cond_6

    #@96
    const-string/jumbo v1, "MEASUREMENTS "

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 2421
    :cond_6
    const/16 v1, 0x80

    #@9e
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    #@a1
    move-result v1

    #@a2
    if-eqz v1, :cond_7

    #@a4
    const-string/jumbo v1, "NAV_MESSAGES "

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 2422
    :cond_7
    const-string/jumbo v1, ")\n"

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 2424
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    .line 2425
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@ba
    .line 2408
    return-void
.end method

.method public enable()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1069
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 1070
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    .line 1071
    :cond_0
    const/4 v0, 0x1

    #@b
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1074
    const/4 v0, 0x2

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@13
    .line 1068
    return-void

    #@14
    .line 1069
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .locals 1

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    #@2
    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .locals 1

    #@0
    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    #@2
    return-object v0
.end method

.method public getGnssStatusProvider()Landroid/location/IGnssStatusProvider;
    .locals 1

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    #@2
    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .locals 1

    #@0
    .prologue
    .line 1762
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$13;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$13;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    #@5
    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 814
    const-string/jumbo v0, "gps"

    #@3
    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    #@0
    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    #@2
    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    #@0
    .prologue
    .line 819
    sget-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    #@2
    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1198
    if-eqz p1, :cond_0

    #@2
    .line 1199
    const-string/jumbo v0, "satellites"

    #@5
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a
    .line 1201
    :cond_0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    #@c
    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    #@0
    .prologue
    .line 1215
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    #@2
    return-wide v0
.end method

.method public isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1192
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1191
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
    .line 1966
    const-string/jumbo v7, "GnssLocationProvider"

    #@3
    const-string/jumbo v8, "reportNiNotification: entered"

    #@6
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1967
    const-string/jumbo v7, "GnssLocationProvider"

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
    .line 1968
    const-string/jumbo v9, ", niType: "

    #@1f
    .line 1967
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    .line 1969
    const-string/jumbo v9, ", notifyFlags: "

    #@2a
    .line 1967
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    .line 1970
    const-string/jumbo v9, ", timeout: "

    #@35
    .line 1967
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    .line 1971
    const-string/jumbo v9, ", defaultResponse: "

    #@40
    .line 1967
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
    .line 1973
    const-string/jumbo v7, "GnssLocationProvider"

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
    .line 1974
    const-string/jumbo v9, ", text: "

    #@67
    .line 1973
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
    .line 1975
    const-string/jumbo v9, ", requestorIdEncoding: "

    #@74
    .line 1973
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
    .line 1976
    const-string/jumbo v9, ", textEncoding: "

    #@81
    .line 1973
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
    .line 1978
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    #@94
    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    #@97
    .line 1980
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    #@99
    .line 1981
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    #@9b
    .line 1982
    and-int/lit8 v7, p3, 0x1

    #@9d
    if-eqz v7, :cond_1

    #@9f
    const/4 v7, 0x1

    #@a0
    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    #@a2
    .line 1983
    and-int/lit8 v7, p3, 0x2

    #@a4
    if-eqz v7, :cond_2

    #@a6
    const/4 v7, 0x1

    #@a7
    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    #@a9
    .line 1984
    and-int/lit8 v7, p3, 0x4

    #@ab
    if-eqz v7, :cond_3

    #@ad
    const/4 v7, 0x1

    #@ae
    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    #@b0
    .line 1985
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    #@b2
    .line 1986
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    #@b4
    .line 1987
    move-object/from16 v0, p6

    #@b6
    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    #@b8
    .line 1988
    move-object/from16 v0, p7

    #@ba
    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    #@bc
    .line 1989
    move/from16 v0, p8

    #@be
    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    #@c0
    .line 1990
    move/from16 v0, p9

    #@c2
    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    #@c4
    .line 1994
    new-instance v1, Landroid/os/Bundle;

    #@c6
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@c9
    .line 1996
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_0

    #@cb
    const-string/jumbo p10, ""

    #@ce
    .line 1997
    :cond_0
    new-instance v5, Ljava/util/Properties;

    #@d0
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    #@d3
    .line 2000
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
    .line 2007
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
    .line 2009
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
    .line 1982
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "ent$iterator":Ljava/util/Iterator;
    .end local v5    # "extraProp":Ljava/util/Properties;
    :cond_1
    const/4 v7, 0x0

    #@102
    goto :goto_0

    #@103
    .line 1983
    :cond_2
    const/4 v7, 0x0

    #@104
    goto :goto_1

    #@105
    .line 1984
    :cond_3
    const/4 v7, 0x0

    #@106
    goto :goto_2

    #@107
    .line 2003
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "extraProp":Ljava/util/Properties;
    :catch_0
    move-exception v2

    #@108
    .line 2004
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "GnssLocationProvider"

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
    .line 2012
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "ent$iterator":Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    #@127
    .line 2014
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@129
    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    #@12c
    .line 1964
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1334
    .local v0, "identity":J
    const/4 v2, 0x0

    #@5
    .line 1336
    .local v2, "result":Z
    const-string/jumbo v3, "delete_aiding_data"

    #@8
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 1337
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    #@11
    move-result v2

    #@12
    .line 1350
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 1351
    return v2

    #@16
    .line 1338
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
    .line 1339
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    #@22
    .line 1340
    const/4 v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1341
    :cond_2
    const-string/jumbo v3, "force_xtra_injection"

    #@27
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_3

    #@2d
    .line 1342
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    #@2f
    if-eqz v3, :cond_0

    #@31
    .line 1343
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    #@34
    .line 1344
    const/4 v2, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1347
    :cond_3
    const-string/jumbo v3, "GnssLocationProvider"

    #@39
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v5, "sendExtraCommand: unknown command "

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1220
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    #@5
    const/4 v1, 0x3

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    #@a
    .line 1219
    return-void
.end method
